Hour=$(bc <<<"$1/3600")
#test $Hour -gt 0 && printf "%02d:" $Hour
printf "%02d:" $Hour
SecondLeft=$(bc <<<"$1 % 3600")
Min=$(bc <<<"$SecondLeft/60")
#echo -e "$Min:\c"
printf "%02d:" $Min
Second=$(bc <<<"$SecondLeft % 60")
printf "%06.3f\n" $Second
