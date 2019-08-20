
while true ;
do
echo "$(date +'%F %T') $RANDOM" > /tmp/rnd.cnt
find /tmp/* -maxdepth 0 -type f -wholename "*/rnd.cnt -exec bash -c '
 cat "${0}l" "$0" | tail -n10 > "${0}l.bak"
 mv "${0}l.bak" "$0.cntl"
' {} \;
done

cat "rnd.cntl"
