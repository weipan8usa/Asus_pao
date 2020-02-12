/usr/local/bin/hdhomerun_config 1018390D set /tuner0/channel 40
/usr/local/bin/hdhomerun_config 1018390D set /tuner0/program 0
/usr/bin/timeout 1800 /usr/local/bin/hdhomerun_config 1018390D save /tuner0 /home/blk161/DVD/tv/omniTV$(date +'%Y%m%d%H%M').mpg






#/usr/bin/timeout 1800 /usr/local/bin/hdhomerun_config 1018390D save /tuner0 - | avconv -i - -c:v libx264 -s hd720 -c:a copy /home/blk161/DVD/tv/omniTV$(date +'%Y%m%d%H%M').mp4
#/usr/bin/timeout 18 /usr/local/bin/hdhomerun_config 1018390D save /tuner0 /home/blk161/DVD/tv/omniTV$(date +'\%Y\%m\%d\%H\%M').mpg
