#!/usr/bin/env bash
chmod 755 /install_nvm.sh
/install_nvm.sh
cp ~/.bashrc admin.sh
chmod 755 admin.sh

# if not doing this, we get "nvm/npm not found" errors
echo "nvm install 10">>admin.sh
echo "npm install">>admin.sh

./admin.sh
