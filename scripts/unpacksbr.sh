#!/bin/bash

if [ -e './BR/system.new.dat.br' ];then
 echo "开始解压system.new.dat.br"
 brotli -d ./BR/system.new.dat.br
 python ./bin/sdat2img/sdat2img.py ./BR/system.transfer.list ./BR/system.new.dat ./BR/system.img
 mv ./BR/system.img ./IMG
 echo "成功转换为system.img"
 bash ./scripts/unpacksimg.sh
else
 echo "BR/system.new.dat.br不存在!"
fi