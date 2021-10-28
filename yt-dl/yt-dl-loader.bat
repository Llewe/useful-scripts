@echo off

::download a video with youtube-dl
::0) imput link
::1) select best quality
::2) create folder with the video name
::3) create file release.txt with the download link
::4) download video
:: i use the yt-dl option -4 because i had problems with my ipv6


set /p link="please enter the link: "

youtube-dl -4 -F %link%

echo "";
set /p quality="please enter the quality you want: "


echo selected quality: %quality%

for /f "delims=" %%a in ('youtube-dl -4 --get-filename -o "%%(title)s" -f %quality% "%link%"') do @set title=%%a

echo %title%

youtube-dl -4 -f %quality% -o "./%title%/%%(title)s.%%(ext)s" %link%

(echo %link%) > ".\%title%\release.txt"



