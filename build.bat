:: Script to build 7Zip using VS 10.0
::   %1 - [optional] if == "rebuild", a full rebuild is executed

@ECHO OFF

SETLOCAL

SET VCVars=C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat

CALL "%VCVars%" || GOTO :Err
CD CPP\7zip || GOTO :Err
:: Cleanup
IF (.%1.==.rebuild.) (
	DEL /Q /S *.exe *.dll *.obj *.lib *.exp *.res *.pch *.asm || GOTO :Err
)
:: Build
CALL nmake NEW_COMPILER=1 MY_STATIC_LINK=1 || GOTO :Err

GOTO :EOF

:Err
PAUSE