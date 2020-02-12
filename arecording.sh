arecord -f dat  -D hw:2,0 ~/recordings/$(date +"%Y%m%d%H%M%S").wav
arecord -f S16_LE -D hw:2,0 -c 2 -r 8000 - | ffmpeg  -i - -b:a 192k /tmp/ksd0.mp3
arecord -f S16_LE -D hw:2,0 -c 2  -d 300 - | ffmpeg  -i - -b:a 192k ~/recordings/$(date +"%Y%m%d%H%M%S").mp3
arecord -f S16_LE -D hw:2,0 -c 2  - | ffmpeg  -i - -b:a 192k ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3
arecord -f S16_LE -D hw:2,0 -c 2 -r 8000 - | aplay -
arecord -r 16000 > test.wav # will got mono channel
arecord -r 16000 | ffmpeg  -i - -b:a 192k ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3
arecord -f S16_LE -D hw:0,0 -c 2 -r 16000 -  | ffmpeg  -i - -b:a 192k ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3 # from another sound card
arecord -f S16_LE -D hw:2,0 --vumeter=mono -c 2 -r 16000 -  | ffmpeg  -i - -b:a 192k -ac 1 ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3  # make the recording mono channel
arecord -d 10 -f cd -t wav  foobar.wav # get cd quality
arecord -d 1630 -f cd -t wav - | ffmpeg  -i - -b:a 192k -ac 1 ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3 # timeout = 1630 seconds
arecord -f cd -t wav - | ffmpeg  -i - -b:a 192k -ac 1 ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3 # cd quality
arecord -f cd -t wav - | ffmpeg  -i - -qscale:a 0 -ac 1 ~/recordings/$(date +"%Y%m%d%H%M%S%a").mp3 # cd quality
