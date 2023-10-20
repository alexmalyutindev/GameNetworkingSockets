#!/bin/sh
# cmake -G "Xcode" -T buildsystem=1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release ..
# xcodebuild -workspace GameNetworkingSockets.xcodeproj/project.xcworkspace -scheme GameNetworkingSockets
# xcodebuild -project GameNetworkingSockets.xcodeproj -target GameNetworkingSockets -sdk macosx -configuration Release clean build


cmake -GXcode -T buildsystem=1 \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CONFIGURATION_TYPES=Release ..

xcodebuild clean build \
    -project GameNetworkingSockets.xcodeproj \
    -target libGameNetworkingSockets \
    -configuration Release \
    -allowProvisioningUpdates

xcodebuild archive \
    -project GameNetworkingSockets.xcodeproj \
    -scheme libGameNetworkingSockets \
    -destination "generic/platform=macOS" \
    -archivePath "archives/GameNetworkingSockets" \
    -allowProvisioningUpdates

xcodebuild -create-xcframework \
    -archive "archives/GameNetworkingSockets.xcarchive" -framework libGameNetworkingSockets.framework \
    -output xcframeworks/GameNetworkingSockets.xcframework
