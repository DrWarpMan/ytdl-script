@ECHO OFF

REM Edit only these two following lines:
set dl-path="%USERPROFILE%\Desktop"
set ytdl-path="%CD%/youtube-dl"

echo %ytdl-path%

:choice
set /p yturl=What YT video do you want to download?:
set /P c=Download audio only [Y/n]?
if /I "%c%" EQU "Y" goto :audioOnly
goto :videoToo

:audioOnly

echo "YOUTUBE-DL: Trying to download an audio only from YT (URL: %yturl%)"
%ytdl-path% -x --audio-format mp3 -o "%dl-path%\%%(title)s.%%(ext)s" %yturl%
goto :choice
pause
exit

:videoToo

echo "YOUTUBE-DL: Trying to download a video from YT (URL: %yturl%)"
%ytdl-path% -o "%dl-path%\%%(title)s.%%(ext)s" %yturl%
goto :choice
pause
exit
