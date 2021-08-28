loc="nalinwadhwa"
dir="/home"
while [[ $loc != "OpenTerm" && ( -d $dir ) ]]
do
    dir="$dir/$loc"
    list="..#$(ls $dir | tr "\n" "#")#OpenTerm"
    loc="$(echo $list | tr "#" "\n" | dmenu -i -b -l 10)"
done
st -e sh -c "cd $dir; bash"
