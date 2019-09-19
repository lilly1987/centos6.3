
# servername user ip
while read line ; do
 if [[ $line =~ ^#.* ]];
 then
  continue ;
 fi

 arr=($line);
 nc -zw1 ${arr[2]} 22
 if [ $? -eq 0 ] ;
 then
  sftp ${arr[1]}@${arr[2]} <<EOF
mkdir /home/${arr[1]}/test
lcd $HOME/test
cd /home/${arr[1]}/test
put *.*
EOF
 fi
done < server.lst
