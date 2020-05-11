set build_cmd=cmake --build build

if not [%~1] == [] (
	set build_cmd=%build_cmd% --target %~1
)

if not [%~2] == [] (
	set build_cmd=%build_cmd% --config %~2
)

%build_cmd%
