#!/bin/bash

path=$(pwd)
APPIUM_SERVER_PID=$(cat ./appium_server_PID.txt)
echo
echo "------------------------------------[[[[ Appium Web Browser Teardown ]]]]------------------------------------"
echo
echo "The following will clean up all instances of Appium that are running on a specific PID."
echo
kill -s 9 $APPIUM_SERVER_PID
##--> Uncomment the following 4 lines only if you absolutely need to use them.
pgrep node | xargs kill
pgrep xcode | xargs kill
echo "Stopping Appium on PID $APPIUM_SERVER_PID"
echo
echo "Appium clean up should definitely be finished by now. It should be ready to be started again."
echo "Run the following if you are not sure... ps -A | grep appium"
echo
ps -A | grep appium
