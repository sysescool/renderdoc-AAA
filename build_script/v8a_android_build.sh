
source envsetup.sh

echo "RenderDocRootDir   : $RenderDocRootDir"
echo "JAVA_HOME          : $JAVA_HOME"
echo "ANDROID_NDK        : $ANDROID_NDK"
echo "ANDROID_SDK        : $ANDROID_SDK"
echo "QT5_QMAKE_EXE      : $QT5_QMAKE_EXE"
echo "AOSP_OUT_PATH      : $AOSP_OUT_PATH"
echo "PYTHON3_VERSION_DIR: $PYTHON3_VERSION_DIR"
echo "NET_PROXY:"
echo "    http_proxy     : $http_proxy"
echo "    https_proxy    : $https_proxy"
echo "====================================="

cd $RenderDocRootDir
BUILD_DIR=build_android_64
if [ -d "$BUILD_DIR" ]; then rm -Rf $BUILD_DIR; fi
mkdir $BUILD_DIR

export JAVA_HOME=$JAVA_HOME

export ANDROID_NDK=$ANDROID_NDK
export ANDROID_SDK=$ANDROID_SDK

cmake \
    -DCMAKE_BUILD_TYPE=Debug \
    -DBUILD_ANDROID=On \
    -DANDROID_ABI=arm64-v8a \
    -B$BUILD_DIR \
    -H.

cd $BUILD_DIR

make  -j8

[[ -d "$RenderDocRootDir/build/share/renderdoc/plugins/android/" ]] || mkdir -p "$RenderDocRootDir/build/share/renderdoc/plugins/android/"

cp ./bin/org.renderdoc.renderdoccmd.arm64.apk $RenderDocRootDir/build/share/renderdoc/plugins/android/org.renderdoc.renderdoccmd.arm64.apk
