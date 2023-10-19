#!/bin/sh
cmake -G "Xcode" -T buildsystem=1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release ..
xcodebuild -workspace GameNetworkingSockets.xcodeproj/project.xcworkspace -scheme GameNetworkingSockets
xcodebuild -project GameNetworkingSockets.xcodeproj -target GameNetworkingSockets -sdk macosx -configuration Release clean build


cmake -G "Xcode" -T buildsystem=1 \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CONFIGURATION_TYPES=Release ..

xcodebuild archive \
    -project GameNetworkingSockets.xcodeproj \
    -scheme GameNetworkingSocketsFRAMEWORK \
    -destination "generic/platform=macOS" \
    -archivePath "archives/GameNetworkingSockets"

xcodebuild -create-xcframework \
    -archive "archives/GameNetworkingSockets.xcarchive" -framework GameNetworkingSocketsFRAMEWORK.framework \
    -output xcframeworks/GameNetworkingSockets.xcframework
