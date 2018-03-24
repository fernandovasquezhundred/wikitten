### In windows:

    netsh wlan show profile name="__NETWORK__" key=clear

## FFMPEG [executables](http://ffmpeg.zeranoe.com/builds/)

### Create gif from Video, image magic

    convert some.gif some%05d.png
    ffmpeg -i some%05d.png some.avi
    rm some*.png

### Create video from images

    ffmpeg -f image2 -i image%d.jpg video.mpg
    convert 'images.gif[0]' image.png

    set FOLDER=C:\Users\bufer\Downloads\Telegram Desktop\fun
    set FOLDER=D:\disk\YandexDisk\Screenshots
    set FOLDER=D:\disk\YandexDisk\images\fotos_carro
    set IMAGE=ss2
    C:\dev\imagemagic\magick.exe "%FOLDER%\%IMAGE%.png" -resize 50% "%FOLDER%\%IMAGE%_50.jpg"

### Conversion from SVG to PNG

    inkscape -z -e __OUTPUT__.png -w 1024 -h 1024 __INPUT__.svg
    inkscape -f file.svg -A file.pdf

### mp3 to ogg

    c:\dev\7Zip\ffmpeg -i test.mp3 -c:a libvorbis -b:a 64k test.ogg
    c:\dev\7Zip\fffmpeg -i toxicas.mp3 -c:a libvorbis -b:a 64k toxicas.ogg

## mp3 download

    youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=LMuu4h6RdyQ
	
## rclone

    curl https://rclone.org/install.sh | sudo bash -s beta

	~\.config\rclone
	rclone sync bkpmon: /bkp   # download
	rclone sync bkp bkpmon:    # sync upload
	rclone copy bkp bkpmon:    # only upload