#!/bin/bash
clear
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
echo "
#######################################################################################
#
#                                  LEGENDYT4K SCRIPTS
#
#######################################################################################"
echo "Select an option:"
echo "1) Start Novnc"
echo "2) Exit"
read option

if [ $option -eq 1 ]; then
    clear
    echo -e "${RED}Downloading... Please Wait"
    docker run -p 6080:80 fredblgr/ubuntu-novnc:20.04
    docker pull fredblgr/ubuntu-novnc
clear
    echo -e "${GREEN}Downloading and installation completed!"
elif [ $option -eq 2 ]; then
    clear
    echo -e "Exit"
else
    echo -e "${RED}Invalid option selected.${NC}"
fi
