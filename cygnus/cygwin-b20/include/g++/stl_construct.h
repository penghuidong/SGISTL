/* NOTE: This is an internal header file, included by other STL headers.
 *   You should not attempt to use it directly.
 */
 
 
/*
如果用户不定义析构函数，而是用系统自带的，则说明，析构函数基本没有什么用(但默认会被调用)
我们称之为trivial destructor。反之，如果特定定义了析构函数，则说明需要在释放空间之前做
一些事情，则这个析构函数称为non-trivial destructor。
*/



//定义了全局函数construct() 和 destroy(),负责对象的构造和析构
//他们隶属于STL标准规范
#ifndef __SGI_STL_INTERNAL_CONSTRUCT_H
#define __SGI_STL_INTERNAL_CONSTRUCT_H

#include <new.h>

__STL_BEGIN_NAMESPACE

//第一个版本，接受一个指针
template <class T>
inline void destroy(T* pointer) 
{  			
    pointer->~T();
}

template <class T1, class T2>
inline void 
construct(T1* p, const T2& value)
{  
	new (p) T1(value);
}


//如果元素的值类型有non-trivial destructor
template <class ForwardIterator>
inline void __destroy_aux(ForwardIterator first, ForwardIterator last, __false_type) 
{
	for ( ; first < last; ++first)
		destroy(&*first);
}

//如果元素的值类型有trivial destructor
template <class ForwardIterator> 
inline void 
__destroy_aux(ForwardIterator, ForwardIterator, __true_type) {}


//判断元素的值类型是否有trivial destructor
template <class ForwardIterator, class T>
inline void 
__destroy(ForwardIterator first, ForwardIterator last, T*) 
{
	typedef typename __type_traits<T>::has_trivial_destructor trivial_destructor;
	__destroy_aux(first, last, trivial_destructor());
}


//第二个版本，接受两个迭代器，此函数设法找出元素的数值型别，
//进而利用 __type_traits<>求取最适当措施
template <class ForwardIterator>
inline void 
destroy(ForwardIterator first, ForwardIterator last) 
{
	__destroy(first, last, value_type(first));
}


//destroy()第二版针对迭代器为char* 和 wchar_t* 的特化版
inline void destroy(char*, char*) {}
inline void destroy(wchar_t*, wchar_t*) {}

__STL_END_NAMESPACE

#endif /* __SGI_STL_INTERNAL_CONSTRUCT_H */

// Local Variables:
// mode:C++
// End:
