#
[cloud0@localhost ~]$ pwd
/home/cloud0
[cloud0@localhost ~]$ cd /home/cloud0/다운로드
[cloud0@localhost 다운로드]$ pwd
/home/cloud0/다운로드
[cloud0@localhost 다운로드]$ ls
[cloud0@localhost 다운로드]$ ^C
bash: :s^C: substitution failed
[cloud0@localhost 다운로드]$ cd ..
[cloud0@localhost ~]$ ls
공개  다운로드  문서  바탕화면  비디오  사진  서식  음악
[cloud0@localhost ~]$ cd /home/cloud0/음악
[cloud0@localhost 음악]$ LS
bash: LS: 명령을 찾을 수 없습니다...
유사한 명령: 'ls'
[cloud0@localhost 음악]$ ls
[cloud0@localhost 음악]$ cd ..
[cloud0@localhost ~]$ ls
공개  다운로드  문서  바탕화면  비디오  사진  서식  음악
[cloud0@localhost ~]$ cd 사진
[cloud0@localhost 사진]$ ls
[cloud0@localhost 사진]$ pwd
/home/cloud0/사진
[cloud0@localhost 사진]$ 

// cd는 디렉토리를 들어가는 명령어, ls 폴더 안의 파일들 보여주는 명령어, pwd는 현재 위치를 보여주는 명령어
