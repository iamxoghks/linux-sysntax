# ssh 원격 접속
ssh user@remote_host
# user: 원격 서버의 사용자 이름
# remote_host: 원격 서버의 IP 주소 또는 도메인 이름

#scp: 로컬과 원격 서버 간 파일 복사
#로컬에서 원격 서버로 파일 복사
scp local_file.txt user@remote_host:/path/to/destination/
