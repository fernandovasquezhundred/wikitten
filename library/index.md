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

### Conversion from SVG to PNG

    inkscape -z -e __OUTPUT__.png -w 1024 -h 1024 __INPUT__.svg
    inkscape -z -e test.png -w 1024 -h 1024 test.svg
    inkscape -f file.svg -A file.pdf

