echo off
cls
goto :start
:start
cls
echo ==========================================
echo =     w0rm remover version 0.1           =
echo =          coded by ahmad.               =
echo =        twitter: @el7amndy              =
echo =     ***** www.ahmedelq.sa *****        =
echo = Please run this tool as adminstorator. =
echo ==========================================
echo 1. Full cleaning (recommended).
echo 2. Clean pc only.
echo 3. Clean flash only.
echo 4. Show hidden files only.
echo 5. Exit.
set /P c=Choose your way
if "%c%" == "1" (
goto :full
)
if "%c%" == "2" (
goto :pc
)
if "%c%" == "3" (
goto :flash
)
if "%c%" == "4" (
goto :show
)
if "%c%" == "5" (
exit
)

:full 
taskkill /f /im wscript.exe
del %temp%\*.vbs
del %temp%\*.vbe
del %appdata%\*.vbs
del %appdata%\*.vbe
del %programdata%\*.vbs
del %programdata%\*.vbe
del %userprofile%\*.vbs
del %userprofile%\*.vbe
set /p path=  -What is your flash path e.g(i,g,h,etc..) ?
attrib -h -r -s /s /d %path%:\*.* 
echo i assume files are fine now.
del %path%:\*.lnk
del %path%:\*.vbs
del %path%:\*.vbe
echo All W0RMS REMOVED
echo Your pc is safe now. 
pause
goto :start
:pc

taskkill /f /im wscript.exe
del %temp%\*.vbs
del %temp%\*.vbe
del %appdata%\*.vbs
del %appdata%\*.vbe
del %programdata%\*.vbs
del %programdata%\*.vbe
del %userprofile%\*.vbs
del %userprofile%\*.vbe
echo Your pc is safe now. 
pause
goto :start
:flash
set /p path=  -What is your flash path e.g(i,g,h,etc..) ?
del %path%:\*.lnk
del %path%:\*.vbs
del %path%:\*.vbe
echo All W0RMS REMOVED
pause
goto :start
:show
set /p hidden= - Please enter folder path ?
attrib -h -r -s /s /d %hidden%:\*.* 
echo i assume files are fine now.

pause
goto :start



