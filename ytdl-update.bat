@ECHO OFF

set ytdl-path="%~dp0\libs\youtube-dl"

echo "YOUTUBE-DL: Trying to update.."
%ytdl-path% -U
timeout /t 3 /nobreak > NUL
exit