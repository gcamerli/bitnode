#!/bin/sh
# ./post_install.sh

# Set nvm
export NVM_DIR=$HOME/.nvm
export NODE_VERSION=8.2.0

# Set bitcore version
export BITCORE_VERSION=4.1.1
export BITCORE_BETA=5.0.0-beta.44

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. $NVM_DIR/nvm.sh

# Download nvm version
nvm install $NODE_VERSION

# Install bitcore
npm install -g bitcore@$BITCORE_BETA

# Create first node
bitcore create testnode
cd testnode

# Install insight modules
#bitcore install insight-api
#bitcore install insight-ui

# Launch bitcored
bitcored
