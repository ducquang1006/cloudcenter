#!/bin/bash
# Title : vm-init.sh
# Description : A script to do some CloudCenter node initialization stuff, e.g. create user, add keys, etc.
# Author : chungtd
# Date : 2019-04-03
# Version : 0.1
# Usage : bash vm-init.sh
# Internal Vars : Initialized within srcipt - $CLIQR_HOME

# Source some cliqr variables and scripts
CLIQR_HOME=/usr/local/osmosix
. $CLIQR_HOME/etc/.osmosix.sh
. $CLIQR_HOME/etc/userenv
. $CLIQR_HOME/service/utils/cfgutil.sh
. $CLIQR_HOME/service/utils/install_util.sh
. $CLIQR_HOME/service/utils/os_info_util.sh
echo "172.31.0.30 rabbit.aws.vn" | sudo tee /etc/hosts -a
echo "118.71.250.253 ccm.fis.vn" | sudo tee /etc/hosts -a
