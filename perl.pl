#!/usr/bin/perl
# 위치가 다를수 있으므로
# whereis perl
# 으로 경로 확인

watch -n 5 ./perl.pl

print "test\n";



# 0~9
for ( $i=0;$i<9;$i++ ){
 $arr[$i]=rand(7);
 print "$i : $arr[$i]\n";
}

$#arr=4;

for ( $i=0;$i<9;$i++ ){
 print "$i : $arr[$i]\n";
}

$#arr=7;

for ( $i=0;$i<9;$i++ ){
 print "$i : $arr[$i]\n";
}

# a234b789
for( "a",2..4,"b",7..9){
 print;
}

