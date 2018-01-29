cd ../install_pack
tar xvf pm2.tar.gz
sudo mv pm2 /opt/node-v8.9.4-linux-x64/lib/node_modules/
sudo ln -s /opt/node-v8.9.4-linux-x64/lib/node_modules/pm2/bin/pm2 /usr/local/bin/pm2
