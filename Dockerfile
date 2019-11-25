FROM debian:latest

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime&&sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list&&apt-get -y update

RUN apt-get install -y python3&&apt-get install -y python3-pip

RUN mkdir -p ~/.pip&&echo "[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple\n[install]\ntrusted-host = https://pypi.tuna.tsinghua.edu.cn" > ~/.pip/pip.conf&&pip3 install --upgrade pip
