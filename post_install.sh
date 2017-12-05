#!/bin/sh
# ./post_install.sh

# Set nvm
export NVM_DIR=$HOME/.nvm
export NODE_VERSION=4.5.0

#Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. $NVM_DIR/nvm.sh

# Download nvm version
nvm install $NODE_VERSION

# Install bitcore
npm install -g bitcore

# Create first node
bitcore create testnode
cd testnode
bitcore install insight-api
bitcore install insight-ui

# Open zsh
zsh
