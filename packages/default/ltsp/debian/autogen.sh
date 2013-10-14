#!/bin/sh
set -e
cd client/localapps/
autoreconf --force --install
cd -
cd client/nbd-proxy/
autoreconf --force --install
cd -

make -C po update-po
