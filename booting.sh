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

# 부팅시 시스템 서비스 활성화 여부 목록
chkconfig --list
# 그런데 실행 결과
#알림: 이 출력 결과에서는 SysV 서비스만을 보여주며 기존의 systemd 서비스는
#포함되어 있지 않습니다. SysV 설정 데이터는 기존의 systemd  설정에 의해
#덮어쓰여질 수 있습니다.
#
#      'systemctl list-unit-files'를 사용하여 systemd 서비스를 나열하실 수 있습니다.
#       특정 대상에 활성화된 서비스를 확인하려면
#       'systemctl list-dependencies [target]'을 사용하십시오.
systemctl list-unit-files


#
service $스크립트파일 $명령어
# service httpd start

setvice --status-all
# service < option > | --status-all | [ service_name [ command | --full-restart ] ]




