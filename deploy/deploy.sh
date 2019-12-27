t_pwd="$(cd "$(dirname "$0")" && pwd)/"
t_base="$(basename $t_pwd)"

while read line ; do
 {
  if [[ $line =~ ^#.* ]] ; then continue ; fi
  arr=($line);
  nc -zw1 ${arr[3]} 22 > /dev/null ;
  if [ $? -eq 0 ] ;
  then
   sftp $${arr[3]} <<EOF # 2> /dev/null
lcd /home/user/
cd /home/user/script
put *.*
EOF
   else
    echo "can't connet"
   fi
 } &
done < 

wait `jobs -l | awk '$3 ~ /Running/{print $2}'`

echo "end"
