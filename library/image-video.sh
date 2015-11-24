# FFMPEG executables http://ffmpeg.zeranoe.com/builds/
# Convert VOB to MP4
ffmpeg -i E:\Videos\EDUCATIVO\VTS_01_2.VOB -c:a aac -strict experimental -vcodec mpeg4 -mbd 2 -flags +mv4+aic -trellis 2 -cmp 2 -subcmp 2 -metadata title=X output.mp4

# Create gif from Video, image magic
convert some.gif some%05d.png
ffmpeg -i some%05d.png some.avi
rm some*.png

# Create video from images
ffmpeg -f image2 -i image%d.jpg video.mpg
convert 'images.gif[0]' image.png

# Subtitle shifter http://subshifter.bitsnbites.eu/

# Conversion from SVG to PNG
inkscape -z -e __OUTPUT__.png -w 1024 -h 1024 __INPUT__.svg
