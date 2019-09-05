{
if true ;
then
cat log.log;
else
cat log.log.bak;
zcat log.gz;
fi
} | grep test | awk "
{
print \$0
 nm=\"\"
 cd=\"\"
for (i=1; i<NF; i++){

 if ( \$(i) ~ /name/ ){
  nm=\$(i+1)
  arr[\$(i+1)]++
 }

 if ( \$(i) ~ /code/ ){
  cd=\$(i+1)
  arr[\$(i+1)]++
 }

}

 arr[nm\"-\"cd]++
}

END {
 #zZzZ
}
"
