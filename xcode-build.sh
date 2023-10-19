#!/bin/sh
cmake -G "Xcode" -T buildsystem=1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CONFIGURATION_TYPES=Release ..
xcodebuild -workspace GameNetworkingSockets.xcodeproj/project.xcworkspace -scheme GameNetworkingSockets