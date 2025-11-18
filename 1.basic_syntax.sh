# 현재 위치 경로 출력   
pwd

# 현재 위치의 파일 및 디렉토리 목록 출력
ls
# 현재 위치의 파일 및 디렉토리 목록을 상세히 출력
ls -l
# 현재 위치의 파일 및 디렉토리 목록을 숨김 파일 포함하여 출력
ls -a
# 현재 위치의 파일 및 디렉토리 목록을 상세히 및 숨김 파일 포함
ls -al
# 현재 위치의 파일 및 디렉토리 목록을 수정 시간순으로 정렬하여
ls -lt
# 현재 위치의 파일 및 디렉토리 목록을 역순으로 정렬하여
ls -lr
# 현재 위치의 파일 및 디렉토리 목록을 상세히 및 숨김 파일 포함 역순으로 시간순으로 정렬
ls -altr

# 디렉토리 생성
mkdir new_dir
# 디렉토리 삭제
rmdir new_dir

# 상위 디렉토리로 이동
cd ..
cd ../
# root 디렉토리로 이동
cd /
# 현재 사용자 홈 디렉토리로 이동
cd
# 직전 디렉토리로 이동
cd -

# 상대경로와 절대경로
# 상대경로 : 현재 위치를 기준으로 경로 지정 
cd ../another_dir
# 절대경로 : 루트 디렉토리를 기준으로 경로 지정
cd /home/user/another_dir

#파일 생성
touch new_file.txt
#파일 삭제
rm new_file.txt
#파일 복사
cp source_file.txt destination_file.txt
#파일 이동(이름 변경)
mv old_name.txt new_name.txt
#파일 내용 출력
cat file.txt

#파일 편집기. nano, vi, vim 등. nano는 초보자에게 친숙, vi와 vim은 고급 기능 제공
nano file.txt
vi file.txt
vim file.txt

#파일의 상위 10줄 출력
head file.txt
#파일의 하위 10줄 출력
tail file.txt
#파일의 실시간 로그 출력
tail -f logfile.log
#파일의 특정 단어 검색
grep "search_term" file.txt
#파일의 특정 단어를 포함하는 줄 출력
grep -n "search_term" file.txt
#파일의 특정 단어를 포함하지 않는 줄 출력
grep -v "search_term" file.txt
#파일의 특정 단어를 대소문자 구분 없이 검색
grep -i "search_term" file.txt


