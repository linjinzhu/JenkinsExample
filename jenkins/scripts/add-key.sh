#!/bin/sh

# Create a custom keychain
#security create-keychain -p travis ios-build.keychain

# Make the custom keychain default, so xcodebuild will use it for signing
security default-keychain -s login.keychain

# Unlock the keychain
security unlock-keychain -p travis login.keychain

# Set keychain timeout to 1 hour for long builds
# see http://www.egeek.me/2013/02/23/jenkins-and-xcode-user-interaction-is-not-allowed/
security set-keychain-settings -t 3600 -l ~/Library/Keychains/login.keychain

# Add certificates to keychain and allow codesign to access them
#security import ./jenkins/scripts/certs/apple.cer -k ~/Library/Keychains/login.keychain -T /usr/bin/codesign
#security import ./jenkins/scripts/certs/dist.cer -k ~/Library/Keychains/login.keychain -T /usr/bin/codesign
#security import ./jenkins/scripts/certs/dist.p12 -k ~/Library/Keychains/login.keychain -P $KEY_PASSWORD -T /usr/bin/codesign


# Put the provisioning profile in place
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp "./jenkins/scripts/profile/$PROFILE_NAME.mobileprovision" ~/Library/MobileDevice/Provisioning\ Profiles/
