export RenderDocRootDir=$(cd "$(dirname "$0")/../";pwd)

# you can check the path "/usr/lib/jvm/java-8-openjdk-amd64"
export JAVA_HOME=''

# find yourself path
export ANDROID_NDK=''

# if it is ubuntu18, you can install it with
# sudo apt-get install qt5-qmake libqt5svg5-dev libqt5x11extras5-dev
# and location is "/usr/lib/x86_64-linux-gnu/qt5/bin/qmake"
export QT5_QMAKE_EXE=''

# aosp build path
export AOSP_OUT_PATH=''

# edit yourself proxy
# for example http_proxy=http://127.0.0.1:7890
function setproxy(){
    export http_proxy=
    export https_proxy=
}

function unsetproxy(){
    unset http_proxy
    unset https_proxy
}
