
cnt=1
eval var_${cnt}=

[bushi@rose ~]$ CNT=1
[bushi@rose ~]$ eval declare TEST_${CNT}=\""test string #${CNT}"\"
[bushi@rose ~]$ CNT=2
[bushi@rose ~]$ eval declare TEST_${CNT}=\""test string #${CNT}"\"
[bushi@rose ~]$ CNT=3
[bushi@rose ~]$ eval declare TEST_${CNT}=\""test string #${CNT}"\"
[bushi@rose ~]$ 
 
[bushi@rose ~]$ for i in 1 2 3; do eval echo \${TEST_${i}}; done
test string #1
test string #2
test string #3
[bushi@rose ~]$
 
[bushi@rose ~]$ for i in 1 2 3; do tmp=TEST_${i}; echo ${!tmp}; done
test string #1
test string #2
test string #3
[bushi@rose ~]$
