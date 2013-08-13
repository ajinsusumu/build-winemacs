#!/bin/bash
PATH=/bin:/mingw/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=b32-$namebase.log
mv ${BUILD}/bx32 ${BUILD}/bx32.$namebase
mkdir ${BUILD}/bx32
cd ${BUILD}/bx32
CPPFLAGS='-DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ${SRC}/nt/msysconfig.sh --enable-checking >> ${BUILD}/$logfilename 2>&1
make >> ${BUILD}/$logfilename 2>&1
make check >> ${BUILD}/$logfilename 2>&1
