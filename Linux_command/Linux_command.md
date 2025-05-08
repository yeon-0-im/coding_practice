# Linux Command Practice

## 1. 현재 작업 디렉토리 위치 확인 (`pwd`)
```bash
$ pwd
/c/Users/Username
```
- `pwd`: 현재 디렉토리 경로를 출력합니다.

## 2. 디렉토리 생성 (`mkdir`)
```bash
$ mkdir practice
```
- `mkdir [디렉토리명]`: 새 디렉토리를 생성합니다.

## 3. 파일 및 디렉토리 목록 보기 (`ls`, `ls -a`, `grep`)
```bash
$ ls
# 일반 목록 출력

$ ls -a
# 숨김 파일(‘.’로 시작) 포함 모두 출력

$ ls | grep practice
practice/
# 'practice' 문자열이 포함된 항목만 필터링하여 출력
```
- `ls`: 현재 디렉토리의 파일 및 디렉토리를 나열합니다.
- `ls -a`: 숨김 파일을 포함하여 모두 출력합니다.
- `| grep [패턴]`: 파이프를 통해 앞 명령 결과에서 특정 문자열을 포함한 라인만 출력합니다.

## 4. 디렉토리 이동 (`cd`)
```bash
$ cd practice
```
- `cd [경로]`: 지정한 디렉토리로 이동합니다.

## 5. 파일·디렉토리 생성 및 삭제
```bash
$ mkdir practice2       # practice 내에 practice2 디렉토리 생성
$ touch example.py      # 빈 파일(example.py) 생성
$ ls                   # 생성된 파일/디렉토리 확인
example.py  practice2/

$ rm -rf example.py     # example.py 파일 강제 삭제
# sudo 사용 시 권한 관련 메시지 발생할 수 있음

$ rm -rf practice2      # practice2 디렉토리와 그 안의 내용 삭제
```
- `touch [파일명]`: 빈 파일을 생성합니다.
- `rm -rf [경로]`: 경로의 파일 또는 디렉토리를 강제로(recursive) 삭제합니다.

## 6. 파일 이동 및 이름 변경 (`mv`)
```bash
$ touch example.sql            # practice2 디렉토리 내 파일 생성
$ mv example.sql practice2    # example.sql을 practice2 디렉토리로 이동
```
- `mv [원본] [대상]`: 파일/디렉토리를 이동하거나 이름을 변경합니다.

## 7. 파일 내용 확인 (`cat`)
```bash
$ cat example.py
# example.py 파일 내용 출력

$ cat 1.txt
안녕하세요

$ cat 2.txt
Hello World
```
- `cat [파일명]`: 파일 내용을 터미널에 출력합니다.

## 8. 텍스트 편집 (`vim` / `vi`)
```bash
$ vim example.py
$ vi 1.txt
```
- `vim`, `vi`: 터미널 기반 텍스트 편집기를 실행하여 파일을 수정할 수 있습니다.