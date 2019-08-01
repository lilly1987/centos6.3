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
    for item in ${*} ;do
        echo $item
    done
    echo ${@}
    for item in ${@} ;do
        echo $item
    done
}
f_echo $List
f_echo '$List'
f_echo "$List"
f_echo ${List[*]}
f_echo '${List[*]}'
f_echo "${List[*]}"
f_echo ${List[@]}
f_echo '${List[@]}'
f_echo "${List[@]}"
