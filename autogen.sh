#!/bin/sh

set -x

LANG=C
rm -rf autom4te.cache

aclocal -I misc/m4
automake --add-missing --force-missing
autoconf


REQUIRED="cvs svn git mercurial darcs bzr dwatch"

if [ -n "$1" ] && [ "$1" = --bootstrap] && which yum > /dev/null 2>&1; then
    sudo yum -y install ${REQUIRED}
fi
