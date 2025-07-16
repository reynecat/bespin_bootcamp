PS C:\Develops\quests> pwd
Path
----
C:\Develops\quests
PS C:\Develops\quests> mkdir powershell_practice
디렉터리: C:\Develops\quests
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:47                powershell_practice
PS C:\Develops\quests> cd powershell_practice
PS C:\Develops\quests\powershell_practice> mkdir documents, images, backup, temp
디렉터리: C:\Develops\quests\powershell_practice
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:47                documents
d-----      2025-07-15   오후 4:47                images
d-----      2025-07-15   오후 4:47                backup
d-----      2025-07-15   오후 4:47                temp
PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents> ls
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents> "Hello PowerShell" > hello.txt
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> cd images
PS C:\Develops\quests\powershell_practice\images> New-Item -ItemType File -Name "빈파일"
디렉터리: C:\Develops\quests\powershell_practice\images
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:49              0 빈파일
PS C:\Develops\quests\powershell_practice\images> cd ..
PS C:\Develops\quests\powershell_practice> ls
디렉터리: C:\Develops\quests\powershell_practice
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:47                backup
d-----      2025-07-15   오후 4:47                documents
d-----      2025-07-15   오후 4:47                images
d-----      2025-07-15   오후 4:47                temp
PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents> ls
디렉터리: C:\Develops\quests\powershell_practice\documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:48             38 hello.txt
PS C:\Develops\quests\powershell_practice\documents> cat .\hello.txt
Hello PowerShell
PS C:\Develops\quests\powershell_practice\documents> ls
디렉터리: C:\Develops\quests\powershell_practice\documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:48             38 hello.txt
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> ls
디렉터리: C:\Develops\quests\powershell_practice
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:47                backup
d-----      2025-07-15   오후 4:48                documents
d-----      2025-07-15   오후 4:47                images
d-----      2025-07-15   오후 4:47                temp
PS C:\Develops\quests\powershell_practice> cp documents/hello.txt backup
PS C:\Develops\quests\powershell_practice> cp -r images/ backup
PS C:\Develops\quests\powershell_practice> cd temp
PS C:\Develops\quests\powershell_practice\temp> New-Item -ItemType File -Name "test.txt"
디렉터리: C:\Develops\quests\powershell_practice\temp
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:52              0 test.txt
PS C:\Develops\quests\powershell_practice\temp> cd ..
PS C:\Develops\quests\powershell_practice> cp  temp/test.txt documents
PS C:\Develops\quests\powershell_practice> cd doucments
cd : 'C:\Develops\quests\powershell_practice\doucments' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd doucments
+ ~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...ctice\doucments:String) [Set-Location], ItemNotFoundE
   xception
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand
PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents> mv test.txt move_file.txt
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> cd images
PS C:\Develops\quests\powershell_practice\images> ls
디렉터리: C:\Develops\quests\powershell_practice\images
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:49              0 빈파일
PS C:\Develops\quests\powershell_practice\images> mv 빈파일 picture1.jpg
PS C:\Develops\quests\powershell_practice\images> cd ..
PS C:\Develops\quests\powershell_practice> mv temp temporary
PS C:\Develops\quests\powershell_practice> rm documents/moved_file.txt
rm : 'C:\Develops\quests\powershell_practice\documents\moved_file.txt' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ rm documents/moved_file.txt
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...\moved_file.txt:String) [Remove-Item], ItemNotFoundEx
   ception
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.RemoveItemCommand
PS C:\Develops\quests\powershell_practice> ls
디렉터리: C:\Develops\quests\powershell_practice
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:51                backup
d-----      2025-07-15   오후 4:54                documents
d-----      2025-07-15   오후 4:54                images
d-----      2025-07-15   오후 4:52                temporary
PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents> rm .\move_file.txt
PS C:\Develops\quests\powershell_practice\documents> cd ..
PS C:\Develops\quests\powershell_practice> cd images
PS C:\Develops\quests\powershell_practice\images> rm .\picture1.jpg
PS C:\Develops\quests\powershell_practice\images> cd ..
PS C:\Develops\quests\powershell_practice> rm temporary
확인
C:\Develops\quests\powershell_practice\temporary의 항목에는 하위 항목이 있으며 Recurse 매개 변수를 지정하지 않았습니다.
계속하면 해당 항목과 모든 하위 항목이 제거됩니다. 계속하시겠습니까?
[Y] 예(Y)  [A] 모두 예(A)  [N] 아니요(N)  [L] 모두 아니요(L)  [S] 일시 중단(S)  [?] 도움말 (기본값은 "Y"): y
PS C:\Develops\quests\powershell_practice> rm backup
확인
C:\Develops\quests\powershell_practice\backup의 항목에는 하위 항목이 있으며 Recurse 매개 변수를 지정하지 않았습니다.
계속하면 해당 항목과 모든 하위 항목이 제거됩니다. 계속하시겠습니까?
[Y] 예(Y)  [A] 모두 예(A)  [N] 아니요(N)  [L] 모두 아니요(L)  [S] 일시 중단(S)  [?] 도움말 (기본값은 "Y"): y
