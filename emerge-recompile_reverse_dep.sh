# recompile boost reverse dependent
equery d boost | awk -F' ' '{print "="$1}' | xargs emerge -pv
