#!/bin/bash

if [ -e ./IMG/vendor.img ];then
 mkdir -p ./IMG/out/vendor
 echo "开始解压vendor.img"
 7z x ./IMG/vendor.img -oIMG/out/vendor
 echo "vendor.img解压完成"
else
 echo "IMG/vendor.img不存在!"
fi

