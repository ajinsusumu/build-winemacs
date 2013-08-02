# Build emacs for win32/win64 daily at 7am

## Prerequisite
* GNU Bazaar: get from one of the below sources:
  * cygwin <http://cygwin.com>
  * windows bazaar
* Emacs Bazaar repository
  * bzr branch bzr://bzr.savannah.gnu.org/emacs
  * bzr branch http://bzr.savannah.gnu.org/r/emacs

* w32 toolchain
    * mingw/msys from <http://mingw.org>
* w64 toolchain
    * strawberry perl 64bit from <http://strawberryperl.com>
    * yypkg <http://yypkg.org/mingw-builds/>
      * has pkg-config

## Procedure

* under msys
* git clone <https://github.com/liyuray/build-winemacs>
* cd build-winemacs
* ./bemacs.sh

## Status

* enabled dlls
  * png/jpeg/gif/xpm/xml
* can use eww for web browsing

## TODOs

1. find travis-ci to do auto test.
1. try if cygwin can build mingw binaries.
1. watch cygwin64.
1. pack misc binaries like jpeg/gif/png codecs for deployment.
1. enable libxml2 in strawberry perl.
1. fix the dll filenames in elisp files.
1. enable pkg-config
1. include png/jpeg/gif/xpm/xml library build script in one place.
