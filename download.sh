#!/bin/bash

# download HRNet
git clone https://github.com/leoxiaobin/deep-high-resolution-net.pytorch

# download pretrained HRNet params and unzip
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1deN4MYiNyEEsv8WeVXpX7DsI5FkPmOdB" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1deN4MYiNyEEsv8WeVXpX7DsI5FkPmOdB" -o hrnet.zip
unzip hrnet.zip
rm hrnet.zip
rm /tmp/cookie
