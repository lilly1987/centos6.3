t_pwd="$(cd "$(dirname "$0")" && pwd)/"
t_base="$(basename $t_pwd)/"
t_name="test"
t_dlst="$t_name-deploy-*.dlst"
t_rgx="^ *$"


while read v_line ; do
 {
  if [[ $v_line =~ ^#.* ]] || [[ $v_line =~ $t_rgx ; then continue ; fi
  arr=($v_line);
  nc -zw1 ${arr[3]} 22 > /dev/null ;
  if [ $? -eq 0 ] ;
  then
   sftp ${arr[2]}@${arr[3]} <<EOF # 2> /dev/null
mkdir ~/$t_base
lcd $t_pwd
cd ~/$t_base
put *.*
EOF
   else
    echo "can't connet"
   fi
 } &
done < $(ls $t_pwd/$t_name-*.dlst)

ls -d */
for dir in */; do
  echo "$dir"


while read line ; do
 {
  if [[ $line =~ ^#.* ]] ; then continue ; fi
  arr=($line);
  nc -zw1 ${arr[3]} 22 > /dev/null ;
  if [ $? -eq 0 ] ;
  then
   sftp ${arr[2]}@${arr[3]} <<EOF # 2> /dev/null
mkdir ~/$t_base
lcd $t_pwd
cd ~/$t_base
put *.*
EOF
   else
    echo "can't connet"
   fi
 } &
done < $(ls $t_pwd/$t_name-*.dlst)

done

wait `jobs -l | awk '$3 ~ /Running/{print $2}'`

echo "end"
