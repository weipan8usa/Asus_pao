#ffmpeg -i title00.mkv -map 0:0 -map 0:3 -map 0:4 -scodec ass -vcodec copy -acodec libmp3lame la_traviata.mp4
#ffmpeg -i Anna_Bolena_t01.mkv -r 30 -b:v 2M -bt 4M -vcodec libx264 -pass 1 -c:a libfaac -ac 2 -ar 48000 -ab 192k Anna_Bolena_t01.mp4 
#ffmpeg -i DON_PASQUALE_t01.mkv -r 30 -b:v 2M -bt 4M -vcodec libx264 -pass 1 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s copy -f matroska Pasquale.mp4
#ffmpeg -i Seven.Samurai.1954.MULTiSUBS.1080p.BluRay.x264-HDZ.mkv  -vcodec mpeg4 -pass 1 -threads 2 -b:v 10000000  -scodec copy -map 0 -map -0:2 -map -0:4 -acodec ac3 -b:a 384000 -f matroska -y /dev/null
#fmpeg -i DON_PASQUALE_t01.mkv -r 30 -b:v 2M -bt 4M -vcodec libx264 -pass 1 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s copy -f matroska -map 0:0 -map 0:1 -map 0:5 Pasquale.mp4
#ffmpeg -ss 921.754167 -t 81.748333 -i title00.mkv -r 30 -b:v 2M -bt 4M -vcodec libx264 -pass 1 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s  copy -f matroska -map 0:0 -map 0:1 -map 0:3 Boheme.mp4
#ffmpeg  -i title00.mkv -r 30 -b:v 2M -bt 4M -vcodec libx264 -pass 1 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s  copy -f matroska -map 0:0 -map 0:1 -map 0:3 /dev/null
#ffmpeg  -i title00.mkv -r 30 -b:v 2M -bt 4M -vcodec libx264 -pass 2 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s  copy -f matroska -map 0:0 -map 0:1 -map 0:3 Boheme.mp4
#ffmpeg -i title00.mkv -r 30 -b:v 2M -bt 4M -c:v libx264 -pass 1 -f matroska -map 0:0 /dev/null
#ffmpeg -i title00.mkv -r 30 -b:v 2M -bt 4M -c:v libx264 -pass 2 -f matroska -map 0:0 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s copy  -map 0:1 -map 0:5 I_PURITANI.mp4
#ffmpeg -i title00.mkv -r 25 -s 720x480 -b:v 2M -bt 4M -c:v libx264 -pass 1 -f matroska -map 0:0 -an /dev/null
#ffmpeg -i title00.mkv -r 25 -s 720x480 -b:v 2M -bt 4M -c:v libx264 -pass 2 -f matroska -map 0:0 -c:a libfaac -ac 2 -ar 48000 -ab 192k -c:s copy -map 0:1 -map 0:5 I_PURITANI_1.mp4

# vlc -vvv input_stream --sout '#standard{access=http,mux=ogg,dst=server.example.org:8080}' # on server side
# vlc http://server.example.org:8080 # on Client side
# vlc Boheme.mp4 --sout '#standard{access=http,mux=ts,pid-spu=0:2,dst=192.168.1.90:8080}'
#vlc --sout=file/ps:go.mpg #ps mean mpg go.mpg is the file name which will store the video
#ffmpeg -i $x -f mpegts -c copy -bsf:v h264_mp4toannexb ${x%mkv}ts
#ffmpeg -i title00.mkv -s hd720 -c:v libx264 -crf 18 -c:a copy -strict -2 FAUST.mkv
#ffmpeg -i title00.mkv -map 0 -s hd720 -c:v libx264 -crf 18 -c copy -strict -2 FAUST.mkv # If we want to re-encode just the video streams, but copy all the other streams (like audio, subtitles, attachments, etc), we might use something like this: NOT WORK AS THE SEQUENCE WRONG
ffmpeg -i title00.mkv -map 0 -c copy -c:v libx264 -s hd720 -crf 18 -strict -2 FAUST.mkv # If we want to re-encode just the video streams, but copy all the other streams (like audio, subtitles, attachments, etc), we might use something like this:
ffmpeg -i title00.mkv -map 0:0 -c:v libx264 -s hd720 -crf 18 -strict -2 -map 0:1 -c:a copy -map 0:4 -c:s copy -map 0:5 -c:s copy FAUST02.mkv # selective convert and copy
ffmpeg -ss 0 -t 1856.287767 -i Lang_Lang_-_Live_in_Vienna_t02.mkv -map 0:0 -c:v libx264 -s hd720 -crf 18 -strict -2 -map 0:1 -c:a copy  Beethoven_Piano_No3_Op2.mkv # add time period
ffmpeg -ss 1856.287767 -t 3535.999133 -i Lang_Lang_-_Live_in_Vienna_t02.mkv -map 0:0 -c:v libx264 -s hd720 -crf 18 -strict -2 -map 0:1 -c:a copy  Beethoven_Piano_Appassionata.mkv
ffmpeg -i title00.mkv -c:v libx264 -crf 1 -preset superfast -level 4.1 -tune film -r 24000/1001  -weightp 2 -b-pyramid normal -slices 4  -sar 1:1  output.h264
ffmpeg -i title00.mkv -c:v libx264 -crf 1 -filter:v yadif -preset superfast -level 4.1 -tune film -r 24000/1001 -weightp 2 -b-pyramid normal -slices 4  -sar 1:1  output.h264 
ffmpeg -i DIE_JAHRESZEITEN_hd720.mkv -r 1 -t 1 -f hd1080 -ss 00:05:00 image-%d.jpeg
avconv -i omniTV201504011320.mp4 -map 0:0  -c:v copy -map 0:1 -c:a aac -strict experimental omniTV201504011320-aac.mp4
avconv -i VERDI_Il_trovatore_t01.mkv -c:v libx264 -s hd480 -c:a aac -strict experimental ERDI_Il_trovatore_r24_hd480.mp4 
avconv -i VERDI_Il_trovatore_t01.mkv -c:v libx264 -s hd480 -r 24 -c:a aac -strict experimental ERDI_Il_trovatore_r24_hd480.mp4 
avconv -ss 3600  -i VERDI_Il_trovatore_t01.mkv -t 300 -c:v libx264 -s hd480 -r 24 -crf 18 -strict 2 -filter:v "yadif" -c:a aac -strict experimental VERDI_Il_trovatore_r24_hd480.mp4
avconv -ss 3600  -i VERDI_Il_trovatore_t01.mkv -t 300 -c:v libx264 -s hd480 -r 24 -crf 18 -strict 2 -filter:v "yadif" -c:a mp3 VERDI_Il_trovatore_r24_hd480.mp4 

