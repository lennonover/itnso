cd ../install_pack
tar -xJf node-v8.9.4-linux-x64.tar.xz
sudo mv node-v8.9.4-linux-x64 /opt/
sudo ln -s /opt/node-v8.9.4-linux-x64/bin/node /usr/local/bin/node
sudo ln -s /opt/node-v8.9.4-linux-x64/bin/npm /usr/local/bin/npm
