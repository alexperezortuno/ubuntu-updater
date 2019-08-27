#!/bin/bash
SOURCE="$(readlink -m install.sh)"
PREFIX="/install.sh"
IN_FILE=$(cat ~/.bashrc | grep -c "updater")

RCol='\e[0m';
Yel='\e[0;33m';
Red='\e[0;31m';
Gre='\e[0;32m';
Divider='==============================================================';
removed_string=${SOURCE//$PREFIX/}

function alias_installer() {
    echo -e "${Yel} Set new alias ${RCol}\n"
    echo "alias updater='sudo ${removed_string}/./updater.sh'" >> ~/.bashrc
    echo -e "${Gre} Alias set successfully ${RCol}\n"
}

if [ $IN_FILE -eq 0 ]
  then
    echo -e "${Gre}${Divider}${RCol}\n"
    alias_installer
    echo -e "${Gre}${Divider}${RCol}\n"
else
    echo -e "${Yel}${Divider}${RCol}\n"
    echo -e "${Yel} Removing alias ${RCol}\n"
    sed -i 's/alias updater.*//g' ~/.bashrc
    alias_installer
    echo -e "${Gre}Testing file${RCol}\n"
    echo -e "${Yel}${Divider}${RCol}\n"
fi

. ~/.bashrc
sudo sh ${removed_string}/updater.sh
