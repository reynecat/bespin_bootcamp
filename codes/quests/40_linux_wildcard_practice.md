# Linux 와일드카드 실습 문제

## 기본 와일드카드 문자
- `*` : 0개 이상의 모든 문자
- `?` : 정확히 1개의 문자
- `[]` : 대괄호 안의 문자 중 하나
- `{}` : 중괄호 안의 패턴 중 하나 (brace expansion)

## 실습 환경 설정
먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:

```bash
mkdir wildcard_practice
cd wildcard_practice
touch file1.txt file2.txt file3.doc report.txt data.csv
touch test1.log test2.log error.log debug.log
touch image1.jpg image2.png photo.gif
touch backup_2024.tar backup_2023.tar config.conf
mkdir logs temp docs
```

---

## 문제 1: 기본 와일드카드 (*) 사용

### 1-1. 모든 `.txt` 파일 목록 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls *.txt
file1.txt  file2.txt  report.txt
```

### 1-2. `file`로 시작하는 모든 파일 목록 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -a file*
file1.txt  file2.txt  file3.doc
```

### 1-3. `.log`로 끝나는 모든 파일 목록 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -a *.log
debug.log  error.log  test1.log  test2.log
```

### 1-4. `backup`으로 시작하는 모든 파일을 `temp` 디렉터리로 복사
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ cp backup* temp/

```

---

## 문제 2: 단일 문자 와일드카드 (?) 사용

### 2-1. `file`로 시작하고 한 글자 숫자가 오는 `.txt` 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls file?.txt
file1.txt  file2.txt

```

### 2-2. `test`로 시작하고 한 글자 숫자가 오는 `.log` 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls test?.log
test1.log  test2.log
```

### 2-3. `image`로 시작하고 한 글자 숫자가 오는 모든 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls image?*
image1.jpg  image2.png

```

---

## 문제 3: 문자 범위 ([]) 사용

### 3-1. `file1.txt`, `file2.txt`, `file3.doc` 중에서 `file1.txt`와 `file2.txt`만 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls file[12].txt
file1.txt  file2.txt

```

### 3-2. `test1.log`와 `test2.log`만 출력 (error.log, debug.log 제외)
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls test[12].log
test1.log  test2.log

```

### 3-3. 파일명이 `a`부터 `f`로 시작하는 모든 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -a [a-f]*
backup_2023.tar  config.conf  debug.log  file1.txt  file3.doc
backup_2024.tar  data.csv     error.log  file2.txt

docs:
.  ..

```

---

## 문제 4: 복합 와일드카드 활용

### 4-1. 확장자가 3글자인 모든 파일 출력 (예: .txt, .doc, .log, .jpg, .png, .gif, .tar)
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -a *.???
backup_2023.tar  debug.log  file2.txt   image2.png  test1.log
backup_2024.tar  error.log  file3.doc   photo.gif   test2.log
data.csv         file1.txt  image1.jpg  report.txt

```

### 4-2. 숫자가 포함된 모든 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -a *[0-9]*
backup_2023.tar  file1.txt  file3.doc   image2.png  test2.log
backup_2024.tar  file2.txt  image1.jpg  test1.log

```

### 4-3. `.txt` 또는 `.log` 파일만 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls *.{txt,log}
debug.log  error.log  file1.txt  file2.txt  report.txt  test1.log  test2.log

```

---

## 문제 5: 고급 와일드카드 활용

### 5-1. 파일명이 `test`로 시작하지 않는 모든 `.log` 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls !(test*).log
debug.log  error.log

```

### 5-2. 모든 이미지 파일 (jpg, png, gif)을 `docs` 디렉터리로 이동
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ mv *.{jpg,png,gif} docs/

```

### 5-3. 2023년 또는 2024년 백업 파일만 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls backup_{2023,2024}.tar
backup_2023.tar  backup_2024.tar

```

---

## 문제 6: 실전 응용

### 6-1. 확장자가 있는 모든 파일을 `temp` 디렉터리로 복사
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ cp *.* temp/

```

### 6-2. 파일명이 4글자 이하인 파일들의 상세 정보 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -l ????
docs:
total 0
-rw-r--r--. 1 deft deft 0 Jul 17 14:38 image1.jpg
-rw-r--r--. 1 deft deft 0 Jul 17 14:38 image2.png
-rw-r--r--. 1 deft deft 0 Jul 17 14:38 photo.gif

logs:
total 0

temp:
total 0
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 backup_2023.tar
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 backup_2024.tar
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 config.conf
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 data.csv
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 debug.log
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 error.log
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 file1.txt
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 file2.txt
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 file3.doc
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 report.txt
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 test1.log
-rw-r--r--. 1 deft deft 0 Jul 17 15:02 test2.log

---

## 문제 7: 디렉터리 와일드카드

### 7-1. 현재 디렉터리의 모든 하위 디렉터리 목록 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -d */
docs/  logs/  temp/

```

### 7-2. `d`로 시작하는 디렉터리만 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -d d*/
docs/

```

### 7-3. 모든 하위 디렉터리에 `readme.txt` 파일 생성
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ touch {docs,logs,temp}/readme.txt
```

---

## 문제 8: 복잡한 패턴 매칭

### 8-1. 파일명에 숫자가 정확히 1개 들어간 파일 출력
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls {file,test}*
file1.txt  file2.txt  file3.doc  test1.log  test2.log

```

### 8-2. 확장자가 `.txt`, `.doc`, `.log` 중 하나인 파일들의 크기 확인
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ ls -l *.{txt,doc,log}
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 debug.log
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 error.log
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 file1.txt
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 file2.txt
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 file3.doc
-rw-r--r--. 1 deft deft 19 Jul 17 15:22 readme.txt
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 report.txt
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 test1.log
-rw-r--r--. 1 deft deft  0 Jul 17 14:38 test2.log

```

### 8-3. 파일명이 `test` 또는 `file`로 시작하는 모든 파일 삭제 (주의: 실제로는 실행하지 말고 명령어만 작성)
```bash
# 명령어를 작성하세요
[deft@localhost wildcard_practice]$ rm -r {test,file}*

```

---



---

## 힌트
- `ls -la`로 파일 목록과 상세 정보 확인
- `echo` 명령어로 와일드카드 패턴 테스트 가능
- `find` 명령어와 와일드카드 조합 활용
- 복잡한 패턴은 단계별로 나누어 생각하기