#!/bin/bash

if [ -e './BR/vendor.new.dat.br' ];then
 echo "开始解压vendor.new.dat.br"
 brotli -d ./BR/vendor.new.dat.br
 python ./bin/sdat2img/sdat2img.py ./BR/vendor.transfer.list ./BR/vendor.new.dat ./BR/vendor.img
 mv ./BR/vendor.img ./IMG
 echo "成功转换为system.img"
 bash ./scripts/unpackvimg.sh
else
 echo "BR/vendor.new.dat.br不存在!"
fi