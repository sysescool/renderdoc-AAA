export RenderDocRootDir=$(cd "$(dirname "$0")/../";pwd)

# you can check the path "/usr/lib/jvm/java-8-openjdk-amd64"
export JAVA_HOME=''

# find yourself path
export ANDROID_NDK=''
export ANDROID_SDK=''

# if it is ubuntu18, you can install it with
# sudo apt-get install qt5-qmake libqt5svg5-dev libqt5x11extras5-dev
# and location is "/usr/lib/x86_64-linux-gnu/qt5/bin/qmake"
export QT5_QMAKE_EXE=''

# aosp build path
export AOSP_OUT_PATH=''

# ubuntu 22 default python version is python 3.10. However,
# support python version: 3.9 3.8 3.7 3.6 3.5 3.4
# you can config python version with 
#      update-alternatives --config python3
# However if you meet the problem when you run cmake: 
#      missing Python Development.Module Development.Embed
# run: apt-get install python3-dev python3.x-dev (x is your python version)
export PYTHON3_VERSION_DIR=''

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
