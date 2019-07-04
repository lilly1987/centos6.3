
awk "{print ￦$0}" 파일이름

awk '{print $0}' 파일이름

awk -F '"[,:]"' '{print $0}' 파일 이름

awk "
BEGIN {

}
￦$0 "￦!"~ /제외패턴/ {print NR , ￦$0} 
{
 
 for (i=1;i<NF;i++){

  # 칼럼별 출력
  print NR,i,￦$(i)

  # 단어별 카운트
  arr[￦$(i)]++
 }
}
END {
 # 정렬후 출력
 j=1
 for (i in arr){
  ind[j]=i
  j++
 }
 n=asort(ind)
 for (i=1;i<n;i++){
  print ind[i] , arr[ind[i]]
 }
}
"

lst="
file1
file2
file3
"


function f_sp(){
 find . -path "*tmp*" -name "*name$item*" | xargs grep ".*pt.*" | awk -F'[\\[\\]]' "
BEGIN {
 arr[\"val\"]=0
}
\$(NF) "\!"~ /val/ { arr[\"val\"]++ }
\$1 ~ /[0-9]/ && \$2 ~ /(2|8)/ {print \$0;}
END {
  print \"val\" , arr[\"val\"]
}
"
}

for item in $lst
do
 f_sp "$item"
done






