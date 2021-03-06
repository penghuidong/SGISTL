#ifndef _IO_H_
#define _IO_H_

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*
 * Function to return a Win32 HANDLE from a fd.
 */
extern long get_osfhandle(int);
extern setmode (int __fd, int __mode);

#ifdef __cplusplus
};
#endif /* __cplusplus */

#endif /* _IO_H_ */
