source ~/.bashrc

# If no environment set up, its considered local/dev
if [[ $# -eq 0 ]]
  then
    pm2 start ecosystem.config.js
    cd /var/www/html/admin-site
    echo "-------Removing node_modules folder---------"
    rm -rf node_modules/
    echo "-------Run npm install---------"
    npm install
    echo "-------Start admin-site service---------"
    npm run start &
  else
    pm2 start ecosystem.config.js --env $1
fi

echo "-------Start nginx service---------"
/etc/init.d/nginx start
bash
