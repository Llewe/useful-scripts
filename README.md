# useful-scripts
collection of scripts i use

---
1. [yt-dl](#yt-dl)
1. [jasypt](#jasypt)

---
## yt-dl
The script will help you to download a video, move it in a folder and save the source of the video in a text file.
### Issues
* video can have an name which is not supported by the file system
### Requirements
You must have youtube-dl installed.

### How to use
To start the script
```sh
sh video-downloader.sh -l "full-video-link" 
```
At there aren't other options, but you have to provide the `-l` flag.

1) The script will use youtube-dl to tell you about the available video qualities.
2) You have to enter a quality.
3) Youtube-dl will download the file in a folder named like the Video (careful with file names not supported by the filesystem).
4) The Script will create a file named release.txt in the video folder. The link you provided for starting the script will be placed in this file


##jasypt
Encrypt and decrypt client secrets. It can be usefull if you want to encrypt api keys and similar in applications (e.g: [spring-boot-setup](https://medium.com/@sun30nil/how-to-secure-secrets-and-passwords-in-springboot-90c952961d9)).
### Requirements
Jaypt must be installed (check the version in the script file).
The scripts are setup to run with the version installed by maven (in ".m2" folder)
### Encrypt
```
jasypt-e.bat
```
1) input the string you want to encrypt
2) enter your encryption password/key

### Decrypt
```
jasypt-d.bat
```
1) input the encrypted string you want to decrypt
2) enter your encryption password/key

