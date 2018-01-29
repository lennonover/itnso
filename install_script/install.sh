commands=(
./install_node.sh "install node"
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