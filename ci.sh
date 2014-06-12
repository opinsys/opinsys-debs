#!/bin/sh

set -eu
set -x

APTIREPO_REMOTE=${APTIREPO_REMOTE:-}

sudo apt-get update
sudo apt-get install -y --force-yes puavo-devscripts libcrypt-ssleay-perl aptirepo-upload

package=$1

packagedir="packages/${CI_TARGET_DIST}/${package}"

if [ ! -d "${packagedir}" ]; then
    packagedir="packages/default/${package}"
fi

cd "${packagedir}"
sudo puavo-install-deps
debian/rules get-orig-source
puavo-dch
dpkg-buildpackage -us -uc -sa --source-option='--compression=gzip'

if [ -n "${APTIREPO_REMOTE}" ]; then
    aptirepo-upload -r "${APTIREPO_REMOTE}" \
        -b "git-$(echo "${GIT_BRANCH}" | cut -d / -f 2)" ../${package}*.changes
fi
