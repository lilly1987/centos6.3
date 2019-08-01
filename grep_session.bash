
# 재귀 검색
grep -E "text" /data/log.log | awk '{ arr[$1]} END { for (i in arr){ if (length(i)=30) print i } }' /tmp/t_log.log
grep -F -f /tmp/t_log.log /data/log.log
rm /tmp/t_log.log
