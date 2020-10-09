#ifndef __SGI_STL_INTERNAL_ALLOC_H
#define __SGI_STL_INTERNAL_ALLOC_H

/*
	此文件主要负责内存的配置与释放
*/

#if 0
#   include <new>
#   define __THROW_BAD_ALLOC throw bad_alloc
#elif !defined(__THROW_BAD_ALLOC)
#   include <iostream.h>
#   define __THROW_BAD_ALLOC cerr << "out of memory" << endl; exit(1)
#endif

#ifndef __ALLOC
#   define __ALLOC alloc
#endif


#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

template <int inst>
class __malloc_alloc_template 
{
private: 
	/*以下函数用来处理啊内存不足情况*/
	static void* oom_malloc(size_t);

	static void* oom_realloc(void *, size_t);
	
	static void (* __malloc_alloc_oom_handler)(); 
	
public:
	static void* allocate(size_t n)
	{
		void* result = malloc(n);  //第一级配置器直接使用malloc()
		if (NULL == result) 	   //无法满足需求时，改用oom_malloc() 
			result = oom_malloc(n);
		return result;
	}

	static void deallocate(void *p, size_t /* n */)
	{
		free(p);  				  //第一级配置器直接使用free()
	}

	static void* reallocate(void *p, size_t /* old_sz */, size_t new_sz)
	{
		void* result = realloc(p, new_sz); //第一级配置器直接使用realloc()
		if (NULL==result) 				   //无法满足需求时，改用oom_realloc()
			result = oom_realloc(p, new_sz);
		return result;
	}

	
	//仿真C++的set_new_handler(),可以通过它指定自己的out-of-memory handler
	static void (* set_malloc_handler(void (*f)()))()
	{
		void (* old)() = __malloc_alloc_oom_handler;
		__malloc_alloc_oom_handler = f;
		return(old);
	}
};

// malloc_alloc out-of-memory handling
//初值为0，有待客端设定
template <int inst>
void* __malloc_alloc_template<inst>::oom_malloc(size_t n)
{
    void (*my_malloc_handler)();
    void* result;

    for (;;)   //不断尝试释放，配置，再释放，再配置。。。。
	{
        my_malloc_handler = __malloc_alloc_oom_handler;
        if(NULL == my_malloc_handler) 
		{ 
			throw bad_alloc; 
		}
        (*my_malloc_handler)();    //调用处理函数，企图释放内存
        result = malloc(n);        //再次尝试配置内存
        if(result) 
			return result;
    }
}

template <int inst>
void* __malloc_alloc_template<inst>::oom_realloc(void *p, size_t n)
{
    void (* my_malloc_handler)();
    void *result;

    for (;;)    //不断尝试释放，配置，再释放，再配置。。。。
	{
        my_malloc_handler = __malloc_alloc_oom_handler;
        if (NULL== my_malloc_handler) 
		{ 
			throw bad_alloc; 
		}
        (*my_malloc_handler)();   //调用处理函数，企图释放内存
        result = realloc(p, n);   //再次尝试配置内存
        if (result) 
			return result;
    }
}

typedef __malloc_alloc_template<0> malloc_alloc;

//无论alloc被定义为第一级或第二级配置器，SGI还为它再包装一个接口如下
//使配置器的接口能够符合STL规格：
template<class T, class Alloc>
class simple_alloc 
{
public: //单纯的调用配置器的成员函数，使配置器的配置单位从bytes转为元素的大小
    static T* allocate(size_t n)
    { 
		return (0 == n) ? 0 : (T*) Alloc::allocate(n * sizeof (T)); 
	}
    static T* allocate(void)
    { 
		return (T*) Alloc::allocate(sizeof (T)); 
	}
    static void deallocate(T *p, size_t n)
    { 
		if (0 != n) 
			Alloc::deallocate(p, n * sizeof (T)); 
	}
    static void deallocate(T *p)
    { 
		Alloc::deallocate(p, sizeof (T)); 
	}
};

// Allocator adaptor to check size arguments for debugging.
// Reports errors using assert.  Checking can be disabled with
// NDEBUG, but it's far better to just use the underlying allocator
// instead when no checking is desired.
// There is some evidence that this can confuse Purify.
template <class Alloc>
class debug_alloc 
{
private:

enum {extra = 8};       // Size of space used to store size.  Note
                        // that this must be large enough to preserve
                        // alignment.

public:

	static void * allocate(size_t n)
	{
		char *result = (char *)Alloc::allocate(n + extra);
		*(size_t *)result = n;
		return result + extra;
	}

