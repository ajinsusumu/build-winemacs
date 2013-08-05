#!/bin/bash
PATH=/bin:/usr/bin
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && pwd )"
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=/cygdrive/d/sanitize-$namebase.log
cd /cygdrive/d/emacs.bzr
(bzr clean-tree --force --ignored --unknown --detritus;bzr revert) > $logfilename 2>&1
bzr pull >> $logfilename 2>&1
patch -p1 < $DIR/x64.patch >> $logfilename 2>&1
./autogen.sh >> $logfilename 2>&1