ffmpeg -i TownCouncil_2015291636.wav -codec:a libmp3lame -qscale:a 2 /tmp/output.mp3
#ffmpeg -i 20150806_TownCouncil_appointment_B.wav -c:a libfdk_aac -vbr 3 20150805_TownCouncil_onsite_B.m4a
#ffmpeg -i O_mio_babbino_caro.mkv -vcodec libx264 -s qvga -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -acodec copy -movflags +faststart  output1.mp4 # for iphone
#ffmpeg -i O_mio_babbino_caro.mkv  -filter_complex "[0:v][0:s]overlay[v]" -map [v] -map 0:a output3.mkv # burn in subtitle
#ffmpeg -i output3.mkv -vcodec libx264 -s {qvga|wvga} -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -acodec libmp3lame  -movflags +faststart  output3.mp4 #for iphone
#ffmpeg -ss 00:00:10.000 -i output3.mkv -vcodec libx264 -s wvga -r 18 -profile:v main -level 5.1 -preset veryslow -crf 23 -x264-params ref=4 -acodec libmp3lame -ab 128k -movflags +faststart  output5.1.mp4 # iphone size mp4

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647  -i cygnet.mkv # when got error Could not find codec parameters for stream 0 (Video: h264, none, 1280x720): unspecified pixel format Consider increasing the value for the 'analyzeduration' and 'probesize' options

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647  -i alcoh.mkv  -filter_complex "[0:v][0:s]overlay[v]" -map [v] -map 0:a -s qvga -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -acodec libmp3lame -movflags +faststart alcohBurnIn03.mp4 # burn in subtitle while convert to mp4

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647  -i /DVD/Music\ DVDs/FigaroMozart/Figaro_frani_r24_480p.mkv -ss 2386.784400 -t 246.045800  -filter_complex "[0:v][0:s]overlay[v]" -map [v] -map 0:a -s qvga -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -acodec libmp3lame -movflags +faststart Figaro23.mp4 # # burn in subtitle while convert to mp4 while cut from original source
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 544.544000 -i ~/DVD/LA_TRAVIATA_Angela/title00.mkv -t 195.195000 -filter_complex "[0:v][0:s:1]overlay[v]" -map [v] -map 0:a -s qvga -r 15 -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -acodec libmp3lame -movflags +faststart VariataAngela_Ch4_23_f.mp4 # same as above but burn 2nd subtitle
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 4064.593867 -i /DVD/Music\ DVDs/Nutcracker_r24_hd720p.mkv -t 71.581500  -s qvga -r 15  -level 3.1 -preset veryslow -crf 15 -acodec libmp3lame -movflags +faststart Nut_Ch18_15.mp4 # For BAllet no subtitle
#ffmpeg -i SwanLake_Ch23_15.mp4 -map_chapters -1 -vcodec copy -acodec copy -f mp4 out.m4v # remove charpter plus empty subtitle
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 5183.678500 -i /DVD/Music\ DVDs/SwanLake/SwanLake_r24_hd720p.mkv -t 173.540033 -s qvga -r 15 -preset veryslow -crf 25 -acodec libfdk_aac -map_chapters -1 -f mp4 SwanLake_Ch26_25_acc.mp4 #acc less compressed than mp3
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 5183.678500 -i /DVD/Music\ DVDs/SwanLake/SwanLake_r24_hd720p.mkv -t 173.540033 -f mp4 -map_chapters -1 -s qvga -r 15 SwanLake_Ch26_15_13.mp4 # no -crf =? -crf 23 ?
#ffmpeg -i Figaro23.mp4 -c:v copy -c:a libfdk_aac -map_chapters -1 Figaro23_acc.mp4  # convert audio to acc from eg mp3 & remove subtitles

ffmpeg -i kkkkkkk.avi -codec:v copy -bsf:v mjpeg2jpeg output_%03d.jpg # dismental mjpeg/mpeg2 video into jpeg pictures
#ffmpeg -i 12120077.avi -f image2  /tmp/output1_%04d.jpg #dismental/convert avi video to jpg, can convert mp4 to jpg

#ffmpeg -i Bach\ French\ Suites\ Andrs\ Schiff-x67DKDJEiwQ.mp4 -vcodec libx264 -aspect 16:9 -acodec copy -f mp4 Back_French_Suites_Andrs_Schiff_16x9.mp4 # change size
#ffmpeg -i FigaroNetrebko_r24_hd720.mkv -map_chapters -1 -map 0:v -c copy -map 0:a -c copy -map 0:s -c copy  FigaroNetrebko_r24_hd720-1.mkv # copy all except charpters