	static void deallocate(void *p, size_t n)
	{
		char * real_p = (char *)p - extra;
		assert(*(size_t *)real_p == n);
		Alloc::deallocate(real_p, n + extra);
	}

	static void * reallocate(void *p, size_t old_sz, size_t new_sz)
	{
		char * real_p = (char *)p - extra;
		assert(*(size_t *)real_p == old_sz);
		char * result = (char *)
					  Alloc::reallocate(real_p, old_sz + extra, new_sz + extra);
		*(size_t *)result = new_sz;
		return result + extra;
	}
};


/*

*/

# ifdef __USE_MALLOC  

typedef malloc_alloc alloc;  //令alloc为第一级配置器
typedef malloc_alloc single_client_alloc;

#else

	
	/*
		以下是第二级配置器
	*/
template <bool threads, int inst>
class __default_alloc_template 
{
private:
  // Really we should use static const int x = N
  // instead of enum { x = N }, but few compilers accept the former.
    enum {__ALIGN = 8};                          //小型区块的上调边界
    enum {__MAX_BYTES = 128};                    //小型区块的上限
    enum {__NFREELISTS = __MAX_BYTES/__ALIGN};   //free-lists个数
	
	
	/*
		SGI第二级配置器会主动将任何小额区块的内存需求量上调至8的倍数
		由ROUND_UP()负责
	*/
	static size_t ROUND_UP(size_t bytes) 
	{
        return (((bytes) + __ALIGN-1) & ~(__ALIGN - 1));
	}
	
private:
	union obj       // 区块为空时，obj是链表维护用，区块被使用时，obj是数据，维护链表不占用额外的空间
	{			    //free-lists的节点构造
        union obj * free_list_link;
        char client_data[1];    /* The client sees this.*/
	};
	
private:
	
	//16个free-lists
    static obj* volatile free_list[__NFREELISTS]; 
	
	//根据区块大小，决定使用第n号free-list, n从0开始
	static size_t FREELIST_INDEX(size_t bytes) 
	{
        return (((bytes) + __ALIGN-1)/__ALIGN - 1);
	}

	//返回一个大小为n的对象，并可能加入大小为n的其他区块到free list
	static void* refill(size_t n);
	
	//配置一大块空间，可容纳 nobjs 个大小为 size 的区块
	//如果配置 nobjs 个区块有所不便， nojobs 可能会降低
	static char* chunk_alloc(size_t size, int &nobjs);

	// Chunk allocation state.
	static char* start_free;   //内存池起始位置，只在 chunk_alloc() 中变化
	static char* end_free;	   //内存池结束位置，只在 chunk_alloc() 中变化
	static size_t heap_size;

public:
	static void* allocate(size_t n)
	{
		obj* volatile * my_free_list; // my_free_list是一个指针，指向一个volatile指针，而volatile指针指向obj
		obj* result;
		
		//大于128就调用第一级配置器
		if (n > (size_t)__MAX_BYTES )
		{
			return malloc_alloc::allocate(n);
		}
		
		//寻找16个free lists 中适当的一个
		my_free_list = free_list + FREELIST_INDEX(n);
			
		result = *my_free_list;
		if (result == NULL) 
		{				
			void* r = refill(ROUND_UP(n));  //没有找到可用的free list， 准备重新填充 free list
			return r;
		}
		
		*my_free_list = result -> free_list_link;     //调整 free list 
		return result;
	}

	/*
		首先判断区块大小，大于128bytes就调用第一级配置器，
			小于128bytes就找出对应的 free list，将区块收回
	*/
	static void deallocate(void* p, size_t n)
	{
		obj* q = (obj*)p;
		obj* volatile * my_free_list;

		if (n > (size_t) __MAX_BYTES)    
		{
			malloc_alloc::deallocate(p, n);  //调用第一级配置器
			return;
		}
		 
		my_free_list = free_list + FREELIST_INDEX(n);   // 寻找相应的 free list
		q->free_list_link = *my_free_list;              //调整free list,回收区块
		*my_free_list = q;
	}

	static void* reallocate(void* p, size_t old_sz, size_t new_sz);

};

//令alloc为第二级配置器
typedef __default_alloc_template<__NODE_ALLOCATOR_THREADS, 0> alloc;

typedef __default_alloc_template<false, 0> single_client_alloc;



