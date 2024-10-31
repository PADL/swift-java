#!/bin/bash

set -Eeu

unset JAVA_HOME
unset JAVA_INCLUDE_PATH

SWIFT_VERS=6.0.2

SWIFT_SDK="$(swift sdk list|grep android)"

HOST_JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home"
TARGET_JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

TOOLCHAINS="/Library/Developer/Toolchains/swift-${SWIFT_VERS}-RELEASE.xctoolchain"
export TOOLCHAINS

TRIPLE="aarch64-unknown-linux-android24"
export TRIPLE

#"${TOOLCHAINS}/usr/bin/swift" build --swift-sdk ${TRIPLE}

cd Samples/JavaKitSampleApp
export JAVA_HOME=${HOST_JAVA_HOME}
export JAVA_INCLUDE_PATH=${HOST_JAVA_HOME}/include

swift build --toolchain ${TOOLCHAINS} --product Java2Swift
swift build --toolchain ${TOOLCHAINS} --product JavaCompilerPlugin

export JAVA_HOME=${TARGET_JAVA_HOME}
export JAVA_INCLUDE_PATH="${HOME}/.swiftpm/swift-sdks/${SWIFT_SDK}.artifactbundle/swift-${SWIFT_VERS}-release-android-24-sdk/android-27c-sysroot/usr/include"
"${TOOLCHAINS}/usr/bin/swift" build --swift-sdk ${TRIPLE} --product JavaKitExample

#"${JAVA_HOME}/bin/java" -cp .build/plugins/outputs/javakitsampleapp/JavaKitExample/destination/JavaCompilerPlugin/Java -Djava.library.path=.build/debug com.example.swift.JavaKitSampleMain