ffplay -vf "crop=in_w/3:in_h:in_w/3:in_h" VID_20161218_171215.mp4
ffmpeg -i Cover.jpg -vf "crop=480:270:0:45" Cover1.jpg #crop 480x360 to 480x270
ffmpeg -i VID_20161218_171215.mp4 -vf "crop=in_w:in_h/3:in_w:in_h/3" VID_20161218_171215_normal.mp4
ffmpeg -i title00.mkv -vf "crop=in_w*3/4:in_h:in_w/8:in_h,yadif"  -c:a copy KarajanMozartDvorak.mkv # Crop from 16:9 to 4:3 + progressive
ffplay -vf "crop=640:360:0:120" EntfuhrungAusDemSerail_Mozart_chapter_24NHD.mp4 #cut into 16x9 from 4x3 align on bottom
ffmpeg -i Saioa-Stiffelio640x480.mp4 -vf "crop=640:360:0:60" Saioa-Stiffelio640x360.mp4
ffplay -vf "transpose=1" VID_20161218_171215.mp4 #transpose=1 90clockwise
ffmpeg -i chapter_14_Come_Scoglio_R.mp4 -vf scale=240x426,setsar=1:1 chapter_14_Come_Scoglio_R_9x16.mp4 # make solid aspective not magified. 
ffmpeg -i chapter_14_Come_Scoglio_R.mp4 -vf scale=240x426,setdar=0,setsar=0 chapter_14_Come_Scoglio_R_1.mp4 # remove dar and sar info but can't reverse the sequence.
#for x in *NHD.mp4; do ffmpeg -i $x -vf "scale=480x360,setdar=0,setsar=0" ${x//.*}_1.mp4;done

ffmpeg -i file.mp3 -ar 16000 -ac 1 file.wav # for pocketsphinx_continuous -samprate 16000 -infile file.wav >file.txt
ffmpeg -i 20150805_TownCouncil_onsite_C.m4a -qscale 0 20150805_TownCouncil_onsite_C.mp3 #same quality
ffmpeg -i chapter_14.mp4 -c:v copy -ac 1 -ab 64k chapter_22_1.mp4 # make video 1 voice channal
ffmpeg -i 201702161314CourtEnquire.mp3 -qscale 0 -acodec adpcm_ima_wav 201702161314CourtEnquire.wav # adpcm_ima_wav format
ffmpeg -f concat -i input.txt -codec copy output.mp4 # concat two video "$ cat mylist.txt \n file '/path/to/file1' \n file '/path/to/file2' \n file '/path/to/file3'"
ffmpeg -f concat -safe 0 -i /tmp/txt.txt -codec copy aaa.mp4 unsafe file name
ffmpeg -i "concat:1.mp3|2.mp3" -acodec copy output.mp3
ffmpeg -i C-1.mp4 -i C-2.mp4 -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map [v] -map [a] C.mp4


mkisofs -V "PianoCD" -J -joliet-long -r -o PianoCD.iso PianoCD/  # make an iso file to burn


ffplay -ss 3600  -vf colorlevels=rimax=0.502:gimax=0.502:bimax=0.502 LaForzaDelDestino_r24_480p.mkv #adjust Hue
#ffplay -ss 1023 -vf eq=brightness=0.2:saturation=2:contrast=1  LaForzaDelDestino_r24_480p.mkv #brightness{-1,+1} default 0 saturation {0,3} default=1 contrast{-2,+2} default=0

ffmpeg  -i 20180807222229Tue.mp3  -loop 1 -i IMG_0291.JPG -s qcif  -c:v libx264  -r 1 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest out.mp4
ffmpeg -loop 1 -i 222_Sedona_Red.jpg -i Mozart-EC7890-Exsultate_jubilate_4_Alleluja_Allegro.mp3 -c:a copy -c:v libx264 -shortest kkk.mp4
ffmpeg -loop 1 -i 2.jpg -i Mozart-EC7890-Exsultate_jubilate_4_Alleluja_Allegro.mp3 -s nhd -c:v libx264 -c:a libfdk_aac  -shortest -pix_fmt yuv420p  -movflags +faststart Exsultate_jubilate_4_Alleluja.mp4 # weixin works
ffmpeg -loop 1 -i 2.jpg -i Mozart-EC7890-Exsultate_jubilate_4_Alleluja_Allegro.mp3 -s nhd -c:v libx264 -c:a libfdk_aac  -shortest -pix_fmt yuv420p -ac 1 -movflags +faststart Exsultate_jubilate_4_Alleluja.mp4 # weixin works
#ffmpeg -i chapter_18NHD1.mp4 -preset veryslow -c:v libx264 -crf 27  -c:a copy d.mp4 # downgrade existing mp4
#ffmpeg  -loop 1 -framerate 1/3.79 -start_number 1 -i ./a%d.jpg -i chapter_08.mp3 -c:v libx264 -r 25 -pix_fmt yuv420p -c:a aac -strict experimental -shortest output.mp4
#ffmpeg -loop 1 -i 519IahUa4AL.jpg -c:v libx264 -t 15 -pix_fmt yuv420p -vf scale=320:240 out.mp4
#ffmpeg -i ~/z/extOriginal/Original/COSI_FAN_TUTTI/title01.mkv -map 0:0 -c:v libx264 -s nhd -filter:v "fps=15,yadif"  -profile:v main -level 3.1 -preset veryslow -crf 23  -strict -2  COSI_FAN_TUTTI_NHD.mkv
#ffmpeg -i COSI_FAN_TUTTI_NHD.mkv -i ~/z/extOriginal/Original/COSI_FAN_TUTTI/title01.mkv -map 0:0 -c:v copy -map 1:2 -c:a copy -map 1:7 -c:s copy  COSI_FAN_TUTTI_NHD_AAC.mkv
#ffmpeg -i CD2_Track17.mkv -max_muxing_queue_size 1024 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='Mhh\nhh': fontcolor=white: fontsize=10: box=1: boxcolor=black: boxborderw=5: x=(w-text_w)/2: y=(h-text_h)/2" -codec:a copy CD2_Track17_font.mkv # overlay text
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 11 -t 4:20 -i FULL\ HD\ \ 中國\ 上海\ 上海灘\ 外灘\ 人潮\ \ 百貨\ 交通\ 地鐵\ \ 街景\ 建築\ \ ZY\ s\ ky0788-PcTHkH1shV8.mkv -ss 0 -i /DVD/mp3/MozartVocalChamber/Mozart-EC7887-Exsultate_jubilate_1_Exsultate_jubilate_Allegro.mp3  -map 0:v:0 -map 1:a:0 -s nhd -r 15 -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256  -movflags +faststart -shortest st3.mp4
ffmpeg -i AMADEUS_SIDE_A_16X9_LB_chapter_08NHD.mp4 -vf "scale=640:-1" bbb.mp4 #convert 16x9 to 4:3 and keep the ratio
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 5616.410800 -i /home/blk161/z/Original/AndreaChenier_UmbertoGiordanoMonacohenier/title_t00.mkv -t 347.447100 -ss 5616.410800 -i /home/blk161/z/Original/AndreaChenier_GiodanoDomingo/title_t00.mkv -t 347.447100 -metadata title="AndreaChenier_UmbertoGiordanoMonacohenier_chapter_24NHD" -filter_complex  "[0:v][1:s:0]overlay[v]" -map [v] -map 0:a:0 -s nhd -r 15 -profile:v main -level 3.1 -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256  -map_chapters -1 -movflags +faststart test.mp4 # sample to fuse subtitle into another clip
#ffmpeg -i messiah_HandelJHadley_chapter_31NHD_1.mp4 -i ~/Pictures/Screenshot_20200224_214217.png -filter_complex "[0:v][1:v] overlay=25:25:enable='between(t,0,20)'" -pix_fmt yuv420p -c:a copy output.mp4 # overlay picture from 0 to 20 seconds
ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 ~/z/Original/AndreaChenier_GiordanoCorelliTebaldiCD/CD2_Track10.wav
ffmpeg -ss 00:25:33 -i ~/z/Original/ForzaDelDestino_VerdiTebaldiCorelli/title_t00.mkv -t 01:10:38.98 -map 0:1  -b:a 192k -ac 2  淮海路商业街景\ \ 上海淮海中路\ 淮海西路\ 4K\ Shanghai\ Huaihai\ Road\ Commercial\ Street\ View--aFm0tv9mSw_1.mp3

