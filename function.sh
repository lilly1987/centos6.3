#백그라운드에선 외부 변수는 가져오지만 , 외부 변수에 넣어주진 않음. 즉 복사해와서 사용. 
i=1
arr=("test")
function f_fun(){
 echo "$1 : $i : ${arr[*]}"
 arr[$((i++))]=`echo $1`
 echo "$1 : $i : ${arr[*]}"
 sleep 1
}
f_fun test1 &
f_fun test2 &
f_fun test3 &

wait `jobs -l | awk '{print $2}'`

echo ${arr[*]}
#----------
cat <<EOF> List_entries.txt
Item1
Item 2 
'Item 3'
"Item 4"
Item 7 : *
"Item 6 : * "
"Item 6 : *"
Item 8 : $PWD
'Item 8 : $PWD'
"Item 9 : $PWD"
EOF

List=$(cat List_entries.txt)
echo $List
echo '$List'
echo "$List"
echo ${List[*]}
echo '${List[*]}'
echo "${List[*]}"
echo ${List[@]}
echo '${List[@]}'
echo "${List[@]}"


function f_echo(){
 echo ${*}
 echo ${@}
for item in (()) ;do
 echo $item
done

}
echo $List
echo '$List'
echo "$List"
echo ${List[*]}
echo '${List[*]}'
echo "${List[*]}"
echo ${List[@]}
echo '${List[@]}'
echo "${List[@]}"

