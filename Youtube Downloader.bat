@echo off
clear
color 4



@
@

@echo Welcome to Easy Youtube Downloader
@
@
@echo Type 1, Video or mp4 to Download an YouTube Video as an mp4 File
@echo Type 2, Audio or mp3 to Download an YouTube Video as an m4a File, convert it to mp3 and delete the m4a File.
set /p set=
if %set% == Video goto video
if %set% == Audio goto audio
if %set% == mp4 goto video
if %set% == mp3 goto audio
if %set% == video goto video
if %set% == audio goto audio
if %set% == 1 goto video
if %set% == 2 goto audio

:beginning
clear
@echo Type 1, Video or mp4 to Download an YouTube Video as an mp4 File
@echo Type 2, Audio or mp3 to Download an YouTube Video as an m4a File, convert it to mp3 and delete the m4a File.
set /p set=
if %set% == Video goto video
if %set% == Audio goto audio
if %set% == mp4 goto video
if %set% == mp3 goto audio
if %set% == video goto video
if %set% == audio goto audio
if %set% == 1 goto video
if %set% == 2 goto audio

:close 
pause
exit

:video
clear
@echo Type the URL of the YouTube Video
set /p URL=
clear
@echo Okay! Trying to Download.
clear
@echo Okay! Trying to Download..
clear
@echo Okay! Trying to Download...
clear
@echo Okay! Trying to Download.
clear
@echo Okay! Trying to Download..
clear
youtube-dl -f "best" --format mp4 %URL%
clear
@echo If you see this, you've downloaded the Video successfully as an mp4 file. Look into the same folder, from where you started Easy YouTube Downloader!
@echo Do you want to Download again or close this Pogram?
@echo Press 1 for Download Again or
@echo Press 2 for close.
set /p ending=
if %ending% == 1 goto beginning
if %ending% == 2 goto close

:audio
clear
@echo Type the URL of the YouTube Video
set /p URL=
clear
@echo Okay! Trying to Download.
clear
@echo Okay! Trying to Download..
clear
@echo Okay! Trying to Download...
clear
@echo Okay! Trying to Download.
clear
@echo Okay! Trying to Download..
clear
youtube-dl -x --audio-format mp3 %URL%
clear
@echo If you see this, you've downloaded the Audio successfully as an mp3 file. Look into the same folder, from where you started Easy YouTube Downloader!
@echo Do you want to Download again or close this Pogram?
@echo Press 1 for Download Again or
@echo Press 2 for close.
set /p ending=
if %ending% == 1 goto beginning
if %ending% == 2 goto close