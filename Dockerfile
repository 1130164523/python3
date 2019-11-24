FROM debian:latest

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime&&sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list&&apt-get -y update

RUN apt-get install -y python3&&apt-get install -y python3-pip

RUN mkdir -p ~/.pip&&touch ~/.pip/pip.conf&&echo "[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple\n[install]\ntrusted-host = https://pypi.tuna.tsinghua.edu.cn" > ~/.pip/pip.conf&&rm -f /usr/bin/pip3&&ln -s /usr/local/bin/pip3.7 /usr/bin/pip3