#ffmpeg -i 淮海路商业街景\ \ 上海淮海中路\ 淮海西路\ 4K\ Shanghai\ Huaihai\ Road\ Commercial\ Street\ View--aFm0tv9mSw.mp3 -i 淮海路商业街景\ \ 上海淮海中路\ 淮海西路\ 4K\ Shanghai\ Huaihai\ Road\ Commercial\ Street\ View--aFm0tv9mSw_1.mp3 -filter_complex amerge=inputs=2 -ac 2 output.mp3 #mix two audio files

# ffmpeg -i Original.mp4 -i ../../../Music/HALIDONMUSIC/Classical\ Waltzes\ _\ Strauss\,\ Chopin\,\ Shostakovich...-vXsZru0mzbY/Original.m4a  -filter_complex "[0:a:0]volume=0.3[a0];[1:a:0]volume=1[a1];[a0][a1]amerge=inputs=2" -ac 2 output1.mp3 #mix two audio files
# ffmpeg -i final.mp4 -i Norma_CallasCorelliCDCD1_Track01.mp3 -map 0:0 -c:v copy  -filter_complex "[0:a:0]volume=1[a0];[1:a:0]volume=0.05[a1];[a0][a1]amerge=inputs=2" -ac 2 output.mp4 # sound volume 1:0.05

# ffmpeg -i final.mp4 -i Norma_CallasCorelliCDCD1_Track01.mp3 -map 0:0 -c:v copy -map 0:1 -filter_complex amerge=inputs=2 -ac 2 output.mp4 # 1:1 sound volume

#ffmpeg -i lEDJRHkBOwY_short.mp4 -i blank.jpg -filter_complex "[0:v][1:v] overlay=25:25:enable='between(t,0,20)'" -pix_fmt yuv420p -c:a copy lEDJRHkBOwY_short_blank.mp4

#ffmpeg -i Puritani_Netrebko_chapter_31NHD.mp4 -i Puritani_Netrebko_chapter_31hqvga.mp4 -filter_complex "[1:v]setpts=PTS-10/TB[a];[0:v][a]overlay=enable=gte(t\,5):shortest=1[out]" -map [out] -map 0:a -c:v libx264 -crf 18 -pix_fmt yuv420p -c:a copy output.mp4 # video overlay not very convienant 
#ffmpeg -i chapter_17NHD.mp4 -i chapter_18NHD.mp4 -i chapter_19NHD.mp4 -i chapter_20NHD.mp4 \
  -filter_complex " \
	    nullsrc=size=640x360 [base]; \ 
	    [0:v] setpts=PTS-STARTPTS, scale=320x180 [upperleft]; \
			[1:v] setpts=PTS-STARTPTS, scale=320x180 [upperright]; \
			[2:v] setpts=PTS-STARTPTS, scale=320x180 [lowerleft]; \ 
			[3:v] setpts=PTS-STARTPTS, scale=320x180 [lowerright]; \
			[base][upperleft] overlay=shortest=1 [tmp1]; \
			[tmp1][upperright] overlay=shortest=1:x=320 [tmp2]; \
			[tmp2][lowerleft] overlay=shortest=1:y=180 [tmp3]; \ 
			[tmp3][lowerright] overlay=shortest=1:x=320:y=180 \
			" \
			-c:v libx264 output.mkv # video in video 
#ffmpeg -i chapter_17NHD.mp4 -i chapter_18NHD.mp4 -i chapter_19NHD.mp4 -i chapter_20NHD.mp4 \
  -filter_complex " \
	  nullsrc=size=640x360 [base]; \
		[0:v] setpts=PTS-STARTPTS, scale=320x180 [upperleft]; \
		[1:v] setpts=PTS-STARTPTS, scale=320x180 [upperright]; \ 
		[2:v] setpts=PTS-STARTPTS, scale=320x180 [lowerleft]; \
		[3:v] setpts=PTS-STARTPTS, scale=320x180 [lowerright]; \ 
		[base][upperleft] overlay=shortest=1 [tmp1]; \ 
		[tmp1][upperright] overlay=shortest=1:x=320:enable='between(t,0,20)' [tmp2]; \
		[tmp2][lowerleft] overlay=shortest=1:y=180 [tmp3]; \
		[tmp3][lowerright] overlay=shortest=1:x=320:y=180
	  " \
	  -c:v libx264 output6.mp4

