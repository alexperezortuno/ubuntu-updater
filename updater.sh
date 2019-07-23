#!/bin/bash

PARAM_1=$1
PARAM_2=$2
PARAM_3=$3
RCol='\e[0m';
Yel='\e[0;33m';
Red='\e[0;31m';
Gre='\e[0;32m';
Divider='==============================================================';

case "$PARAM_1" in
    "clean")
      echo -e "${Yel}";
      sudo apt autoremove && sudo apt clean && sudo apt autoclean
      echo -e "${RCol}";
    ;;
    "package:remove")
      if [ "$PARAM_2" != "" ]
      then
        echo "${Yel}Removing package ${PARAM_2}${RCol}\n";
        sudo apt remove --purge $PARAM_2
      else
        echo "${Yel}Please tell me what package you want to remove${RCol}\n";
      fi
    ;;
    "package:install")
      sudo apt install $PARAM_2
    ;;
    "package:upgrade")
      if [ "$PARAM_2" != "" ]
      then
        echo "${Yel}Installing package ${PARAM_2}${RCol}\n";
        sudo apt install $PARAM_2 --only-upgrade
      else
        echo "${Red}Please tell me what package you need information${RCol}\n";
      fi
    ;;
    "package:installed")
      sudo apt list --installed | less
    ;;
    "package:find")
      if [ "$PARAM_2" != "" ]
      then
        echo "${Yel}Finding package ${PARAM_2}${RCol}\n";
        sudo apt list --installed | grep -i $PARAM_2
      else
        echo "${Red}Please tell me what package you need to find${RCol}\n";
      fi
    ;;
    "package:description")
      if [ "$PARAM_2" != "" ]
      then
        echo "${Yel}Finding package ${PARAM_2}${RCol}\n";
        apt-cache show $PARAM_2 | less
      else
        echo "${Red}Please tell me what package you need information${RCol}\n";
      fi
    ;;
    "package:descriptions")
      if [ "$PARAM_2" != "" ]
      then
        echo "${Yel}Finding package ${PARAM_2}${RCol}\n";
        apt-cache search $PARAM_2 | less
      else
        echo "${Red}Please tell me what package you need to find${RCol}\n";
      fi
    ;;
    "package:dependencies")
      if [ "$PARAM_2" != "" ]
      then
        apt-cache showpkg $PARAM_2 | less
      else
        echo "${Red}Please tell me what package you need to see${RCol}\n";
      fi
    ;;
    "cache:stats")
      apt-cache stats
    ;;
    "list")
      echo "\t";
      echo "${Gre}Without parameters${RCol}\t${Yel}Update list of packages, upgrade and clean cache${RCol}\r";
      echo "${Gre}clean${RCol}\t\t\t${Yel}Used to free up the disk space by cleaning retrieved (downloaded) .deb files (packages) from the local repository. ${RCol}\n";
      echo "${Gre}package:install\t${RCol}\t${Yel}Install package in the current machine${RCol}\r";
      echo "${Gre}package:installed${RCol}\t${Yel}List all installed packages in the current machine${RCol}\r";
      echo "${Gre}package:upgrade${RCol}\t\t${Yel}Only upgrade specific package in the current machine${RCol}\r";
      echo "${Gre}package:remove${RCol}\t\t${Yel}Remove specific package${RCol}\r";
      echo "${Gre}package:find${RCol}\t\t${Yel}Find specific package${RCol}\r";
      echo "${Gre}package:dependencies${RCol}\t${Yel}Check the dependencies for particular software packages. whether those dependencies packages are installed or not${RCol}\r";
      echo "${Gre}package:description${RCol}\t${Yel}Get description by a specific package${RCol}\r";
      echo "${Gre}package:descriptions${RCol}\t${Yel}List all packages with your description${RCol}\n";
      echo "${Gre}cache:stats${RCol}\t\t${Yel}Display overall statistics about the cache${RCol}\r";
    ;;
    *)
      echo -e "${Yel} Updating packages ${RCol}";
      sudo apt update && apt list --upgradable && sudo apt upgrade -y && sudo apt autoremove && sudo apt clean && sudo apt autoclean
    ;;
esac

exit 1;