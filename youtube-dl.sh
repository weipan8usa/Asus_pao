youtube-dl --list-subs URL
youtube-dl --write-sub --sub-lang zh-TW  --skip-download https://www.youtube.com/watch?v=vCcjZusjY-s
youtube-dl --list-subs https://www.youtube.com/watch?v=Ye8mB6VsUHw
#youtube-dl -f 18 https://www.youtube.com/watch?v=pz1NL8zJHQU --output 血小板.mp4
youtube-dl --list-thumbnails https://youtu.be/BPMJuRrN-Nc
#youtube-dl  --get-thumbnail https://youtu.be/BPMJuRrN-Nc|wget -i -

======================================================
$ git clone https://github.com/ytdl-org/youtube-dl.git
$ vi youtube-dl/youtube_dl/extractor/youtube.py
$ cd youtube-dl
$ python setup.py build
$ sudo python setup.py install
===============================================


make DESTDIR=/tmp/stage install
