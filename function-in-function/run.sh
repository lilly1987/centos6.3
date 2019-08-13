echo "a1 a2 a3
#test 865 one
y7 y6 y5" > test-f_test-no1.lst

function f_loop(){
 while read line; do
  echo "f_loop : $line"
  rgx="^ *$"
  if [[ $line =~ ^#.* ]] || [[ $line =~ $rgx ]]
  then
   continue;
  else
  # $1 ${line[@]};
   $1 $line
  fi
 done < ./test-$1-$2.lst
}

function f_test(){
 echo "f_test : $*"
 for item in $@;
 do
  echo "$echo"
 done
}

f_loop f_test no1
