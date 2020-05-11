set target=%~0

if [%target%] == [] (
	echo "Target is required."
	exit /b
)

set args=
:while
	shift
	if [%~0] == [] goto continue
	set args=%args% "%~0"
	goto while
:continue

.\build\%target%\Debug\%target%.exe %args%
