#사용자 추가 및 비밀번호 지정
sudo adduser newusername
sudo passwd newusername
#sudo: 관리자(root) 권한으로 명령어 실행, 현재 사용자의 비밀번호 필요
#adduser: 새 사용자 추가
#passwd: 사용자 비밀번호 설정 또는 변경

#사용자 변경, 새 사용자로 로그인시 해당 계정의 비밀번호 필요
su - newusername
#su: 다른 사용자로 전환, - 옵션은 해당 사용자의 환경 설정 로드

#chmod: 파일 또는 디렉토리의 권한 변경.
#user group others 로 구성, 각 3자리 숫자는 rwx(읽기, 쓰기, 실행) 권한을 의미
#r=4, w=2, x=1 의 합으로 권한 설정
chmod 755 filename.txt
#755: 소유자에게 읽기, 쓰기, 실행 권한 부여(7), 그룹과 다른 사용자에게 읽기 및 실행 권한 부여(5)
chmod u+x filename.txt
#u+x: 소유자(user)에게 실행(x) 권한 추가(+)
chmod g-w filename.txt
#g-w: 그룹(group)에서 쓰기(w) 권한 제거(-)
chmod o=r filename.txt
#o=r: 다른 사용자(others)에게 읽기(r) 권한만 부여

#chown: 파일 또는 디렉토리의 소유자 및 그룹 변경
chown newusername:newgroupname filename.txt