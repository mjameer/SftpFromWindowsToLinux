echo off
echo ****************************************************************************
echo %date% : %time%
set InputFile=%1

rem filename is required
IF %InputFile%.==. (
echo Input filename is a required parameter
exit 1
)

rem filename must exist
IF NOT EXIST %InputFile% (
echo  Error file-name: %InputFile% does not exist
echo on
exit 1
)

%AppHome%\winscp\winscp /script=%AppHome%\script\sftp.dat /parameter %InputFile%
if %errorlevel% neq 0 ( set returncode=1 ) else ( set returncode=0 )
echo Return:%returncode% 
exit %returncode%

