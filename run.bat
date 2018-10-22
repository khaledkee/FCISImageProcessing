@echo off

set OCT_HOME=%1
if OCT_HOME=="" (
	OCT_HOME=C:\Octave\Octave-4.4.0
)
set "PATH=%OCT_HOME%\bin;%PATH%"

set SCRIPTS_DIR=%~dp0
start octave-cli.exe --eval "cd(getenv('SCRIPTS_DIR')); main; quit;"