#!/bin/bash

python3 -m venv venv
. venv/bin/activate

pip install --upgrade wheel pip setuptools
pip install -r requirements.txt

path=$(pwd)
npm install -g appium
rm -rf $path/appium_output_log.txt
rm -rf $path/appium_server_PID*.txt
echo "------------------------------------[[[[ Appium Web Browser Setup ]]]]------------------------------------"
echo
appium -p 4723 --webdriveragent-port 8109 >> $path/appium_output_log.txt 2>&1 & echo $! > $path/appium_server_PID.txt &
echo
echo "Starting Appium Server One on PID $APPIUM_SERVER_PID"
sleep 10s
