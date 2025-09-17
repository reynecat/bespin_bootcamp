~~~

~/practice/project/
├── README.md
├── src/
│   ├── main/
│   │   └── app.py
│   └── utils/
│       └── helper.py
├── docs/
│   ├── user/
│   │   └── manual.txt
│   └── dev/
│       └── api.md
├── tests/
│   ├── unit/
│   └── test_main.py
└── config/
    └── settings.conf

~~~
# 연습문제 2: 다양한 시작점에서의 상대 주소
## 2-1. 시작점 변경 실습

### 현재 위치가 ~/practice/project/docs/user/일 때:
### app.py 파일로 이동하는 상대 주소를 작성하시오.
~~~
[deft@localhost user]$ cd ../../src/main/
[deft@localhost main]$ ls
app.py
~~~
### test_main.py 파일을 상대 주소를 작성하시오.
~~~
deft@localhost user]$ cd ../../tests/
[deft@localhost tests]$ ls
test_main.py  unit
~~~
### src/utils/ 디렉토리로 이동하는 상대 주소를 작성하시오.
~~~
[deft@localhost user]$ cd ../../src/utils/
[deft@localhost utils]$ pwd
/home/deft/practice/project/src/utils
~~~

# 연습문제 3: 파일 내용 확인 및 조작
## 3-1. 상대 주소를 이용한 파일 내용 출력

### 현재 위치가 ~/practice/project/src/utils/일 때:
### 프로젝트 루트의 README.md 파일 내용을 출력하시오.
~~~
[deft@localhost utils]$ pwd
/home/deft/practice/project/src/utils
[deft@localhost utils]$ cat ../../README.md
[deft@localhost utils]$ 
~~~

### docs/user/manual.txt 파일 정보 자세히 출력하시오.
~~~
[deft@localhost utils]$ ls -l ../../docs/user/manual.txt
-rw-r--r--. 1 deft deft 0 Jul 16 16:28 ../../docs/user/manual.txt
~~~
### config/settings.conf 파일 정보 자세히 출력하시오.
~~~
[deft@localhost utils]$ ls -l ../../config/settings.conf
-rw-r--r--. 1 deft deft 0 Jul 16 16:28 ../../config/settings.conf
~~~
## 3-2. 상대 주소를 이용한 파일 생성
### 현재 위치가 ~/practice/project/src/main/일 때:
### 현재 디렉토리에 config.py 파일을 생성하고 "# Configuration module"이라는 내용을 작성하시오.
~~~
[deft@localhost main]$ pwd
/home/deft/practice/project/src/main
[deft@localhost main]$ echo "# Configuration module">config.py
[deft@localhost main]$ cat config.py
\# Configuration module
~~~

### tests/ 디렉토리에 test_app.py 파일을 생성하고 "# App test file"이라는 내용을 작성하시오
~~~
[deft@localhost tests]$ pwd
/home/deft/practice/project/tests
[deft@localhost tests]$ echo "# App test file">test_app.py
[deft@localhost tests]$ cat test_app.py
\# App test file
~~~
# 연습문제 4: 파일 복사 및 이동

## 4-1. 상대 주소를 이용한 파일 복사
### 현재 위치가 ~/practice/project/docs/dev/일 때:
### api.md 파일을 docs/user/ 디렉토리에 api_copy.md로 복사하시오.

~~~
[deft@localhost dev]$ pwd
/home/deft/practice/project/docs/dev
[deft@localhost dev]$ cp api.md ../user/api_copy.md
~~~

### src/utils/helper.py 파일을 현재 디렉토리에 복사하시오.
~~~
[deft@localhost dev]$ cp  ../../src/utils/helper.py .
~~~
### config/settings.conf 파일을 tests/unit/ 디렉토리에 복사하시오.
~~~
[deft@localhost dev]$ cp ../../config/settings.conf ../../tests/unit/
[deft@localhost dev]$ 
~~~

