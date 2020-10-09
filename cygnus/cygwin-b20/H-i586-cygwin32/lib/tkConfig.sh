# tkConfig.sh --
# 
# This shell script (for sh) is generated automatically by Tk's
# configure script.  It will create shell variables for most of
# the configuration options discovered by the configure script.
# This script is intended to be included by the configure scripts
# for Tk extensions so that they don't have to figure this all
# out for themselves.  This file does not duplicate information
# already provided by tclConfig.sh, so you may need to use that
# file in addition to this one.
#
# The information in this file is specific to a single platform.
#
# SCCS: @(#) tkConfig.sh.in 1.11 97/10/30 13:29:13

# Tk's version number.
TK_VERSION='8.0'
TK_MAJOR_VERSION='8'
TK_MINOR_VERSION='0'
TK_PATCH_LEVEL='p2'

# -D flags for use with the C compiler.
TK_DEFS=' '

# Flag, 1: we built a shared lib, 0 we didn't
TK_SHARED_BUILD=@TK_SHARED_BUILD@

# The name of the Tk library (may be either a .a file or a shared library):
TK_LIB_FILE=libtk80.a

# Additional libraries to use when linking Tk.
TK_LIBS='   -lm'

# Top-level directory in which Tcl's platform-independent files are
# installed.
TK_PREFIX='/cygnus/cygwin-b20'

# Top-level directory in which Tcl's platform-specific files (e.g.
# executables) are installed.
TK_EXEC_PREFIX='/cygnus/cygwin-b20/H-i586-cygwin32'

# CYGNUS LOCAL
# -I switch(es) to pick up the tk.h header file from its build
# directory.
TK_BUILD_INCLUDES='-I/home/noer/src/b20/comp-tools/devo/tk/generic -I/home/noer/src/b20/comp-tools/devo/tk/xlib'
# END CYGNUS LOCAL

# -I switch(es) to use to make all of the X11 include files accessible:
TK_XINCLUDES=''

# Linker switch(es) to use to link with the X11 library archive.
TK_XLIBSW=''

# String to pass to linker to pick up the Tk library from its
# build directory.
TK_BUILD_LIB_SPEC='-L/cygnus/build/i586-cygwin32-x-i586-cygwin32/tk/win -ltk80'

# String to pass to linker to pick up the Tk library from its
# installed directory.
TK_LIB_SPEC='-L/cygnus/cygwin-b20/H-i586-cygwin32/lib -ltk80'

# Location of the top-level source directory from which Tk was built.
# This is the directory that contains a README file as well as
# subdirectories such as generic, unix, etc.  If Tk was compiled in a
# different place than the directory containing the source files, this
# points to the location of the sources, not the location where Tk was
# compiled.
TK_SRC_DIR='@TK_SRC_DIR@'

# Needed if you want to make a 'fat' shared library library
# containing tk objects or link a different wish.
TK_CC_SEARCH_FLAGS='@TK_CC_SEARCH_FLAGS@'
TK_LD_SEARCH_FLAGS='@TK_LD_SEARCH_FLAGS@'

