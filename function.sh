
i=1
function f_fun(){
 $1=`echo $2`
 sleep 10
}
f_fun $arr[$((i++))] test

echo ${arr[*]}
