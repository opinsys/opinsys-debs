#!/bin/sh

set -eu

mkdir -p usr/share/arduino/hardware
wget -O - https://github.com/pololu/a-star/archive/master.tar.gz \
  | tar -C usr/share/arduino/hardware -zxv --strip-components=2  \
        a-star-master/add-on/pololu

mkdir -p usr/share/arduino/libraries/Zumo32U4
wget -O - https://github.com/pololu/zumo-32u4-arduino-library/archive/master.tar.gz \
  | tar -C usr/share/arduino/libraries/Zumo32U4 -zxv --strip-components=1 \
        zumo-32u4-arduino-library-master

mkdir -p usr/share/arduino/libraries/Zumo32U4_opinsys/examples
wget -O - https://github.com/opinsys/ohjelmointi-opetuksessa/archive/master.tar.gz \
  | tar -C usr/share/arduino/libraries/Zumo32U4_opinsys/examples -zxv \
        --strip-components=2 ohjelmointi-opetuksessa-master/zumo-32u4

mkdir -p usr/share/arduino/libraries/Nalle/examples
wget -O - https://github.com/opinsys/ohjelmointi-opetuksessa/archive/master.tar.gz \
  | tar -C usr/share/arduino/libraries/Nalle/examples -zxv \
        --strip-components=2 ohjelmointi-opetuksessa-master/nalle
