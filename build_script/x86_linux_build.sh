
source envsetup.sh

echo "RenderDocRootDir   : $RenderDocRootDir"
echo "JAVA_HOME          : $JAVA_HOME"
echo "ANDROID_NDK        : $ANDROID_NDK"
echo "QT5_QMAKE_EXE      : $QT5_QMAKE_EXE"
echo "AOSP_OUT_PATH      : $AOSP_OUT_PATH"
echo "PYTHON3_VERSION_DIR: $PYTHON3_VERSION_DIR"
echo "NET_PROXY:"
echo "    http_proxy     : $http_proxy"
echo "    https_proxy    : $https_proxy"
echo "====================================="

cd $RenderDocRootDir

cmake \
    -DQMAKE_QT5_COMMAND=$QT5_QMAKE_EXE \
    -DCMAKE_BUILD_TYPE=Debug \
    -Bbuild \
    -H.

make -C build -j8
