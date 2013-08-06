#!/bin/bash
PATH=/bin:/usr/bin
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=/cygdrive/d/bcygm64-$namebase.log
mv /cygdrive/d/bcygm64 /cygdrive/d/bcygm64.$namebase
mkdir /cygdrive/d/bcygm64
cd /cygdrive/d/bcygm64
CPPFLAGS='-D_WIN64 -DWIDE_EMACS_INT -DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' bash ../emacs.bzr/nt/msysconfig.sh --with-xml2 --host=x86_64-w64-mingw32 --enable-checking >> $logfilename 2>&1
make -j4 >> $logfilename 2>&1
make check >> $logfilename 2>&1
