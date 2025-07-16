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