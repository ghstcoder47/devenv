@ECHO OFF

call bin/setENV_default


set BASE_WORKSPACE_DIR=%~dp0..\..\workspace

IF %1x == "x" (

	set WORKSPACE="%BASE_WORKSPACE_DIR%/default"
) else (	

	set WORKSPACE=%BASE_WORKSPACE_DIR%/%1
)

IF %2x == "x" (
	set ECLIPSE_VERSION=jee-2018-09
)

set ECLIPSE_HOME=%DEV_TOOLS_DIR%/eclipse/%ECLIPSE_VERSION%

REM https://help.eclipse.org/kepler/index.jsp?topic=/org.eclipse.platform.doc.user/tasks/running_eclipse.htm

start %ECLIPSE_HOME%/eclipse -clean -consolelog -refresh -data %WORKSPACE% -vm %JAVA_HOME%/jre/bin/javaw
REM -vmargs -Xmx2048m
REM start CMD /K "cd ../GIT "