#!/bin/sh
#
# $Id: autogen.sh,v 1.2 2004/08/20 19:46:28 bazsi Exp $
#
# Run this script to generate Makefile skeletons and configure
# scripts.
#

libtoolize -f -c
aclocal -I m4 $*
autoheader
autoconf
automake --add-missing --foreign --copy --force-missing
find -name libtool -o -name ltmain.sh | xargs sed -i -e "s,'file format pe-i386.*\?','file format \(pei\*-i386\(\.\*architecture: i386\)\?|pe-arm-wince|pe-x86-64\)',"