## 4-2. 상대 주소를 이용한 파일 이동
### 현재 위치가 ~/practice/project/tests/일 때:
### test_main.py 파일을 tests/unit/ 디렉토리로 이동하시오.
~~~
[deft@localhost tests]$ pwd
/home/deft/practice/project/tests
[deft@localhost tests]$ ls
test_app.py  test_main.py  unit
[deft@localhost tests]$ mv ./test_main.py ./unit/
~~~
### src/main/config.py 파일을 config/ 디렉토리로 이동하시오.
~~~
[deft@localhost tests]$ mv ../src/main/config.py ../config/
[deft@localhost tests]$ 
~~~

# 연습문제 5: 복합 상대 주소 활용
## 5-1. 다중 파일 조작
### 현재 위치가 ~/practice/project/일 때:
### src/main/ 디렉토리의 모든 파일을 docs/dev/ 디렉토리에 복사하시오.
~~~
[deft@localhost project]$ cp ./src/main/* ./docs/dev/
~~~

### docs/user/ 디렉토리의 모든 파일을 tests/unit/ 디렉토리로 이동하시오.
~~~
[deft@localhost project]$ mv ./docs/user/* ./tests/unit/
~~~

### config/ 디렉토리 전체를 backup_config/로 복사하시오.
~~~
[deft@localhost project]$ cp -r ./config/ ./backup_config/
~~~

# 연습문제 6: 에러 찾기 및 수정
## 6-1. 잘못된 상대 주소 찾기
### 현재 위치가 ~/practice/project/docs/user/일 때, 다음 명령어들 중 에러가 있는 것을 찾고 올바른 명령어로 수정하시오:

~~~
# A
ls ../../../project/src/main/

수정 후 
ls ../../src/main


# B
cat ../../src/utils/helper.py

문제 오류 없음

# C
cd ../dev/../../config/

수정 후
cd ../../config/

# D
cp manual.txt ../../tests/unit/backup.txt

문제 없음

# E
mv api_copy.md ../../../src/main/

수정 후
mv ../dev/api.md ../../src/main

~~~ 

## 6-2. 경로 최적화
### 다음 상대 주소를 더 간단하게 경로를 최적화하시오: (cat 명령어 사용)

~~~

현재 위치: ~/practice/project/tests/unit/

../../src/main/../utils/helper.py

-> cat ../../src/utils/helper.py

../../docs/user/../dev/api.md

-> cat ../../docs/dev/api.md

../../config/../README.md

-> cat ../../README.md
~~~

# 연습문제 7: 종합 실습
## 7-1. 프로젝트 구조 재정리
### 현재 위치가 ~/practice/project/일 때, 다음 작업을 수행하시오:
### src/main/ 디렉토리에 models/ 하위 디렉토리를 생성하시오.
~~~
[deft@localhost project]$ mkdir ./src/main/models/
~~~

### docs/ 디렉토리에 README.md 파일을 생성하고 "# Project Documentation"이라는 내용을 작성하시오.
~~~
[deft@localhost project]$ echo "# Project Documentation">docs/READ.md
~~~

### tests/unit/ 디렉토리의 모든 파일을 tests/ 디렉토리로 이동하시오.
~~~
deft@localhost project]$ mv ./tests/unit/* ./tests
~~~

### config/ 디렉토리의 모든 파일을 src/ 디렉토리에 복사하시오.
~~~
[deft@localhost project]$ cp ./config/* ./src/
~~~

## 7-2. 백업 및 정리
### 현재 위치가 ~/practice/project/src/main/일 때:
### 전체 프로젝트를 ../../project_backup/으로 복사하시오.
~~~
[deft@localhost main]$ cp -r ../../../project ../../project_backup/
cp: cannot copy a directory, '../../../project', into itself, '../../project_backup/'
~~~

### utils/ 디렉토리의 모든 .py 파일을 현재 디렉토리의 models/ 디렉토리로 복사하시오.
~~~
[deft@localhost main]$ cp ../utils/*.py ./models/
~~~

### 프로젝트 루트의 README.md 파일을 현재 디렉토리에 PROJECT_INFO.md로 복사하시오.
~~~
[deft@localhost main]$ cp ../../README.md ./PROJECT_INFO.md
~~~
