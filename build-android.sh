#!/bin/bash

set -Eeu

unset JAVA_HOME
unset JAVA_INCLUDE_PATH

NDK_VERS=24

SWIFT_VERS=6.0.2
SWIFT_SDK="$(swift sdk list|grep android)"
SWIFT_SDK_SYSROOT="${HOME}/.swiftpm/swift-sdks/${SWIFT_SDK}.artifactbundle/swift-${SWIFT_VERS}-release-android-${NDK_VERS}-sdk/android-27c-sysroot"

HOST_JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home"
TARGET_JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"

TOOLCHAINS="/Library/Developer/Toolchains/swift-${SWIFT_VERS}-RELEASE.xctoolchain"
export TOOLCHAINS

TRIPLE="aarch64-unknown-linux-android${NDK_VERS}"
export TRIPLE

#"${TOOLCHAINS}/usr/bin/swift" build --swift-sdk ${TRIPLE}

cd Samples/JavaKitSampleApp
export JAVA_HOME=${HOST_JAVA_HOME}
export JAVA_INCLUDE_PATH=${HOST_JAVA_HOME}/include

swift build --toolchain ${TOOLCHAINS} --product Java2Swift
swift build --toolchain ${TOOLCHAINS} --product JavaCompilerPlugin

export JAVA_HOME=${TARGET_JAVA_HOME}
export JAVA_INCLUDE_PATH="${SWIFT_SDK_SYSROOT}/usr/include"
swift build --toolchain ${TOOLCHAINS} --swift-sdk ${TRIPLE} --product JavaKitExample

cd Sources/JavaKitAndroidExample

APP_LIBS=app/libs/arm64-v8a

mkdir -p ${APP_LIBS}
cp ../../.build/${TRIPLE}/debug/libJavaKitExample.so ${APP_LIBS}
cp ${SWIFT_SDK_SYSROOT}/usr/lib/aarch64-linux-android/${NDK_VERS}/lib*.so ${APP_LIBS}
rm -f ${APP_LIBS}/lib{c,dl,log,m,z}.so

./gradlew assembleDebug
./gradlew installDebug