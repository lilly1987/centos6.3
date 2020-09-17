
# 로그인까지 함
# 권한만 가져옴
su
su user

# 권한 및 설정값까지 가져옴? 대표적으로 기본 폴더위치 변경
su -
su - user

# 해당 명령어만 해당 계정으로 실행. 따음표 필요
su -c 'echo you'



# 본인 암호만 필요. 따음표 묵을 필요 없음.
# 단 /etc/sudoers 에서 누가 어디서 어떤 명령 수행 가능한지 설정 필요
sudo [-u user] commend
