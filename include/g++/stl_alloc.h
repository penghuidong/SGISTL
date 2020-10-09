#ifndef __SGI_STL_INTERNAL_ALLOC_H
#define __SGI_STL_INTERNAL_ALLOC_H

/*
	���ļ���Ҫ�����ڴ���������ͷ�
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
	/*���º������������ڴ治�����*/
	static void* oom_malloc(size_t);

	static void* oom_realloc(void *, size_t);
	
	static void (* __malloc_alloc_oom_handler)(); 
	
public:
	static void* allocate(size_t n)
	{
		void* result = malloc(n);  //��һ��������ֱ��ʹ��malloc()
		if (NULL == result) 	   //�޷���������ʱ������oom_malloc() 
			result = oom_malloc(n);
		return result;
	}

	static void deallocate(void *p, size_t /* n */)
	{
		free(p);  				  //��һ��������ֱ��ʹ��free()
	}

	static void* reallocate(void *p, size_t /* old_sz */, size_t new_sz)
	{
		void* result = realloc(p, new_sz); //��һ��������ֱ��ʹ��realloc()
		if (NULL==result) 				   //�޷���������ʱ������oom_realloc()
			result = oom_realloc(p, new_sz);
		return result;
	}

	
	//����C++��set_new_handler(),����ͨ����ָ���Լ���out-of-memory handler
	static void (* set_malloc_handler(void (*f)()))()
	{
		void (* old)() = __malloc_alloc_oom_handler;
		__malloc_alloc_oom_handler = f;
		return(old);
	}
};

// malloc_alloc out-of-memory handling
//��ֵΪ0���д��Ͷ��趨
template <int inst>
void* __malloc_alloc_template<inst>::oom_malloc(size_t n)
{
    void (*my_malloc_handler)();
    void* result;

    for (;;)   //���ϳ����ͷţ����ã����ͷţ������á�������
	{
        my_malloc_handler = __malloc_alloc_oom_handler;
        if(NULL == my_malloc_handler) 
		{ 
			throw bad_alloc; 
		}
        (*my_malloc_handler)();    //���ô���������ͼ�ͷ��ڴ�
        result = malloc(n);        //�ٴγ��������ڴ�
        if(result) 
			return result;
    }
}

template <int inst>
void* __malloc_alloc_template<inst>::oom_realloc(void *p, size_t n)
{
    void (* my_malloc_handler)();
    void *result;

    for (;;)    //���ϳ����ͷţ����ã����ͷţ������á�������
	{
        my_malloc_handler = __malloc_alloc_oom_handler;
        if (NULL== my_malloc_handler) 
		{ 
			throw bad_alloc; 
		}
        (*my_malloc_handler)();   //���ô���������ͼ�ͷ��ڴ�
        result = realloc(p, n);   //�ٴγ��������ڴ�
        if (result) 
			return result;
    }
}

typedef __malloc_alloc_template<0> malloc_alloc;

//����alloc������Ϊ��һ����ڶ�����������SGI��Ϊ���ٰ�װһ���ӿ�����
//ʹ�������Ľӿ��ܹ�����STL���
template<class T, class Alloc>
class simple_alloc 
{
public: //�����ĵ����������ĳ�Ա������ʹ�����������õ�λ��bytesתΪԪ�صĴ�С
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

typedef malloc_alloc alloc;  //��allocΪ��һ��������
typedef malloc_alloc single_client_alloc;

#else

	
	/*
		�����ǵڶ���������
	*/
template <bool threads, int inst>
class __default_alloc_template 
{
private:
  // Really we should use static const int x = N
  // instead of enum { x = N }, but few compilers accept the former.
    enum {__ALIGN = 8};                          //С��������ϵ��߽�
    enum {__MAX_BYTES = 128};                    //С�����������
    enum {__NFREELISTS = __MAX_BYTES/__ALIGN};   //free-lists����
	
	
	/*
		SGI�ڶ������������������κ�С��������ڴ��������ϵ���8�ı���
		��ROUND_UP()����
	*/
	static size_t ROUND_UP(size_t bytes) 
	{
        return (((bytes) + __ALIGN-1) & ~(__ALIGN - 1));
	}
	
private:
	union obj       // ����Ϊ��ʱ��obj������ά���ã����鱻ʹ��ʱ��obj�����ݣ�ά������ռ�ö���Ŀռ�
	{			    //free-lists�Ľڵ㹹��
        union obj * free_list_link;
        char client_data[1];    /* The client sees this.*/
	};
	
private:
	
	//16��free-lists
    static obj* volatile free_list[__NFREELISTS]; 
	
	//���������С������ʹ�õ�n��free-list, n��0��ʼ
	static size_t FREELIST_INDEX(size_t bytes) 
	{
        return (((bytes) + __ALIGN-1)/__ALIGN - 1);
	}

	//����һ����СΪn�Ķ��󣬲����ܼ����СΪn���������鵽free list
	static void* refill(size_t n);
	
	//����һ���ռ䣬������ nobjs ����СΪ size ������
	//������� nobjs �������������㣬 nojobs ���ܻή��
	static char* chunk_alloc(size_t size, int &nobjs);

