#!/bin/bash

if [ -e './Payload/payload.bin' ];then
 echo "开始解压payload.bin"
 mkdir Payload/out
 python3 ./bin/payload/payload.py ./Payload/payload.bin ./Payload/out
 echo "解压payload.bin完成"
else
 echo "Payload/payload.bin不存在!"
fi