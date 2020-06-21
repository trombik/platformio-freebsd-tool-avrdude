#!/bin/sh

: ${PREFIX:="/usr/local"}

VERSION="1.60300.200527"
DESC="tool-avrdude"
REPO_NAME="platformio-freebsd-${DESC}"
REPO_OWNER="trombik"

ARCH=`uname -p`
OS=`uname -s | tr '[[:upper:]]' '[[:lower:]]'`

if [ ! -z $1 ]; then
    VERSION="$1"
fi

ln -s -f ${PREFIX}/bin/avrdude .
ln -s -f ${PREFIX}/bin/avrdude.conf .

cat <<__EOF__ >package.json
{
    "description": "${DESC}",
    "name": "${DESC}",
    "system": [
        "${OS}_${ARCH}"
    ],
    "url": "https://github.com/${REPO_OWNER}/${REPO_NAME}",
    "version": "${VERSION}"
}
__EOF__
