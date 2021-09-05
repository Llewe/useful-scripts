#!/bin/bash

#download a video with youtube-dl
#1) select best quality
#2) create folder with the video name
#3) create file release.txt with the download link
#4) download video
# i use the yt-dl option -4 because i had problems with my ipv6

while getopts l: flag
do
    case "${flag}" in
        l) link=${OPTARG};;
    esac
done

if [ -z ${link+x} ]; then echo "parameter: -l 'link' is missing -> exit"; exit 1; fi

youtube-dl -4 -F $link;

echo "";
echo "please enter the quality you want"

read quality

echo "selected quality: $quality";

title=$(youtube-dl -4 --get-filename -o "%(title)s" $link -f $quality);

youtube-dl -4 -f $quality -o "./$title/%(title)s.%(ext)s" $link;

releaseTxt=./"${title}/release.txt";
mkdir ./"${title}";
echo "$link" > $releaseTxt;



