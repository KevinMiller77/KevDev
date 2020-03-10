@echo off

if not "%Platform%"=="x86" call scripts\setup_cl.bat x86

REM TOOD(Adin): Turn off _CRT_SECURE_NO_WARNINGS

setlocal
set COMPILE_FLAGS=/nologo /diagnostics:caret /Zi /W0 /WX /EHsc /MP
set WARNS_DISABLE= /wd4201
set DEFINES=/DGLEW_BUILD=GLEW_STATIC /D_CRT_SECURE_NO_WARNINGS /DWIN32
set INCLUDE_PATH=/I..\include
set LIBRARY_PATH=/libpath:..\lib
set LIBRARIES=glew32s.lib user32.lib gdi32.lib opengl32.lib FreeImaged.lib FreeImageLib.lib freetype.lib TLETC_WIN32.lib 

set TARGETS=../src/KevGame.cpp

if not exist "bin\" mkdir bin

pushd bin

echo.
echo Compiling:
echo -------

REM Normal build
cl %COMPILE_FLAGS% %INCLUDE_PATH% %WARNS_DISABLE% %DEFINES% %TARGETS% /link /OUT:KevGame.exe /SUBSYSTEM:WINDOWS %LIBRARY_PATH% %LIBRARIES%
)

echo.
popd