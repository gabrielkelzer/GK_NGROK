#!/bin/bash
rm $PREFIX/bin/ngrok
rm -rf $PREFIX/share/ngrok
mkdir -p $PREFIX/share/ngrok
cp get-ngrok.sh $PREFIX/share/ngrok
cp ngrok $PREFIX/bin
apt update && apt upgrade -y
apt install -y proot wget resolv-conf
apt clean
apt autoremove
cd $PREFIX/share/ngrok
bash get-ngrok.sh
clear
echo -e '''\033[1;36m
　 　　 　 ／＞　 フ
　　　　　| 　_　 _|
　 　　　／`ミ _x 彡
　　 　 /　　　 |
　　　 /　 ヽ　　 ﾉ
　／￣|　　 |　|　|
　| (￣ヽ＿_ヽ_)_) \033[0m\033[1;33mGK_NGROK V1\033[0m
\033[1;36m　＼二つ\033[0m
\033[1;32m
Instalação feita com sucesso!
Agora digite ./ngrok +token
'''
