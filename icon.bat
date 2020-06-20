REM Script, that will create a shortcut for the ytdl.bat file on user's desktop

set desktop-path="%USERPROFILE%\Desktop"
set ytdl-bat="%CD%/ytdl.bat"
set ytdl-icon="%CD%/yt.ico"
set nircmd-exe="%CD%/libs/nircmd.exe"

%nircmd-exe% shortcut "%ytdl-bat%" "~$folder.desktop$" "Youtube Downloader" "" "%ytdl-icon%"