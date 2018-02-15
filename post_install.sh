#!/bin/sh
# ./post_install.sh

# Set nvm version
export NODE_VERSION=8.2.0

# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. $NVM_DIR/nvm.sh

# Download nvm version
nvm install $NODE_VERSION

# Install creacore
npm install -g creacore

# Create first node
creacore create testnode
cd testnode
