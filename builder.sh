#!/bin/bash
tar czvf payload.tgz payload
cat decompress.sh payload.tgz > payload.sxi

exit 0
