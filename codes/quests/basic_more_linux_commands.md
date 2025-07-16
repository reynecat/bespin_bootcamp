[deft@localhost ~]$ pwd
/home/deft
[deft@localhost ~]$ cd ~
[deft@localhost ~]$ cd /
[deft@localhost /]$ cd ~
[deft@localhost ~]$ ls
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
[deft@localhost ~]$ ls -la
total 20
drwx------. 14 deft deft 4096 Jul 16 10:58 .
drwxr-xr-x.  3 root root   18 Jul 16 10:53 ..
-rw-r--r--.  1 deft deft   18 Apr 30  2024 .bash_logout
-rw-r--r--.  1 deft deft  141 Apr 30  2024 .bash_profile
-rw-r--r--.  1 deft deft  492 Apr 30  2024 .bashrc
drwx------.  7 deft deft  179 Jul 16 10:53 .cache
drwxr-xr-x.  8 deft deft 4096 Jul 16 10:53 .config
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Desktop
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Documents
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Downloads
drwx------.  4 deft deft   32 Jul 16 10:53 .local
drwxr-xr-x.  4 deft deft   39 Jul 16 10:14 .mozilla
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Music
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Pictures
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Public
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Templates
drwxr-xr-x.  2 deft deft    6 Jul 16 10:53 Videos
[deft@localhost ~]$ cd etc
bash: cd: etc: No such file or directory
[deft@localhost ~]$ cd /etc
[deft@localhost etc]$ ls
accountsservice          firewalld       makedumpfile.conf.sample  samba
adjtime                  flatpak         man_db.conf               sane.d
aliases                  fonts           mcelog                    sasl2
alsa                     foomatic        microcode_ctl             security
alternatives             fprintd.conf    mime.types                selinux
anacrontab               fstab           mke2fs.conf               services
appstream.conf           fuse.conf       modprobe.d                sestatus.conf
asound.conf              fwupd           modules-load.d            setroubleshoot
at.deny                  gcrypt          motd                      sgml
audit                    gdm             motd.d                    shadow
authselect               geoclue         mtab                      shadow-
avahi                    glvnd           multipath                 shells
bash_completion.d        gnupg           nanorc                    skel
bashrc                   GREP_COLORS     netconfig                 smartmontools
bindresvport.blacklist   groff           NetworkManager            sos
binfmt.d                 group           networks                  speech-dispatcher
bluetooth                group-          nftables                  ssh
brlapi.key               grub2.cfg       nsswitch.conf             ssl
brltty                   grub.d          nsswitch.conf.bak         sssd
brltty.conf              gshadow         nvme                      statetab.d
chromium                 gshadow-        openldap                  subgid
chrony.conf              gss             opt                       subgid-
chrony.keys              host.conf       os-release                subuid
cifs-utils               hostname        ostree                    subuid-
cockpit                  hosts           PackageKit                sudo.conf
containers               hp              pam.d                     sudoers
cron.d                   inittab         papersize                 sudoers.d
cron.daily               inputrc         passwd                    sudo-ldap.conf
cron.deny                iscsi           passwd-                   sysconfig
cron.hourly              issue           pbm2ppa.conf              sysctl.conf
cron.monthly             issue.d         pinforc                   sysctl.d
crontab                  issue.net       pkcs11                    systemd
cron.weekly              kdump           pkgconfig                 system-release
crypto-policies          kdump.conf      pki                       system-release-cpe
crypttab                 kernel          plymouth                  terminfo
csh.cshrc                keys            pm                        tmpfiles.d
csh.login                keyutils        pnm2ppa.conf              tpm2-tss
cups                     krb5.conf       polkit-1                  trusted-key.key
cupshelpers              krb5.conf.d     popt.d                    tuned
dbus-1                   ld.so.cache     printcap                  udev
dconf                    ld.so.conf      profile                   udisks2
debuginfod               ld.so.conf.d    profile.d                 updatedb.conf
default                  libaudit.conf   protocols                 UPower
depmod.d                 libblockdev     pulse                     usb_modeswitch.conf
dhcp                     libibverbs.d    qemu-ga                   vconsole.conf
DIR_COLORS               libnl           ras                       vimrc
DIR_COLORS.lightbgcolor  libpaper.d      rc.d                      virc
dnf                      libreport       rc.local                  vmware-tools
dnsmasq.conf             libssh          redhat-release            vulkan
dnsmasq.d                libuser.conf    request-key.conf          wgetrc
dracut.conf              locale.conf     request-key.d             wireplumber
dracut.conf.d            localtime       resolv.conf               wpa_supplicant
egl                      login.defs      rocky-release             X11
enscript.cfg             logrotate.conf  rocky-release-upstream    xattr.conf
environment              logrotate.d     rpc                       xdg
ethertypes               lsm             rpm                       xml
exports                  lvm             rsyncd.conf               yum
favicon.png              machine-id      rsyslog.conf              yum.conf
filesystems              magic           rsyslog.d                 yum.repos.d
firefox                  mailcap         rwtab.d
[deft@localhost etc]$ cd ~
[deft@localhost ~]$ mkdir practice
[deft@localhost ~]$ cd practice
[deft@localhost practice]$ mkdir documents images backup
[deft@localhost practice]$ cd documents
[deft@localhost documents]$ mkdir reports notes
[deft@localhost documents]$ "Hello Linux!" > read.txt
bash: Hello Linux!: command not found...
[deft@localhost documents]$ "Hello Linux!">read.txt
bash: Hello Linux!: command not found...
[deft@localhost documents]$ echo "Hello Linux!">read.txt
[deft@localhost documents]$ cd notes
[deft@localhost notes]$ echo "Linux">memo.txt
[deft@localhost notes]$ cd ..
[deft@localhost documents]$ cat readme.txt
cat: readme.txt: No such file or directory
[deft@localhost documents]$ ls
notes  read.txt  reports
[deft@localhost documents]$ cat read.txt
Hello Linux!
[deft@localhost documents]$ cd notes
[deft@localhost notes]$ cat memo.txt
Linux
[deft@localhost notes]$ cd ..
[deft@localhost documents]$ cd ..
[deft@localhost practice]$ mv /notes/memo.txt /documents
mv: cannot stat '/notes/memo.txt': No such file or directory
[deft@localhost practice]$ mv \notesmemo.txt /documents
mv: cannot stat 'notesmemo.txt': No such file or directory
[deft@localhost practice]$ mv \notes\memo.txt \documents
mv: cannot stat 'notesmemo.txt': No such file or directory
[deft@localhost practice]$ mv notes\memo.txt documents
mv: cannot stat 'notesmemo.txt': No such file or directory
[deft@localhost practice]$ mv documents\notes\memo.txt documents\
> 
mv: cannot stat 'documentsnotesmemo.txt': No such file or directory
[deft@localhost practice]$ mv documents/notes/memo.txt documents/
[deft@localhost practice]$ mv images media
[deft@localhost practice]$ cd documents
[deft@localhost documents]$ ls
memo.txt  notes  read.txt  reports
[deft@localhost documents]$ mv readme.txt introdcution.txt
mv: cannot stat 'readme.txt': No such file or directory
[deft@localhost documents]$ mv read.txt introdcution.txt
[deft@localhost documents]$ mv memo.txt study_notes.txt
[deft@localhost documents]$ cd ~
[deft@localhost ~]$ mkdir my_projects
[deft@localhost ~]$ cd 
.cache/      Documents/   .mozilla/    Pictures/    Templates/   
.config/     Downloads/   Music/       practice/    Videos/      
Desktop/     .local/      my_projects/ Public/      
[deft@localhost ~]$ cd my_projects
[deft@localhost my_projects]$ mkdir src docs tests config
[deft@localhost my_projects]$ cd src
[deft@localhost src]$ echo "#Main Python File">main.py
[deft@localhost src]$ cd ..
[deft@localhost my_projects]$ cd docs
[deft@localhost docs]$ echo "My Project Documentation">README.md
[deft@localhost docs]$ cd ..
[deft@localhost my_projects]$ cd config
[deft@localhost config]$ echo "Configuration File">settings.conf
[deft@localhost config]$ cd ..
[deft@localhost my_projects]$ cd ..
[deft@localhost ~]$ cp my_prject my_project_backup
cp: cannot stat 'my_prject': No such file or directory
[deft@localhost ~]$ cp my_prjects my_project_backup
cp: cannot stat 'my_prjects': No such file or directory
[deft@localhost ~]$ cp my_prject_backup my_projects
cp: cannot stat 'my_prject_backup': No such file or directory
[deft@localhost ~]$ mkdir my_project_backup
[deft@localhost ~]$ cp my_prjects my_project_backup
cp: cannot stat 'my_prjects': No such file or directory
[deft@localhost ~]$ cp my_projects my_project_backup
cp: -r not specified; omitting directory 'my_projects'
[deft@localhost ~]$ cp -r my_projects my_project_backup
[deft@localhost ~]$ cd my_projects
[deft@localhost my_projects]$ mv src/main.py src/app.py
[deft@localhost my_projects]$ mv docs/READ.md .
mv: cannot stat 'docs/READ.md': No such file or directory
[deft@localhost my_projects]$ ls
config  docs  src  tests
[deft@localhost my_projects]$ cddocs
bash: cddocs: command not found...
[deft@localhost my_projects]$ cd docs
[deft@localhost docs]$ ls
README.md
[deft@localhost docs]$ cd ..
[deft@localhost my_projects]$ mv docs/README.md .
[deft@localhost my_projects]$ LS
bash: LS: command not found...
Similar command is: 'ls'
[deft@localhost my_projects]$ ls
config  docs  README.md  src  tests

