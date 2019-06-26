
awk "{print ￦$0}" 파일이름

awk '{print $0}' 파일이름

awk -F '"[,:]"' '{print $0}' 파일 이름

awk "
BEGIN {

}
{

 for (i=1;i<NF;i++){
  # 칼럼별 출력
  print i,￦$(i)
  # 단어별 카운트
  arr[￦$(i)]
 }
}
END {

}
"
