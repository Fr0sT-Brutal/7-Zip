:: Script to build 7Zip using VS 10.0
::   %1 - [optional] if == "rebuild", a full rebuild is executed
::   %2 - [optional] if == "x64", will build binaries for x64 arch

@ECHO OFF

SETLOCAL

SET VCVars=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat

:: ~~ Run ~~

CD CPP\7zip || GOTO :Err
:: Cleanup
IF .%1.==.rebuild. (
	DEL /Q /S *.exe *.dll *.obj *.lib *.exp *.res *.pch *.asm || GOTO :Err
	SHIFT
)

:: Build
IF .%1.==.x64. (
	SET Nmake_CPU=CPU=AMD64
	SET VCVarsCPU=amd64
)

CALL "%VCVars%" %VCVarsCPU% || GOTO :Err

CALL nmake %CPU% NEW_COMPILER=1 MY_STATIC_LINK=1 || GOTO :Err

GOTO :EOF

:Err
PAUSE