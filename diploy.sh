while read line ; do
 {
  if [[ $line =~ ^#.* ]] ; then continue ; fi
  arr=($line);
  nc -zw1 ${arr[2]} 22 > /dev/null ;
  if [ $? -eq 0 ] ;
  then
   sftp user@192.168.0.1 <<EOF 2> /dev/null
lcd /home/user/script
cd /home/user/script
put *.*
EOF
   else
    echo "can't connet"
   fi
 } &
done < server.lst
