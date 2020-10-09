/* NOTE: This is an internal header file, included by other STL headers.
 *   You should not attempt to use it directly.
 */
 
 
/*
����û�����������������������ϵͳ�Դ��ģ���˵����������������û��ʲô��(��Ĭ�ϻᱻ����)
���ǳ�֮Ϊtrivial destructor����֮������ض�������������������˵����Ҫ���ͷſռ�֮ǰ��
һЩ���飬���������������Ϊnon-trivial destructor��
*/



//������ȫ�ֺ���construct() �� destroy(),�������Ĺ��������
//����������STL��׼�淶
#ifndef __SGI_STL_INTERNAL_CONSTRUCT_H
#define __SGI_STL_INTERNAL_CONSTRUCT_H

#include <new.h>

__STL_BEGIN_NAMESPACE

//��һ���汾������һ��ָ��
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


//���Ԫ�ص�ֵ������non-trivial destructor
template <class ForwardIterator>
inline void __destroy_aux(ForwardIterator first, ForwardIterator last, __false_type) 
{
	for ( ; first < last; ++first)
		destroy(&*first);
}

//���Ԫ�ص�ֵ������trivial destructor
template <class ForwardIterator> 
inline void 
__destroy_aux(ForwardIterator, ForwardIterator, __true_type) {}


//�ж�Ԫ�ص�ֵ�����Ƿ���trivial destructor
template <class ForwardIterator, class T>
inline void 
__destroy(ForwardIterator first, ForwardIterator last, T*) 
{
	typedef typename __type_traits<T>::has_trivial_destructor trivial_destructor;
	__destroy_aux(first, last, trivial_destructor());
}


//�ڶ����汾�������������������˺����跨�ҳ�Ԫ�ص���ֵ�ͱ�
//�������� __type_traits<>��ȡ���ʵ���ʩ
template <class ForwardIterator>
inline void 
destroy(ForwardIterator first, ForwardIterator last) 
{
	__destroy(first, last, value_type(first));
}


//destroy()�ڶ�����Ե�����Ϊchar* �� wchar_t* ���ػ���
inline void destroy(char*, char*) {}
inline void destroy(wchar_t*, wchar_t*) {}

__STL_END_NAMESPACE

#endif /* __SGI_STL_INTERNAL_CONSTRUCT_H */

// Local Variables:
// mode:C++
// End:
