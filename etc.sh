ls -l
ls /tmp/*


# 파일별 용량 + 정렬
du -h --max-depth=2 2>/dev/null | sort -rh
