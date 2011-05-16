@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  blservermanager startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Uncomment those lines to set JVM options. BLSERVERMANAGER_OPTS and JAVA_OPTS can be used together.
@rem set BLSERVERMANAGER_OPTS=%BLSERVERMANAGER_OPTS% -Xmx512m
@rem set JAVA_OPTS=%JAVA_OPTS% -Xmx512m

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_HOME=%DIRNAME%..

@rem Find javaw.exe
set JAVA_EXE=javaw.exe
if not defined JAVA_HOME goto init

set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/javaw.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
echo.
goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line


set CLASSPATH=%APP_HOME%\lib\blservermanager.jar;%APP_HOME%\lib\logback-classic-0.9.28.jar;%APP_HOME%\lib\slf4j-api-1.6.1.jar;%APP_HOME%\lib\logback-core-0.9.28.jar;%APP_HOME%\lib\commons-configuration-1.6.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\commons-lang-2.4.jar;%APP_HOME%\lib\commons-logging-1.1.1.jar;%APP_HOME%\lib\commons-digester-1.8.jar;%APP_HOME%\lib\commons-beanutils-1.7.0.jar;%APP_HOME%\lib\commons-beanutils-core-1.8.0.jar;%APP_HOME%\lib\SwingHelperTray-390.jar;%APP_HOME%\lib\WebSocket.jar;

@rem Execute blservermanager
start "%JAVA_EXE% %JAVA_OPTS% %BLSERVERMANAGER_OPTS% -classpath "%CLASSPATH%" tk.dontcare4free.blservermanager.Main %CMD_LINE_ARGS%"

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
if not "%OS%"=="Windows_NT" echo 1 > nul | choice /n /c:1

rem Set variable BLSERVERMANAGER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%BLSERVERMANAGER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
