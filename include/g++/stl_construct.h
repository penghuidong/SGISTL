#ifndef __SGI_STL_INTERNAL_CONSTRUCT_H
#define __SGI_STL_INTERNAL_CONSTRUCT_H

#include <new.h>

/* 此文件主要涉及对象的构造与析构
*/

namespace std{

template <class T>
inline void 
destroy(T* pointer) 
{
    pointer->~T();
}

template <class T1, class T2>
inline void 
construct(T1* p, const T2& value) 
{
	new (p) T1(value);
}


template <class ForwardIterator>
inline void
__destroy_aux(ForwardIterator first, ForwardIterator last, __false_type) 
{
	for ( ; first < last; ++first)
		destroy(&*first);
}

//如果元素的数值类型有trivial destructor
template <class ForwardIterator> 
inline void __destroy_aux(ForwardIterator, ForwardIterator, __true_type) {}


template <class ForwardIterator, class T>
inline void 
__destroy(ForwardIterator first, ForwardIterator last, T*) 
{
	typedef typename __type_traits<T>::has_trivial_destructor trivial_destructor;
	__destroy_aux(first, last, trivial_destructor());
}


template <class ForwardIterator>
inline void 
destroy(ForwardIterator first, ForwardIterator last) 
{
	__destroy(first, last, value_type(first));
}

//destroy()迭代器版本对char* 的特化
inline void destroy(char*, char*) {}

//destroy()迭代器版本对wchar_t* 的特化
inline void destroy(wchar_t*, wchar_t*) {}

__STL_END_NAMESPACE

#endif /* __SGI_STL_INTERNAL_CONSTRUCT_H */
