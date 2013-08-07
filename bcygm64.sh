#!/bin/bash
PATH=/bin:/usr/bin
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=${BUILD}/bcygm64-$namebase.log
mv ${BUILD}/bcygm64 ${BUILD}/bcygm64.$namebase
mkdir ${BUILD}/bcygm64
cd ${BUILD}/bcygm64
CPPFLAGS='-D_WIN64 -DWIDE_EMACS_INT -DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' bash ${SRC}/nt/msysconfig.sh --with-xml2 --host=x86_64-w64-mingw32 --enable-checking >> $logfilename 2>&1
make -j4 >> $logfilename 2>&1
make check >> $logfilename 2>&1
