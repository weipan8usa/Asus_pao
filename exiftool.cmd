exiftool -T -DateTimeOriginal -FileName Canon\ G5/*/*[Jj][Pp][Gg]
exiftool -location:all VID_20161129_210121-p.mp4

mkdir $(exiftool -T -CreateDate -FileName *|sed -e "s/:/-/g" |awk '{print $1}'|grep  "^[0-9]"|uniq)
exiftool -T -CreateDate -FileName *|sed -e "s/:/-/g" |grep "^[0-9]" |awk '{print "mv -i ",$NF,$1}'> /tmp/d