~~연습문제 1: 기본 파일 시스템 탐색
1-1. 현재 위치 확인 및 이동
현재 작업 디렉터pw리의 절대 경로를 출력하시오.
홈 디렉터리로 이동하시오.
루트 디렉터리(/)로 이동하시오.
다시 홈 디렉터리로 돌아가시오.
1-2. 디렉터리 내용 확인
현재 디렉터리의 파일과 폴더 목록을 출력하시오
숨김 파일을 포함한 모든 파일의 상세 정보를 출력하시오.
/etc 디렉터리의 내용을 확인하시오.
연습문제 2: 디렉터리 및 파일 생성
2-1.  디렉터리 구조 생성
다음과 같은 디렉터리 구조를 생성하시오:
practice/

├── documents/
│   ├── reports/ls
│   └── notes/
├── images/
└── backup/””
2-2. 파일 생성 및 내용 작성
practice/documents/ 디렉터리에 readme.txt 파일을 생성하고 "Hello Linux!"라는 내용을 작성하시오.
practice/notes/ 디렉터리에 memo.txt 파일을 생성하고 "Linux 명령어 연습 중"이라는 내용을 작성하시오.
연습문제 3: 파일 내용 확인 및 조작
3-1. 파일 내용 출력
앞서 생성한 readme.txt 파일의 내용을 출력하시오.
memo.txt 파일의 내용을 출력하시오.
3-2. 파일 복사
readme.txt 파일을 backup/ 디렉터리에 복사하시오.
documents/ 디렉터리 전체를 backup/ 디렉터리에 복사하시오.
연습문제 4: 파일 이동 및 이름 변경
4-1. 파일 이동
memo.txt 파일을 documents/ 디렉터리로 이동하시오.
images/ 디렉터리를 practice/media/로 이름을 변경하시오.
4-2. 파일 이름 변경
readme.txt를 introduction.txt로 이름을 변경하시오.
memo.txt를 study_notes.txt로 이름을 변경하시오.
연습문제 5: 종합 실습
5-1. 프로젝트 디렉터리 생성
다음 요구사항에 따라 프로젝트 디렉터리를 생성하시오:
my_project/라는 최상위 디렉터리 생성
하위에 src/, docs/, tests/, config/ 디렉터리 생성
src/ 디렉터리에 main.py 파일 생성 (내용: "# Main Python File")
docs/ 디렉터리에 README.md 파일 생성 (내용: "# My Project Documentation")
config/ 디렉터리에 settings.conf 파일 생성 (내용: "# Configuration File")
5-2. 백업 및 정리
전체 my_project/ 디렉터리를 my_project_backup/으로 복사하시오.
my_project/src/main.py 파일을 my_project/src/app.py로 이름을 변경하시오.
my_project/docs/README.md 파일을 my_project/ 디렉터리로 이동하시오.