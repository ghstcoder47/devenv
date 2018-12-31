@ECHO OFF

REM version 490
set ECLIPSE_VERSION=jee-2018-09

call bin/runEclipse jakarta %ECLIPSE_VERSION%
start CMD /K "cd ../GIT "