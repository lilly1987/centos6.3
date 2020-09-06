# job의 상태를 확인 및 시작 중지
# 설치 필요한듯

# initctl
# 목록
initctl list
initctl start job
initctl stop job

# 프로세스 런레빌
cat /etc/inittab

# 런 레벨별 스크립트
ls -l /etc/rc.d/*
ls -l /etc/rc.d/*

# 부팅시 초기 런레벨이 정의됨
/etc/inittab

# 런레벨 2,3,5에서 마지막에 실행됨
/etc/rc.d/rc.local

# 런레벨 변경
telinit

# 이전, 현재 런레벨
runlevel

# 3: 네트워킹 지원, 다중 사용자, 명령행 인터페이스