/*
	从内存池中取空间给 free list 用，是chunk_alloc() 的工作
*/
//假设size已经适当上调至8的倍数
//注意参数nobjs是引用
template <bool threads, int inst>
char*                                                           
__default_alloc_template<threads, inst>::chunk_alloc(size_t size, int& nobjs) 
{
    char * result;
    size_t total_bytes = size * nobjs;
    size_t bytes_left = end_free - start_free;   //内存池剩余空间

    if (bytes_left >= total_bytes)    			 //内存池剩余空间满足需求量
	{
        result = start_free;
        start_free += total_bytes;
        return result;
    }  
	else if (bytes_left >= size)                 //内存池剩余空间不能完全满足需求量，但足够供应一个及以上的区块
	{
        nobjs = bytes_left/size;
        total_bytes = size * nobjs;
        result = start_free;
        start_free += total_bytes;
        return result;
    } 
	else                                         //内存池剩余空间连一个区块的大小都无法提供
	{
        size_t bytes_to_get = 2 * total_bytes + ROUND_UP(heap_size >> 4);

        if (bytes_left > 0)                      //尝试让内存池中残余零头利用起来
		{
			//将残余的先分配给适当的 free list
            obj* volatile * my_free_list = free_list + FREELIST_INDEX(bytes_left);  //寻找适当的free list 

            ((obj*)start_free)->free_list_link = *my_free_list;                     //调整free list,将内存池中残余空间编入
			
            *my_free_list = (obj*)start_free;
        }
		
        start_free = (char*)malloc(bytes_to_get);//从heap 中取空间补充内存池
		
        if (NULL == start_free)                  //heap空间不足
		{
            int i;
            obj** my_free_list, *p;
            
			/*
					试着看看我们还有什么，这不会造成伤害。我们不打算尝试配置较小的区块，
					因为在多进程机器上容易导致灾难
			*/
            for (i=size; i<=__MAX_BYTES; i+=__ALIGN)//搜寻还没用且够大的区块
			{
                my_free_list = free_list + FREELIST_INDEX(i);
                p = *my_free_list;
                if (NULL != p)    //free list 内还有未用区块
				{
					//调整free list以释放出未用区块
                    *my_free_list = p -> free_list_link;
                    start_free = (char*)p;
                    end_free = start_free + i;
                    return chunk_alloc(size, nobjs); //递归调用自己，为了修正nobjs
                }
            }
			end_free = 0;							 //到处都没有内存可用了
					//调用第一级配置器，看看out of memory机制是否尽点力
            start_free = (char*)malloc_alloc::allocate(bytes_to_get); //这会导致抛出异常，或许内存不足情况获得改善

        }
        heap_size += bytes_to_get;
        end_free = start_free + bytes_to_get;
        return chunk_alloc(size, nobjs);             //递归调用自己，为了修正nobjs
    }
}


/*
	返回一个大小为n的对象，并且有时候会适当地 free list 增加节点
		假设n已经设当上调至8的倍数
*/                                        
template <bool threads, int inst>
void* __default_alloc_template<threads, inst>::refill(size_t n)
{
    int nobjs = 20;
    char* chunk = chunk_alloc(n, nobjs);
    obj* volatile * my_free_list;
    obj* result;
    obj* current_obj, * next_obj;
    int i;

    if (1 == nobjs)            //如果只获得一个区块，这个区块就分配给调用者用， free list无新节点
		return chunk;
	
    my_free_list = free_list + FREELIST_INDEX(n);  //负责准备调整 free list, 纳入新节点

	/*以下在chunk空间内建立 free list */
    result = (obj*)chunk;                          //这一块准备返回给客户端
	
	//以下导引free list指向新配置的空间（取自内存池）
    *my_free_list = next_obj = (obj*)(chunk + n);
	
	//将free list中的各个节点串联起来
    for (i=1; ; i++)                               //从1开始，因为第0个将返回给客端
	{
		current_obj = next_obj;
        next_obj = (obj *)((char *)next_obj + n);
        if (nobjs - 1 == i) 
		{
            current_obj -> free_list_link = 0;
            break;
        } 
		else 
		{
            current_obj -> free_list_link = next_obj;
        }
    }
    return (result);
}

template <bool threads, int inst>
void*
__default_alloc_template<threads, inst>::reallocate(void *p,
                                                    size_t old_sz,
                                                    size_t new_sz)
{
    void * result;
    size_t copy_sz;

    if (old_sz > (size_t) __MAX_BYTES && new_sz > (size_t) __MAX_BYTES) 
	{
        return(realloc(p, new_sz));
    }
    if (ROUND_UP(old_sz) == ROUND_UP(new_sz)) 
		return(p);
    result = allocate(new_sz);
    copy_sz = (new_sz> old_sz) ? old_sz : new_sz;
    memcpy(result, p, copy_sz);
    deallocate(p, old_sz);
    return(result);
}

