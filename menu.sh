#!/bin/bash

clear
bash ./scripts/mkdir.sh

echo "将要解压的文件放置到各文件夹内"
echo ""
echo "1. 解压system.new.dat.br"
echo "2. 解压system.new.dat(暂未更新)"
echo "3. 解压system.img"
echo "4. 解压vendor.new.dat.br"
echo "5. 解压vendor.new.dat(暂未更新)"
echo "6. 解压vendor.img"
echo "7. 全自动解压zip刷机包"
echo ""
echo "!. 清理目录"
echo "#. 退出程序"
echo "*. 关于该工具&帮助"
echo "￥. 安装依赖"

read -p "请输入选项：" c

if [ "$c" == "#" ]; then 
    exit
elif [ "$c" == "1" ]; then 
	bash ./scripts/unpacksbr.sh  
elif [ "$c" == "2" ]; then 
	bash ./scripts/unpacksdat.sh
elif [ "$c" == "3" ]; then 
	bash ./scripts/unpacksimg.sh
elif [ "$c" == "4" ]; then 
	bash ./scripts/unpackvbr.sh
elif [ "$c" == "5" ]; then 
	bash ./scripts/unpackvdat.sh	
elif [ "$c" == "6" ]; then 
	bash ./scripts/unpackvimg.sh
elif [ "$c" == "7" ]; then 
	bash ./scripts/unpack.sh
elif [ "$c" == "!" ]; then 
	bash ./scripts/clean.sh
elif [ "$c" == "*" ]; then 
	bash ./scripts/about.sh
elif [ "$c" == "￥" ]; then 
	bash ./setup.sh
else
	echo "好像输入不正确呢"
fi 
