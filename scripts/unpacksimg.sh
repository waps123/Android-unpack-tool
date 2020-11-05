#!/bin/bash

if [ -e ./IMG/system.img ];then
 mkdir -p ./IMG/out/system
 echo "开始解压system.img"
 7z x ./IMG/system.img -oIMG/out/system
 echo "system.img解压完成"
else
 echo "IMG/system.img不存在!"
fi

