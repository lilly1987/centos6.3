cat <<EOF> List.txt
1 "3 1" 21
2 "3 2" 22
EOF
cat List.txt

function f_echo(){
    for item in "$@" ;do
        echo $item
    done
}

while read line; do
    # ""를 인식처리
    array=( )
    while IFS= read -r -d ''; do
      array+=( "$REPLY" )
    done < <(xargs printf '%s\0' <<<"$line")

    f_echo "${array[@]}"

done < $( ls List.txt )
# 와일드카드 처리를 위해
