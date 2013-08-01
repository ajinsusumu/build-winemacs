# Build emacs for win32/win64 daily at 7am

## Prerequisite

* w32
    * mingw/msys from <http://mingw.org>
* w64
    * strawberry perl 64bit from <http://strawberryperl.com>
    * yypkg <http://yypkg.org/mingw-builds/>
      * has pkg-config

## Procedure

* under msys
* git clone <https://github.com/liyuray/build-winemacs>
* cd build-winemacs
* ./bemacs.sh

## TODOs

1. find travis-ci to do auto test.
1. try if cygwin can build mingw binaries.
1. watch cygwin64.
1. pack misc binaries like jpeg/gif/png codecs for deployment.
1. enable libxml2 in strawberry perl.
