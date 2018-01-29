# 基于 node 服务离线部署

鉴于公司内网环境不允许连接外网，只有将依赖的环境本地下载，打包上传，离线安装

## 目录结构

```
├── install_pack 安装包
│   ├── node-v8.9.4-linux-x64.tar.xz node 安装包
│   └── pm2.tar.gz pm2 安装包
└── install_script 安装脚本
    ├── install_node.sh node 安装脚本
    ├── install_pm2.sh pm2 安装脚本
    └── install.sh 一键脚本
```

## node 安装

install_node.sh

```shell
# 安装包
cd ../install_pack
# 解压 node 安装包
tar -xJf node-v8.9.4-linux-x64.tar.xz
# 移动 node 包到 /opt/ 目录下
sudo mv node-v8.9.4-linux-x64.tar /opt/
# 建立软链接 npm 和 node 命令到系统命令
sudo ln -s /opt/node-v8.9.4-linux-x64.tar/bin/node /usr/local/bin/node
sudo ln -s /opt/node-v8.9.4-linux-x64.tar/bin/npm /usr/local/bin/npm
```

## pm2 安装

install_pm2.sh

```shell
## 
cd ../install_pack
## 解压安装包
tar xvf pm2.tar.gz
## 移动到 node_modules
sudo mv pm2 /opt/node-v8.9.4-linux-x64.tar/lib/node_modules/
# 建立软链接 pm2 命令到系统命令
sudo ln -s /opt/node-v8.9.4-linux-x64.tar/lib/node_modules/pm2/bin/pm2 /usr/local/bin/pm2
```

## 一键脚本

install.sh

```shell
commands=(
./install_node.sh "install nodejs"
./install_pm2.sh "install pm2"
)

commands_len=${#commands[@]}

for (( i=0; i<$commands_len; i=i+2 ))
do
    desc_index=i+1
    desc=${commands[$desc_index]}

    ${commands[$i]}

    if [ "$?" ==  "0" ]; then
      echo -e $desc" - ok \n"
    else
      echo -e $desc" - failed ! \n"
    fi
done
```
