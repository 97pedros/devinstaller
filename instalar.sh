#!/bin/bash
clear
echo "isso irá instalar vários programas e fazer várias atualizações no sistema, poderá levar muito tempo"
read -p "Iniciar mesmo assim? (s/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Ss]$ ]]
then
    echo "iniciando instalação de programas e atualização do sistema"
    apt update -y
    apt upgrade -y
    apt install python3 -y
    apt install python3-pygame -y
    apt install python3-tk -y
    apt install python3-dev -y
    apt install python3-pip -y
    apt install gcc -y
    apt install g++ -y
    apt install nodejs -y
    apt install npm -y
    apt install pavucontrol -y
    apt install vlc -y
    apt install cheese -y
    pip3 install pyinstaller
    sudo npm install electron -g
    apt update -y
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
    sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    apt install apt-transport-https -y
    apt install code -y
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
    sudo apt install gimp gimp-gmic gmic -y
    sudo apt install gimp-plugin-registry -y
    apt install audacity -y
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome-stable_current_amd64.deb -y
    apt autoremove -y
fi
echo "limpando arquivos temporários de instalação"
rm -v packages.microsoft.gpg
rm -v google-chrome-stable_current_amd64.deb
echo "Fim do script"
