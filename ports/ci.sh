#!/bin/sh

set -eu
set -x

sudo apt-get update
sudo apt-get install -y --force-yes puavo-devscripts libcrypt-ssleay-perl

package=$1
cd "packages/default/${package}"
sudo puavo-install-deps
debian/rules get-orig-source
puavo-dch
dpkg-buildpackage -us -uc -sa

aptirepo-upload -r "${APTIREPO_REMOTE}" -b "git-$(echo "${GIT_BRANCH}" | cut -d / -f 2)" ../${package}*.changes
