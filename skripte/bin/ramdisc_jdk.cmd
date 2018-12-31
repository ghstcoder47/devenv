@echo Placing JDK on Virtual Disk N:/
@echo off
sc config imdisk start= auto
net start imdisk
imdisk -a -t -vm -s 300m -m -n:
format n: /q /Y
call xcopy C:\Users\hahdeDawJan\DEV\tools\java\jdk-8\jdk-8u181 N:\jdk-8u181\ /S /E /Y /Q
label n: JDK RAMDISK