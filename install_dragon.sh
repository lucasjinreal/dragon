# !/usr/bin/sh
sudo chmod -R 777 ./bin/*
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform
    sudo cp bin/dragon_macos /usr/local/bin/dragon
    sudo ln -s /usr/local/bin/dragon /usr/local/bin/dn
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    sudo apt install -y libcurl4-openssl-dev
    sudo cp bin/dragon_linux /usr/local/bin/dragon
    sudo ln -s /usr/local/bin/dragon /usr/local/bin/dn
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
    echo "this is windows 32bit"
    echo "We are currently not support Windows"

elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
    echo "this is windows 64bit"
    echo "Windows are not support"
fi

echo "You just installed dragon!!"
