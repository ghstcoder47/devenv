@ECHO OFF

REM version 490
set ECLIPSE_VERSION=jee-2018-09

call bin/runEclipse serviceportal_dev %ECLIPSE_VERSION%
REM start CMD /K "cd ../GIT "