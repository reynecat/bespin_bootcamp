1번 문제

PS C:\Develops\quests> pwd
Path
----
C:\Develops\quests
PS C:\Develops\quests> cd ~
PS C:\Users\Administrator> cd \
PS C:\> cd ~
PS C:\Users\Administrator> ls
디렉터리: C:\Users\Administrator
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-14   오후 2:27                .docker
d-----      2025-06-11   오후 5:48                .ms-ad
d-----      2024-12-09  오전 10:40                .thumbnails
d-----      2025-07-14  오전 11:56                .vscode
d-r---      2025-06-11   오후 5:43                3D Objects
d-r---      2025-06-11   오후 5:43                Contacts
d-r---      2025-07-15  오전 11:04                Desktop
d-r---      2025-07-14   오후 2:40                Documents
d-r---      2025-07-15  오전 11:04                Downloads
d-r---      2025-06-11   오후 5:43                Favorites
d-r---      2025-06-11   오후 5:43                Links
d-r---      2025-06-11   오후 5:43                Music
d-r---      2023-11-07  오전 10:00                OneDrive
d-r---      2025-07-14   오후 2:34                Pictures
d-r---      2025-06-11   오후 5:43                Saved Games
d-r---      2025-06-11   오후 5:43                Searches
d-r---      2025-06-13   오전 9:41                Videos

2번 문제

PS C:\quests\pracitce> mkdir practice
디렉터리: C:\quests\pracitce
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:24                practice

PS C:\quests\pracitce> mkdir documents
디렉터리: C: \quests\pracitce
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:15                documents

PS C:\quests\pracitce> mkdir images, backup
디렉터리: C:\Develops\quests
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:15                images
d-----      2025-07-15   오후 4:15                backup

PS C:\quests\pracitce> cd documents
PS C:\quests\pracitce\documents> mkdir reports, notes
디렉터리: C:\quests\pracitce\documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:15                reports
d-----      2025-07-15   오후 4:15                notes

PS C:\quests\pracitce\documents> "Hello Linux!" > readme.txt
PS C:\quests\pracitce\documents> cd notes
PS C:\quests\pracitce\documents\notes> "Linux 명령어 연습중" > memo.txt

3번 문제

PS C:\Develops\quests> cat practice\documents\readme.txt
Hello Linux!
PS C:\Develops\quests> cat practice\documents\notes\memo.txt
Linux 명령어 연습중
PS C:\Develops\quests> cp practice\documents\readme.txt practice\backup\
PS C:\Develops\quests> cp -r practice\documents practice\backup\

4번 문제
PS C:\Develops\quests> mv practice\documents\notes\memo.txt practice\documents\
PS C:\Develops\quests> mv practice\images practice\media
PS C:\Develops\quests> cd practice\documents
PS C:\Develops\quests\practice\documents> mv readme.txt introduction.txt
PS C:\Develops\quests\practice\documents> cd notes
PS C:\Develops\quests\practice\documents\notes> ls
PS C:\Develops\quests\practice\documents\notes> cd ..
PS C:\Develops\quests\practice\documents> ls
디렉터리: C:\Develops\quests\practice\documents
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:29                notes
d-----      2025-07-15   오후 4:15                reports
-a----      2025-07-15   오후 4:16             30 introduction.txt
-a----      2025-07-15   오후 4:16             32 memo.txt
PS C:\Develops\quests\practice\documents> mv memo.txt study_notes.txt

5번 문제
PS C:\Develops\quests> mkdir my_project
디렉터리: C:\Develops\quests
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:34                my_project
PS C:\Develops\quests> mkdir my_project\src
디렉터리: C:\Develops\quests\my_project
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:34                src
PS C:\Develops\quests> mkdir my_project\docs
디렉터리: C:\Develops\quests\my_project
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:34                docs
PS C:\Develops\quests> mkdir my_project\tests
디렉터리: C:\Develops\quests\my_project
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:34                tests
PS C:\Develops\quests> mkdir my_project\config
디렉터리: C:\Develops\quests\my_project
Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:34                config
PS C:\Develops\quests> cd my_project\src
PS C:\Develops\quests\my_project\src> "# Main Python File" > main.py
PS C:\Develops\quests\my_project\src> cd ..\docs
PS C:\Develops\quests\my_project\docs> "# My Project Documentation" > README.md
PS C:\Develops\quests\my_project\docs> cd ..\config
PS C:\Develops\quests\my_project\config> "# Configuration File" > settings.conf
PS C:\Develops\quests\my_project\config> cd ..\..
PS C:\Develops\quests> cp -r my_project my_project_backup
PS C:\Develops\quests> cd my_project\src
PS C:\Develops\quests\my_project\src> mv main.py app.py
PS C:\Develops\quests\my_project\src> cd ..\..
PS C:\Develops\quests> mv my_project\docs\README.md my_project\
PS C:\Develops\quests>