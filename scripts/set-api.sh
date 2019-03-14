#!/usr/bin/env bash
chmod 755 /install_nvm.sh
/install_nvm.sh
cp ~/.bashrc api.sh
chmod 755 api.sh

# if not doing this, we get "nvm/npm not found" errors
echo "nvm install 10">>api.sh
echo "npm install">>api.sh
echo "npm install pm2 -g">>api.sh

./api.sh