	// Chunk allocation state.
	static char* start_free;   //�ڴ����ʼλ�ã�ֻ�� chunk_alloc() �б仯
	static char* end_free;	   //�ڴ�ؽ���λ�ã�ֻ�� chunk_alloc() �б仯
	static size_t heap_size;

public:
	static void* allocate(size_t n)
	{
		obj* volatile * my_free_list; // my_free_list��һ��ָ�룬ָ��һ��volatileָ�룬��volatileָ��ָ��obj
		obj* result;
		
		//����128�͵��õ�һ��������
		if (n > (size_t)__MAX_BYTES )
		{
			return malloc_alloc::allocate(n);
		}
		
		//Ѱ��16��free lists ���ʵ���һ��
		my_free_list = free_list + FREELIST_INDEX(n);
			
		result = *my_free_list;
		if (result == NULL) 
		{				
			void* r = refill(ROUND_UP(n));  //û���ҵ����õ�free list�� ׼��������� free list
			return r;
		}
		
		*my_free_list = result -> free_list_link;     //���� free list 
		return result;
	}

	/*
		�����ж������С������128bytes�͵��õ�һ����������
			С��128bytes���ҳ���Ӧ�� free list���������ջ�
	*/
	static void deallocate(void* p, size_t n)
	{
		obj* q = (obj*)p;
		obj* volatile * my_free_list;

		if (n > (size_t) __MAX_BYTES)    
		{
			malloc_alloc::deallocate(p, n);  //���õ�һ��������
			return;
		}
		 
		my_free_list = free_list + FREELIST_INDEX(n);   // Ѱ����Ӧ�� free list
		q->free_list_link = *my_free_list;              //����free list,��������
		*my_free_list = q;
	}

	static void* reallocate(void* p, size_t old_sz, size_t new_sz);

};

//��allocΪ�ڶ���������
typedef __default_alloc_template<__NODE_ALLOCATOR_THREADS, 0> alloc;

typedef __default_alloc_template<false, 0> single_client_alloc;



/*
	���ڴ����ȡ�ռ�� free list �ã���chunk_alloc() �Ĺ���
*/
//����size�Ѿ��ʵ��ϵ���8�ı���
//ע�����nobjs������
template <bool threads, int inst>
char*                                                           
__default_alloc_template<threads, inst>::chunk_alloc(size_t size, int& nobjs) 
{
    char * result;
    size_t total_bytes = size * nobjs;
    size_t bytes_left = end_free - start_free;   //�ڴ��ʣ��ռ�

    if (bytes_left >= total_bytes)    			 //�ڴ��ʣ��ռ�����������
	{
        result = start_free;
        start_free += total_bytes;
        return result;
    }  
	else if (bytes_left >= size)                 //�ڴ��ʣ��ռ䲻����ȫ���������������㹻��Ӧһ�������ϵ�����
	{
        nobjs = bytes_left/size;
        total_bytes = size * nobjs;
        result = start_free;
        start_free += total_bytes;
        return result;
    } 
	else                                         //�ڴ��ʣ��ռ���һ������Ĵ�С���޷��ṩ
	{
        size_t bytes_to_get = 2 * total_bytes + ROUND_UP(heap_size >> 4);

        if (bytes_left > 0)                      //�������ڴ���в�����ͷ��������
		{
			//��������ȷ�����ʵ��� free list
            obj* volatile * my_free_list = free_list + FREELIST_INDEX(bytes_left);  //Ѱ���ʵ���free list 

            ((obj*)start_free)->free_list_link = *my_free_list;                     //����free list,���ڴ���в���ռ����
			
            *my_free_list = (obj*)start_free;
        }
		
        start_free = (char*)malloc(bytes_to_get);//��heap ��ȡ�ռ䲹���ڴ��
		
        if (NULL == start_free)                  //heap�ռ䲻��
		{
            int i;
            obj** my_free_list, *p;
            
			/*
					���ſ������ǻ���ʲô���ⲻ������˺������ǲ����㳢�����ý�С�����飬
					��Ϊ�ڶ���̻��������׵�������
			*/
            for (i=size; i<=__MAX_BYTES; i+=__ALIGN)//��Ѱ��û���ҹ��������
			{
                my_free_list = free_list + FREELIST_INDEX(i);
                p = *my_free_list;
                if (NULL != p)    //free list �ڻ���δ������
				{
					//����free list���ͷų�δ������
                    *my_free_list = p -> free_list_link;
                    start_free = (char*)p;
                    end_free = start_free + i;
                    return chunk_alloc(size, nobjs); //�ݹ�����Լ���Ϊ������nobjs
                }
            }
			end_free = 0;							 //������û���ڴ������
					//���õ�һ��������������out of memory�����Ƿ񾡵���
            start_free = (char*)malloc_alloc::allocate(bytes_to_get); //��ᵼ���׳��쳣�������ڴ治�������ø���

        }
        heap_size += bytes_to_get;
        end_free = start_free + bytes_to_get;
        return chunk_alloc(size, nobjs);             //�ݹ�����Լ���Ϊ������nobjs
    }
}


/*
	����һ����СΪn�Ķ��󣬲�����ʱ����ʵ��� free list ���ӽڵ�
		����n�Ѿ��赱�ϵ���8�ı���
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

    if (1 == nobjs)            //���ֻ���һ�����飬�������ͷ�����������ã� free list���½ڵ�
		return chunk;
	
    my_free_list = free_list + FREELIST_INDEX(n);  //����׼������ free list, �����½ڵ�

	/*������chunk�ռ��ڽ��� free list */
    result = (obj*)chunk;                          //��һ��׼�����ظ��ͻ���
	
	//���µ���free listָ�������õĿռ䣨ȡ���ڴ�أ�
    *my_free_list = next_obj = (obj*)(chunk + n);
	
	//��free list�еĸ����ڵ㴮������
    for (i=1; ; i++)                               //��1��ʼ����Ϊ��0�������ظ��Ͷ�
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


//������ static data member �Ķ������ֵ�趨
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