#ffmpeg -i chapter_17NHD.mp4 -i chapter_18NHD.mp4 -i chapter_19NHD.mp4 -i chapter_20NHD.mp4 \
  -filter_complex " \
	  nullsrc=size=640x360 [base]; \
		[0:v] setpts=PTS-STARTPTS, scale=640x360 [upperleft]; \
		[1:v] setpts=PTS-STARTPTS, scale=320x180 [upperright]; \
		[2:v] setpts=PTS-STARTPTS, scale=320x180 [lowerleft]; \
		[3:v] setpts=PTS-STARTPTS, scale=320x180 [lowerright]; \
		[base][upperleft] overlay=shortest=1 [tmp1]; \
		[tmp1][upperright] overlay=shortest=1:x=320:enable='between(t,0,20)' [tmp2]; \
		[tmp2][lowerleft] overlay=shortest=1:y=180:enable='between(t,30,60)' [tmp3]; \
		[tmp3][lowerright] overlay=shortest=1:x=320:y=180:enable='between(t,80,100)' \
		" \
		-c:v libx264 output8.mp4

#ffmpeg -i EugeneOnegin_Tchaikovsky_chapter_22NHD.mp4 -i EugeneOnegin_Tchaikovsky_chapter_05NHD.mp4 -filter_complex " \
nullsrc=size=640x480 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x480 [upperleft]; \
[1:v] setpts=PTS-STARTPTS, scale=320x240 [upperright]; \
[base][upperleft] overlay=shortest=1 [tmp1]; \
[tmp1][upperright] overlay=shortest=0:x=320:enable='between(t,0,20)' \
"  -c:v libx264 output9.mp4 # 1. two video not four. 2. shortest apply to 0:v not 1:v

#ffmpeg -i EugeneOnegin_Tchaikovsky_chapter_22NHD.mp4 -i EugeneOnegin_Tchaikovsky_chapter_05NHD.mp4 -t 60 -filter_complex " \
nullsrc=size=640x480 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x480 [main]; \
[1:v] setpts=PTS-15/TB, scale=159x120 [sub1]; \
[base][main] overlay=shortest=1 [overlap1]; \
[overlap1][sub1] overlay=shortest=0:x=320:y=20:enable='between(t,0,20)' \
"  -c:v libx264 output11.mp4 #[1:v] discard first 15 seconds

#ffmpeg -i EugeneOnegin_Tchaikovsky_chapter_22NHD.mp4 -i EugeneOnegin_Tchaikovsky_chapter_05NHD.mp4 -t 60 -filter_complex " \
nullsrc=size=640x480 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x480 [main]; \
[1:v] setpts=PTS+15/TB, scale=159x120 [sub1]; \
[base][main] overlay=shortest=1 [overlap1]; \
[overlap1][sub1] overlay=shortest=0:x=320:y=20:enable='between(t,0,20)' \
"  -c:v libx264 output11.mp4 # start from -15 second(first 15 second is null)



#ffmpeg -i DIE_ZAUBERFLOETE_chapter_13NHD_1.mp4 -i 成龙1.jpg -filter_complex " \
nullsrc=size=640x360 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x360 [upperleft]; \
[1:v] setpts=PTS-STARTPTS, scale=133x100 [upperright]; \
[base][upperleft] overlay=shortest=1 [tmp1]; \
[tmp1][upperright] overlay=shortest=0:x=500:y=10:enable='between(t,0,20)' \
"  -c:v libx264 DIE_ZAUBERFLOETE_chapter_13NHD_1_output9.mp4

ffmpeg -i DIE_ZAUBERFLOETE_chapter_13NHD_1.mp4 -i 成龙1.jpg -i 成龙2.jpg -filter_complex " \
nullsrc=size=640x360 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x360 [upperleft]; \
[1:v] setpts=PTS-STARTPTS, scale=133x100 [upperright]; \
[2:v] setpts=PTS-STARTPTS, scale=133x20 [upperright1]; \
[base][upperleft] overlay=shortest=1 [tmp1]; \
[tmp1][upperright] overlay=shortest=0:x=500:y=10:enable='between(t,40,82)' [tmp2]; \
[tmp2][upperright1] overlay=shortest=0:x=500:y=10:enable='between(t,0,40)' \
"  -c:v libx264 DIE_ZAUBERFLOETE_chapter_13NHD_1_output9.mp4

ffmpeg -i DIE_ZAUBERFLOETE_chapter_13NHD_1.mp4 -i 成龙1.jpg -i 成龙2.jpg -i  成龙1.jpg  -filter_complex " \
nullsrc=size=640x360 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x360 [upperleft]; \
[1:v] setpts=PTS-STARTPTS, scale=133x100 [upperright]; \
[2:v] setpts=PTS-STARTPTS, scale=133x20 [upperright1]; \
[3:v] setpts=PTS-STARTPTS, scale=133x100 [upperleft1]; \
[base][upperleft] overlay=shortest=1 [tmp1]; \
[tmp1][upperright] overlay=shortest=0:x=500:y=10:enable='between(t,40,82)' [tmp2]; \
[tmp2][upperright1] overlay=shortest=0:x=500:y=10:enable='between(t,0,40)' [tmp3]; \
[tmp3][upperleft1] overlay=shortest=0:x=10:y=10:enable='between(t,0,2)'  \
"  -c:v libx264 DIE_ZAUBERFLOETE_chapter_13NHD_1_output9.mp4

#duration=21;ffmpeg -i Saioa-Stiffelio.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='%{eif\:$duration-t\:d}': fontcolor=white: fontsize=10: box=1: boxcolor=black: boxborderw=5: x=(w-text_w)/2: y=(h-text_h)/2" -codec:a copy Saioa-Stiffelio_test.mp4 #Counting down
#ffmpeg -i Saioa-Stiffelio.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='Timestamp\: %{pts\:gmtime\:0\:%M\\\\\:%S}.': fontcolor=white: fontsize=10: box=1: boxcolor=black: boxborderw=5: x=(w-text_w)/2: y=(h-text_h)/2" -codec:a copy Saioa-Stiffelio_test.mp4 #Count UP

