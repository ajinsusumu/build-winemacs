#!/bin/bash
PATH=/bin:/c/strawberry/c/bin:/mingw/bin:/usr/local/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=b64-$namebase.log
mv ${BUILD}/bx64 ${BUILD}/bx64.$namebase
mkdir ${BUILD}/bx64
cd ${BUILD}/bx64
CPPFLAGS='-D_WIN64 -DWIDE_EMACS_INT -DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ${SRC}/nt/msysconfig.sh --with-xml2 --host=x86_64-w64-mingw32 --enable-checking --with-gnutls >> ${BUILD}/$logfilename 2>&1
make >> ${BUILD}/$logfilename 2>&1
make check >> ${BUILD}/$logfilename 2>&1
