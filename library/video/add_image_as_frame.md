ffmpeg -i input.mp4 -i intor.png -filter_complex "[0:v][1:v] overlay=10:10:enable='between(t,1,2)'" output.mp4