#ffmpeg -i Saioa-Stiffelio.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='Silence Time In Seconds\: %{pts\:gmtime\:0\:%M\\\\\:%S}.': fontcolor=white: fontsize=15: box=1: boxcolor=black: boxborderw=5: x=400: y=10:enable=gte(t\,5)" -codec:a copy Saioa-Stiffelio_test.mp4 # enable from 5 seconds

#ffmpeg -i Trudeau\ silent\ for\ 21\ seconds\ after\ question\ about\ Trump\'s\ response\ to\ protesters-sjhF1GI9n8A.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='Silence Time In Seconds\: %{pts\:gmtime\:-16\:%M\\\\\:%S}.': fontcolor=white: fontsize=15: box=1: boxcolor=black: boxborderw=5: x=400: y=10:enable='between(t\,17,38)'" -codec:a copy Trudeau\ silent\ for\ 21\ seconds\ after\ question\ about\ Trump\'s\ response\ to\ protesters-sjhF1GI9n8A_withTImeStamp.mp4 # time start from negative 
#ffmpeg -i OMNI2202006102100A_youngerCovit19.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='年轻人的新冠确诊比例大幅上升': fontcolor=white: fontsize=15: box=1: boxcolor=black: boxborderw=5: x=400: y=10:enable='between(t\,0,58)'" -codec:a copy OMNI2202006102100A_youngerCovit19-1.mp4

ffmpeg -i 中印边界冲突中国或成最大输家_【岩论】-XlHjBmLBie8-01.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='中国或成最大输家': fontcolor=white: fontsize=25: box=1: boxcolor=black: boxborderw=5: x=420: y=10:enable='between(t\,0,58)'",drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='中 印边界冲突': fontcolor=white: fontsize=25: box=1: boxcolor=black: boxborderw=5: x=20: y=10:enable='between(t\,0,58)'"  中印边界冲突中国或成最大输家_【岩论】-XlHjBmLBie8-01_text.mp4
#ffmpeg -i Trudeau\ silent\ for\ 21\ seconds\ after\ question\ about\ Trump\'s\ response\ to\ protesters-sjhF1GI9n8A_loop.mp4  -vf "fps=10,scale=320:-1:flags=lanczos" -c:v pam -f image2pipe - | convert -delay 10 - -loop 0 -layers optimize output.gif

#ffmpeg -i Giovanni_MozartFurtwangler_chapter_06NHD_640x480_short.mp4 -r 15 -vf scale=512:-1 -ss 3:47 -t 6 ThankU6.gif


ffmpeg -i 睡前消息129：砸哥伦布雕像，No！砸丘吉尔雕像，Yes！-5I2flhWNdcY_WinstonChurchill.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='丘吉尔和中国': fontcolor=white: fontsize=25: box=1: boxcolor=black: boxborderw=5: x=10: y=10:enable='between(t\,0,58)'" -codec:a copy 睡前消息129：砸哥伦布雕像，No！砸丘吉尔雕像，Yes！-5I2flhWNdcY_WinstonChurchill1.mp4

## mix picture and text in one command 
#ffmpeg -i Creation_HaydnBernstein_chapter_29NHD.mp4 -i index.jpg -filter_complex " \
nullsrc=size=640x480 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x480 [upperleft]; \
[1:v] setpts=PTS-STARTPTS, scale=100x112 [upperright]; \
[base][upperleft] overlay=shortest=1,drawtext=fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='丘吉尔和中国': fontcolor=white: fontsize=25: box=1: boxcolor=black: boxborderw=5: x=10: y=10:enable='between(t\,0,58)' [tmp1]; \
[tmp1][upperright] overlay=shortest=0:x=520:y=20:enable='between(t,0,20)' \
"  xyz.mp4

ffmpeg -i Charpt_03NDH_02-1.mp4 -i index.jpe -filter_complex " \
nullsrc=size=640x360 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=640x360 [upperleft]; \
[1:v] setpts=PTS-STARTPTS, scale=100x100 [upperright]; \
[base][upperleft] overlay=shortest=1,drawtext=fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='勾引女孩要用巧克力，几百年前就这样': fontcolor=white: fontsize=25: box=1: boxcolor=black: boxborderw=5: x=10: y=10:enable='between(t\,0,15)',drawtext=fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='巧克力': fontcolor=white: fontsize=25: box=1: boxcolor=black: boxborderw=5: x=290:y=90:enable='between(t\,20,22)' [tmp1]; \
[tmp1][upperright] overlay=shortest=0:x=545:y=5:enable='between(t,0,20)' \
"  巧克力_chapter_03NDH_02-title.mp4 # repeat text in same pane

ffmpeg -i Fantasia\ on\ Greensleeves-\ Katha\ Zinn\,\ violin\;\ Illya\ Filshtinskiy\,\ piano-7QHjZsBTysQ.mp4 -vf drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='https\:\/\/www.youtube.com\/watch?v=7QHjZsBTysQ': fontcolor=white: fontsize=15: box=1: boxcolor=black: boxborderw=5: x=10: y=340:enable='between(t\,240,268.12)'",drawtext="fontfile=/usr/share/kodi/media/Fonts/arial.ttf: text='苏格兰民谣 绿袖子': fontcolor=white: fontsize=20: box=1: boxcolor=black: boxborderw=5: x=470: y=10:enable='between(t\,0,58)'" Fantasia\ on\ Greensleeves-\ Katha\ Zinn\,\ violin\;\ Illya\ Filshtinskiy\,\ piano-7QHjZsBTysQ_title.mp4 # two text in one line command

