#!/bin/bash

# Standard app config
export APP_NAME=JenkinsExample
export DEVELOPER_NAME="iPhone Developer: JinZhu Lin (9R83ADTV4H)"
export PROFILE_NAME=Baidu_Distribution
export INFO_PLIST=JenkinsExample/Info.plist
export BUNDLE_DISPLAY_NAME=JenkinsExample CI

# Edit this for local testing only, DON'T COMMIT it:
export ENCRYPTION_SECRET=foo
export KEY_PASSWORD=111111
export TESTFLIGHT_API_TOKEN=
export TESTFLIGHT_TEAM_TOKEN=
export HOCKEY_APP_ID=2ee4b5b87d7c47acbb398bc3cf56cda1
export HOCKEY_APP_TOKEN=549b49be50814e00b74e48322bbd2c35

# This just emulates Travis vars locally
export TRAVIS_PULL_REQUEST=false
export TRAVIS_BRANCH=master
export TRAVIS_BUILD_NUMBER=0