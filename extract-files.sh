#!/bin/sh

BASE=../../../vendor/huawei/viva/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  cp ../../../device/huawei/viva/tmp/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
