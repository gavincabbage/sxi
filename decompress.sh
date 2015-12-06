#!/bin/bash

export TMPDIR=`mktemp -d /tmp/selfextract.XXXXXX`

ARCHIVE=`awk '/^__ARCHIVE_BELOW__/ {print NR + 1; exit 0; }' $0`

tail -n+$ARCHIVE $0 | tar xzv -C $TMPDIR

RETURN_DIR=`pwd`
cd $TMPDIR/payload
./installer

cd $RETURN_DIR
rm -rf $TMPDIR

exit 0

__ARCHIVE_BELOW__
