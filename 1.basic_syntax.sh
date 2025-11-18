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
rm -f new_file.txt  #강제 삭제
#디렉토리 및 그 안의 파일들 삭제
rm -r dir_to_delete

#파일 복사
cp source_file.txt destination_file.txt
#파일 이동(이름 변경)
mv old_name.txt new_name.txt
#파일 이동(디렉토리 변경)
mv file.txt /path/to/destination/
#디렉토리 복사
cp -r source_dir destination_dir

#파일 내용 출력
cat file.txt

#파일 편집기. nano, vi, vim 등. nano는 초보자에게 친숙, vi와 vim은 고급 기능 제공
nano file.txt
vi file.txt
vim file.txt

#파일의 상위 10줄 출력
head file.txt
#v파일의 상위 n줄 출력
head -n 20 file.txt
head -20 file.txt
#파일의 하위 10줄 출력
tail file.txt
#파일의 하위 n줄 출력
tail -n 20 file.txt
tail -20 file.txt
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
#디렉토리 내 모든 파일에서 특정 단어 검색
grep -r "search_term" /path/to/directory/
#example
#grep -rni "hello" mydir
# - hello 문자열을 라인수와 함께 mydir폴더에서 대소문자 구분 없이 검색

#명령어 입력 히스토리 출력
history
#히스토리에서 특정 명령어 검색
history | grep "search_term"

#입력한 문자열 출력
echo "Hello, World!"
#파일 덮어쓰기 >
echo "This is a new line" > file.txt
#파일에 문자열 추가 >>
echo "New line" >> file.txt

# | 다른 명령어의 출력을 파일로 리다이렉트
ls -l | tee file_list.txt
# 파일 내용을 다른 명령어의 입력으로 사용
cat file.txt | grep "search_term"
#예시: 현재 디렉토리 및 하위 디렉토리에서 .txt 파일을 찾아 그 안에서 "hello world2" 문자열을 대소문자 구분 없이 라인수와 함께 검색
find -name "*.txt" | xargs grep -rni  "hello world2"
#또는 #find 명령어로 찾은 각 파일에 대해 grep 실행
find -name "*.txt" -exec grep -rni  "hello world2" {} \; 

#파일 찾기
find /path/to/search -name "filename.txt"
#예시: 현재 디렉토리 및 하위 디렉토리에서 "example.txt" 파일 찾기
find . -name "example.txt"
#예시: 현재 디렉토리 및 하위 디렉토리에서 "hello"로 시작하는 모든 파일 찾기
find . -name "hello*"
#예시: /home/user 디렉토리에서 ".log" 확장자를 가진 모든 파일 찾기
find /home/user -name "*.log"
find -type f -name "filename.txt"  #파일만 검색