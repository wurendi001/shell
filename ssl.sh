#!/bin/bash
while [[ -z "$domain" ]];do
    read -p "输入域名/IP(必填,如 *.li5159.asia): " domain
done
read -p "输入邮箱(选填,默认1150315739@qq.com): " mail
[[ -z "$mail" ]] && mail=1150315739@qq.com
read -p "输入日期(选填,默认3650): " day
[[ -z "$day" ]] && day=3650
dir=$domain && mkdir -p $dir
crt_file="$dir/${domain}.crt"
key_file="$dir/${domain}.key"
if [[ "$(command -v openssl)" ]];then
    openssl req -x509 -nodes -newkey rsa:2048 -days $day -keyout $key_file -out $crt_file -subj "/C=US/ST=California/L=Los Angeles/O=Zhujizixun/OU=Aoao/CN=${domain}/emailAddress=${mail}"
    echo -e "\t证书：$(pwd)/$crt_file\n\t私钥：$(pwd)/$key_file"
else
    echo "openssl 未安装"
fi
