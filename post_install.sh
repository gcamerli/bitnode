#!/bin/sh
# ./post_install.sh

# Set nvm version
export NODE_VERSION=8.2.0

# Set bitcore version
export BITCORE_CPP=4.1.1
export BITCORE_JS=5.0.0-beta.44

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. $NVM_DIR/nvm.sh

# Download nvm version
nvm install $NODE_VERSION

# Install bitcore
npm install -g bitcore@$BITCORE_JS

# Create first node
bitcore create testnode
