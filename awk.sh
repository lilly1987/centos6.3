
awk "{print ￦$0}" 파일이름

awk '{print $0}' 파일이름

awk -F '"[,:]"' '{print $0}' 파일 이름

awk "
BEGIN {

}
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
