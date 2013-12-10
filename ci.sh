#!/bin/sh

set -eu
set -x

sudo apt-get update
sudo apt-get install -y --force-yes puavo-devscripts

package=$1
cd "packages/default/${package}"
debian/rules get-orig-source
sudo puavo-install-deps
sudo dpkg-buildpackage -us -uc

aptirepo-upload -r "${APTIREPO_REMOTE}" -b "git-$(echo "${GIT_BRANCH}" | cut -d / -f 2)" ../${package}*.changes