#ifdef __STL_PTHREADS
template <bool threads, int inst>
pthread_mutex_t
__default_alloc_template<threads, inst>::__node_allocator_lock= PTHREAD_MUTEX_INITIALIZER;
#endif

#ifdef __STL_WIN32THREADS
template <bool threads, int inst> 
CRITICAL_SECTION
__default_alloc_template<threads, inst>::__node_allocator_lock;

template <bool threads, int inst> 
bool
__default_alloc_template<threads, inst>::__node_allocator_lock_initialize = false;
#endif

#ifdef __STL_SGI_THREADS
__STL_END_NAMESPACE
#include <mutex.h>
#include <time.h>
__STL_BEGIN_NAMESPACE
// Somewhat generic lock implementations.  We need only test-and-set
// and some way to sleep.  These should work with both SGI pthreads
// and sproc threads.  They may be useful on other systems.
template<bool threads, int inst>
volatile unsigned long
__default_alloc_template<threads, inst>::__node_allocator_lock = 0;

#if __mips < 3 || !(defined (_ABIN32) || defined(_ABI64)) || defined(__GNUC__)
#   define __test_and_set(l,v) test_and_set(l,v)
#endif

template <bool threads, int inst>
void 
__default_alloc_template<threads, inst>::__lock(volatile unsigned long *lock)
{
    const unsigned low_spin_max = 30;  // spin cycles if we suspect uniprocessor
    const unsigned high_spin_max = 1000; // spin cycles for multiprocessor
    static unsigned spin_max = low_spin_max;
    unsigned my_spin_max;
    static unsigned last_spins = 0;
    unsigned my_last_spins;
    static struct timespec ts = {0, 1000};
    unsigned junk;
#   define __ALLOC_PAUSE junk *= junk; junk *= junk; junk *= junk; junk *= junk
    int i;

    if (!__test_and_set((unsigned long *)lock, 1)) 
	{
        return;
    }
    my_spin_max = spin_max;
    my_last_spins = last_spins;
    for (i = 0; i < my_spin_max; i++) 
	{
        if (i < my_last_spins/2 || *lock) 
		{
            __ALLOC_PAUSE;
            continue;
        }
        if (!__test_and_set((unsigned long *)lock, 1)) 
		{
            // got it!
            // Spinning worked.  Thus we're probably not being scheduled
            // against the other process with which we were contending.
            // Thus it makes sense to spin longer the next time.
            last_spins = i;
            spin_max = high_spin_max;
            return;
        }
    }
    // We are probably being scheduled against the other process.  Sleep.
    spin_max = low_spin_max;
    for (;;) 
	{
        if (!__test_and_set((unsigned long *)lock, 1)) 
		{
            return;
        }
        nanosleep(&ts, 0);
    }
}

template <bool threads, int inst>
inline void
__default_alloc_template<threads, inst>::__unlock(volatile unsigned long *lock)
{
#   if defined(__GNUC__) && __mips >= 3
        asm("sync");
        *lock = 0;
#   elif __mips >= 3 && (defined (_ABIN32) || defined(_ABI64))
        __lock_release(lock);
#   else 
        *lock = 0;
        // This is not sufficient on many multiprocessors, since
        // writes to protected variables and the lock may be reordered.
#   endif
}
#endif


//以下是 static data member 的定义与初值设定
template <bool threads, int inst> 
char* __default_alloc_template<threads, inst>::start_free = 0;

template <bool threads, int inst>
char* __default_alloc_template<threads, inst>::end_free = 0;

template <bool threads, int inst>
size_t __default_alloc_template<threads, inst>::heap_size = 0;

template <bool threads, int inst>
__default_alloc_template<threads, inst>::obj* __VOLATILE

__default_alloc_template<threads, inst> ::free_list[
__default_alloc_template<threads, inst>::__NFREELISTS] = 
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, };
// The 16 zeros are necessary to make version 4.1 of the SunPro
// compiler happy.  Otherwise it appears to allocate too little
// space for the array.

#endif /* ! __USE_MALLOC */

#if defined(__sgi) && !defined(__GNUC__) && (_MIPS_SIM != _MIPS_SIM_ABI32)
#	pragma reset woff 1174
#endif

__STL_END_NAMESPACE

#undef __PRIVATE

#endif /* __SGI_STL_INTERNAL_ALLOC_H */
