#!/bin/sh
# Init environment
# Change to your path
#
echo "Init enviroment for Android NDK and SDK"
if [ "$#" != "3" ]; then
    echo "Usage: init.sh ndkscriptpath androidndkpath androidsdkpath"
else
    # ndk script path
    export NDKSCRIPTPATH=$1

    # init NDK path
    export NDK=$2
    export ANDROID_NDK_ROOT=$2

    # init SDK path
    export ANDROID_SDK=$3

    if [ "${NDKSCRIPTPATH:1:1}" == ":" ]; then
        TMPNDKSCRIPTPATH="/cygdrive/"${NDKSCRIPTPATH:0:1}${NDKSCRIPTPATH:2}
    else
        TMPNDKSCRIPTPATH=$NDKSCRIPTPATH
    fi
    # add some path to PATH
    export PATH=$TMPNDKSCRIPTPATH:$NDK:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$NDK/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin:$PATH
fi
