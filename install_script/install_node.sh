cd ../install_pack
tar -xJf node-v8.9.4-linux-x64.tar.xz
sudo mv node-v8.9.4-linux-x64.tar /opt/
sudo ln -s /opt/node-v8.9.4-linux-x64.tar/bin/node /usr/local/bin/node
sudo ln -s /opt/node-v8.9.4-linux-x64.tar/bin/npm /usr/local/bin/npm