#ffmpeg -i FigroFrani_chapter_52NHD.mp4 -vf "format=yuv420p,drawbox=y=ih/PHI:color=black@0.4:width=iw:height=48:t=fill,drawtext=fontfile=/usr/share/kodi/media/Fonts/arial.ttf:text='Title of this Video':fontcolor=white:fontsize=24:x=(w-tw)/2:y=(h/PHI)+th,format=yuv420p" FigroFrani_chapter_52NHD-2.mp4
#ffmpeg -ss 04:11:28 -i Maria\ Callas\ -\ 50\ Most\ Beautiful\ Opera\ Arias-1iwGIBewHPM.webm -metadata title="Turandot, Act I:\"Signore, ascolta\!\" (Liù)" -vol 256 -map 0:1 -b:a 192k -ac 2 50_callas.mp3
#ffmpeg -i 文革电影系列\ 【战洪图】\ 1973年\ 中国经典怀旧电影\ Chinese\ classical\ HD-7bHJS0mQuIE_七七四十九天_text_640x480.mp4 -lavfi '[0:v]scale=ih*16/9:-1,boxblur=luma_radius=min(h\,w)/20:luma_power=1:chroma_radius=min(cw\,ch)/20:chroma_power=1[bg];[bg][0:v]overlay=(W-w)/2:(H-h)/2,crop=h=iw*9/16' out_horizontal.mp4

#ffmpeg -i 文革电影系列\ 【战洪图】\ 1973年\ 中国经典怀旧电影\ Chinese\ classical\ HD-7bHJS0mQuIE_七七四十九天_text_640x480.mp4 -lavfi "[0:v]scale=256/100*iw:256/100*ih,boxblur=luma_radius=min(h\,w)/40:luma_power=3:chroma_radius=min(cw\,ch)/40:chroma_power=1[bg];[bg][0:v]overlay=(W-w)/2:(H-h)/2,setsar=1,crop=w=iw*100/256" 文革电影系列\ 【战洪图】\ 1973年\ 中国经典怀旧电影\ Chinese\ classical\ HD-7bHJS0mQuIE_七七四十九天_text_vertical_100x256.mp4 #vertical blurr sides

fmpeg -f lavfi -i anullsrc=channel_layout=stereo:sample_rate=44100 -i fuqi.mp4 -c:v copy -c:a aac -shortest fuqi1.mp4 # add silent into a non audio mp4

ffmpeg -f lavfi -i anullsrc=channel_layout=5.1:sample_rate=48000 -t 1 silence.ac3 # create 1 sec silent audio
ffmpeg -i Nabucco_VerdiSaioaHernandez_chapter_25NHD.mp4 -vf fade=in:0:500 Nabucco_VerdiSaioaHernandez_chapter_25NHD_fadein.mp4 # from dark into normal
ffmpeg -i Nabucco_VerdiSaioaHernandez_chapter_25NHD.mp4 -vf hue=s=0 Nabucco_VerdiSaioaHernandez_chapter_25NHD_blackWhite.mp4 # change to black white

ffmpeg -i A.webm -f wav B.wav

#ffmpeg -i landscape2.mp4 -vf  rotate=30*PI/180 landscape2.2.mp4 # rotate video 30 degree
#ffmpeg -loop 1 -i landscape2.jpg -c:v libx264 -t 15 -pix_fmt yuv420p -vf scale=1280:854 landscape2.mp4

#ffmpeg -loop 1 -framerate 30 -i 'Is Organic Really Better Healthy Food or Trendy Scam-8PmM6SUn7Es.jpg' -i "'Milk. White Poison or Healthy Drink-oakWgLqCwUc_final.mp4'" -t 1 -s 640x380  -map 0:0 -c:v libx264 -map 1:1 -c:a aac -shortest 'Is Organic Really Better Healthy Food or Trendy Scam-8PmM6SUn7Es.mp4'
=========
#ffmpeg -loop 1 -i s.jpg -i  any.mp4 -t 0.5 -vf  "drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='Word you want be on Cover':fontcolor=white:fontsize=24:x=(w-tw-th/5):y=th/4:enable='between(t,0,360)'" -map 0:0 -c:v  libx264 -s 640x360 -r 29.97 -map 1:1 -c:a aac -vol 0 -shortest cover.mp4
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -i '難怪酒店的扣肉那麼好吃，原來訣竅這麼簡單，學會了給家人露一手【一画美食】#扣肉 #扣肉食譜 #扣肉料理-v13e3bL0_yA.mp4' -vf  "drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='':fontcolor=white:fontsize=24:x=(w-tw-th/5):y=th/4:enable='between(t,0,360)'" -map 0:0 -c:v  libx264 -s 640x360 -r 29.97 -map 0:1 -c:a aac -vol 256  1st_sync.mp4
==========

#ffmpeg -i EugeneOnegin_Tchaikovsky_chapter_05NHD.mp4 -vf "format=yuv420p,drawbox=y=ih/PHI:color=black@0.2:width=iw:height=48:t=fill:enable='between(t,0,20)',drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='年 轻 人 谈 恋 爱':fontcolor=white:fontsize=24:x=(w-tw)/2:y=(h/PHI)+th/2:enable='between(t,0,20)'" EugeneOnegin_Tchaikovsky_chapter_05NHD_text.mp4
#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 3 -i input.mp4 -t 3:42 -vf "fps=10,format=yuv420p,drawbox=y=ih/PHI:color=black@0.2:width=iw:height=48:t=fill:enable='between(t,0,20)',drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='A':fontcolor=white:fontsize=28:x=(w-tw)/2:y=(h/PHI)+th/2:enable='between(t,0,20)',drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='B':fontcolor=white:fontsize=24:x=(w-tw-th/5):y=th/4:enable='between(t,0,20)'" -s nhd -preset veryslow -crf 29 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 128 -movflags +faststart output.mp4

ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i input.mp4 -vf "fps=15,format=yuv420p,drawbox=y=ih/PHI:color=black@0.1:width=iw:height=70:t=fill:enable='between(t,0,5)',drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='中间':fontcolor=white:fontsize=50:x=(w-tw)/2:y=(h/PHI)+th/2-10:enable='between(t,0,5)',drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='右上':fontcolor=white:box=1:boxcolor=red:fontsize=24:x=(w-tw-th/5):y=th/4:enable='between(t,0,5)',drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='左下':fontcolor=white:fontsize=24:x=(tw/20):y=(h-th-th/4):enable='between(t,0,5)'" output.mp4

