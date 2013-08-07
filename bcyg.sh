#!/bin/bash
PATH=/bin:/usr/bin
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=${BUILD}/bcyg-$namebase.log
mv ${BUILD}/bcyg ${BUILD}/bcyg.$namebase
mkdir ${BUILD}/bcyg
cd ${BUILD}/bcyg
CPPFLAGS='-DGLYPH_DEBUG=1' CFLAGS='-O0 -g3' ${SRC}/configure --with-w32 >> $logfilename 2>&1
make -j4 >> $logfilename 2>&1
make -k check >> $logfilename 2>&1
