
i=1
arr=()
function f_fun(){
 arr[$((i++))]=`echo $1`
 sleep 10
}
f_fun test

echo ${arr[*]}
