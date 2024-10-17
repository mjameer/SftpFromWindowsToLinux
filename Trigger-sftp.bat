rem usage: Trigger SFTP
echo off
rem set home directory
set AppHome=C:\sftpBatch
set InputFile="C:\sftpBatch\SourceFiles\deleteNew.txt"
set TargetFolder="/apps/sourcefiles/"
%AppHome%\script\batch %InputFile% >> %AppHome%\logs\log.txt
PAUSE
