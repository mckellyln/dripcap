brew update
brew install nvm gpg v8 rocksdb
export PATH=/usr/local/opt/gnupg/libexec/gpgbin:$PATH

mkdir ~/.nvm
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

nvm install $NODE_VERSION
nvm use --delete-prefix $NODE_VERSION

mkdir ~/.electron
curl -L -o ~/.electron/electron-v1.4.1-darwin-x64.zip https://github.com/electron/electron/releases/download/v1.4.1/electron-v1.4.1-darwin-x64.zip
curl -L -o ~/.electron/SHASUMS256.txt-1.4.1 https://github.com/electron/electron/releases/download/v1.4.1/SHASUMS256.txt

export CC=clang
export CXX=clang++