ffmpeg -i giuseppe-di-stefano.jpg -vf "drawbox=y=ih/PHI:color=black@0.1:width=iw:height=70:t=fill:enable='between(t,0,5)',drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='中间':fontcolor=white:fontsize=50:x=(w-tw)/2:y=(h/PHI)+th/2-10:enable='between(t,0,5)',drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='右上':fontcolor=white:fontsize=24:x=(w-tw-th/5):y=th/4:enable='between(t,0,5)',drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='左下':fontcolor=white:fontsize=24:x=(tw/20):y=(h-th-th/4):enable='between(t,0,5)'" out.jpg

ffmpeg -loop 1 -i 今夜无人入眠.jpg -i ../Arias_Stefano_Track15.mp3 -c:a copy -c:v libx264 -shortest 今夜无人入眠.mp4

ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i MagicFlute_HuangYing_chapter_14NHD.mp4 -vf "fps=10,format=yuv420p,drawbox=y=ih/PHI:color=black@0.1:width=iw:height=48:t=fill:enable='between(t,0,1)',drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='驱散黑暗之后，幸福随之而来':fontcolor=white:fontsize=28:x=w/10*mod(t\,10):y=(h/PHI)+th/2:enable=gt(mod(t\,20)\,10)'',drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='':fontcolor=white:fontsize=19:x=(w-tw-th/10):y=th/4:enable='between(t,0,10)'" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 128 -movflags +faststart MagicFlute_HuangYing_chapter_14NHD_text1.mp4  # moving text horizontal 


#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i Track16.mp4 -vf "fps=10,format=yuv420p,drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='上海老克勒都在看':fontcolor=white:fontsize=79:x=60*mod(t\,1920/60):y=th/4:enable='between(t,0,4000)'" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256 -movflags +faststart Track16_text4.mp4 #for 1920 wide 1920/60=32

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i Track16.mp4 -vf "fps=10,format=yuv420p,drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='上海老克勒都在看':fontcolor=white:fontsize=79:x=60*mod(t\,(tw+1920)/60)-tw:y=th/4:enable='between(t,0,4000)'" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256 -movflags +faststart Track16_text4.mp4 # come into from left

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i Track16.mp4 -vf "fps=10,format=yuv420p,drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='上海老克勒都在看':fontcolor=white:fontsize=79:x=(1920-60*mod(t\,1920/60)-tw):y=th/4:enable='between(t,0,4000)'" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256 -movflags +faststart Track16_text5.mp4 # come into from right 

ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i A.mp4 -vf "fps=10,format=yuv420p,drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='看看加州验房验什么':fontcolor=white:fontsize=26:x=640-tw:y=th/4:enable='between(t,0,4)'" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256 -movflags +faststart A_text.mp4

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i Track16.mp4 -vf "fps=10,format=yuv420p,drawtext=fontfile=/home/blk161/DVD/bin/HanyiSentyPailouArch.ttf:text='上海老克勒都在看':fontcolor=white:fontsize=79:x=(1920-60*mod(t\,(1920+tw)/60)):y=th/4" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256 -movflags +faststart Track16_text5.mp4 # come into from right. two 1920=video with dots, two 60=time it decides banner speed.

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 0 -i Sync.mp4 -vf "fps=30,format=yuv420p,drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='德语=英语':fontcolor=white:fontsize=40:x=(640-30*mod(t\,(640+tw)/30)):y=th/4" -s nhd -preset veryslow -crf 23 -x264-params ref=4 -ac 2 -acodec libfdk_aac -vol 256 -movflags +faststart Sync1.mp4 # come into from right. two 640=video with dots, two 30=time it decides banner speed

srt file format 
/////
1
00:00:00.000 --> 00:00:04.060
哲学
////
ffmpeg -i a.mp4 -vf subtitles='subtitle.srt'  mysubtitledmovie.mp4
ffmpeg -i Why\ Socrates\ Hated\ Democracy-fLJBzhcSWTk.mp4 -vf subtitles='Why Socrates Hated Democracy-fLJBzhcSWTk.zh-CN.srt:force_style=Fontsize=48'  mysubtitledmovie48.mp4

OR 
1 ffmpeg -i mysubtitles.srt mysubtitle.ass
2 ffmpeg -i a.mp4 -vf ass=mysubtitle.ass  mysubtitledmovie1.mp4
ffmpeg -i A.mp4 -vf "subtitles=B.srt:force_style='Alignment=6,Fontsize=12,PrimaryColour=&H00ffff&,outline=0'" C.mp4 

#ffmpeg -ss 0 -i input.mp4 -filter_complex "[0:v]setpts=1/1.1*PTS[v];[0:a]atempo=1.1[a]" -map "[v]" -map "[a]" output.mp4 # x1.1 speed

ffmpeg -i IMG_1808.MOV -vf "transpose=2" -crf 15.5 -f matroska  pipe:1  |ffplay -i pipe:0

ffprobe -v error -print_format json -show_entries stream=bit_rate  Original.mp4

#ffmpeg -analyzeduration 2147483647 -probesize 2147483647 -ss 10:15  -i Original.mp4 -ss 10:15 -i Original.m4a -vf "drawtext=fontfile=/home/blk161/DVD/bin/simhei.ttf:text='':fontcolor=white:fontsize=36:x=(w-tw-th/5):y=th/4:enable='between(t,0,4)'" -map 0 -c:v libx264 -b:v 600k -s hd720  -r 25 -map 1 -c:a aac -b:a 128k -vol 256  Sync3of3.mp4
