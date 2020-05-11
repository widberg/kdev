@echo off

set cmds_dir=%~dp0cmds\
shift

set cmd=%~0

set args=
:while
	shift
	if [%~0] == [] goto continue
	set args=%args% "%~0"
	goto while
:continue

if [%cmd%] == [] (
	set cmd=dev
)

for %%i in ("%cmds_dir%*.cmd") do (
	if [%cmd%] == [%%~ni] (
		call "%%i" %args%
		exit /b
	)
)

echo "No command named %cmd%"
