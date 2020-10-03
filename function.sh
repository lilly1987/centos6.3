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

# https://hashcode.co.kr/questions/1893/%EB%A6%AC%EB%88%85%EC%8A%A4-%ED%99%98%EA%B2%BD%EB%B3%80%EC%88%98-%EC%84%A4%EC%A0%95%ED%95%A0-%EB%95%8C-env-set-export-declare
# 변수 삭제
unset test1
test1=''
f_test0 () {
  echo "=== $FUNCNAME ST ==="
  # "test1=$2$3" 라는 명령어를 eval가 실행
  eval "$1=\$2\$3"
  echo $1
  eval "echo \$$1"
  echo "=== $FUNCNAME ED ==="
}
f_test0 test1 test2 test3
echo $test1

# 변수 확인
set | grep test
