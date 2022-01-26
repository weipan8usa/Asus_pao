#ffmpeg -loop 1 -i Cover.jpg -i LuciaLammermoor_DonizettiCallasCD.wav -s 1440x720 -vf "fps=1" -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest LuciaLammermoor_DonizettiCallasCD.mp4
