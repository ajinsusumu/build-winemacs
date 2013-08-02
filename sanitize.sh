#!/bin/bash
DIR="$( cd "$( /bin/dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=/bin:/mingw/bin:$PATH
namebase=$(date -u +\%Y\%m\%dt\%H\%M\%S).${RANDOM}
logfilename=sanitize-$namebase.log
cd /d/emacs.bzr
/c/cygwin/bin/sh -c "PATH=/bin:/usr/bin;bzr clean-tree --force --ignored --unknown --detritus;bzr revert" > /d/$logfilename 2>&1
/c/cygwin/bin/sh -c "PATH=/bin:/usr/bin;bzr pull" > /d/$logfilename 2>&1
patch -p1 < $DIR/x64.patch >> /d/$logfilename 2>&1
./autogen.sh >> /d/$logfilename 2>&1
