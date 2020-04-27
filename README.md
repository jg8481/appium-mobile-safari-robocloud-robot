# appium-mobile-safari-robocloud-robot

## Robot Framework RPA, mobile Safari, and Robocloud example using AppiumLibrary

This is a Robot Framework RPA and Robocloud example reusing automation from a Test Leadership Congress 2019 workshop. This example will only work on MacOS.
- https://github.com/jg8481/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/blob/master/Workshop-Examples/Tests/Workshop-Part-Two/Mobile-Example-Safari.robot

## Running tasks on your local machine
This script prepares the local machine then executes all tasks under /tasks folder

    scripts/prepare_and_run.sh

## Running with Robocloud
Go to your Robots in your Robocloud workspace and enter the following in the Command field under Configuration:

    scripts/robocloud_runner.sh
