#!/bin/sh
flag=0
dir="/home/nalin"
selected=-1
selection=1
clear
while [[ $flag == 0 ]]
do	
	choices="$(ls $dir -w 1 | tr " " "Œ")"
#	echo -e "$(echo -e $selection | tr ' ' '\n')"
	cn=1
	location="."
	echo -e "$dir"
	for val in $choices ; do
		if [[ $cn -eq $selection ]]; then
			echo -e "$(echo -e "->$val" | tr "Œ" " ")"
			location=$val
		else
			echo -e "$(echo -e "$val" | tr "Œ" " ")"
		fi
		cn=$cn+1
	done
	read -n 1 selected
	if [[ $selected == 'j' ]]; then
		selection=$selection+1
	elif [[ $selected == "k" ]]; then
		selection=$selection-1
	elif [[ $selected == "h" ]]; then
		dir="$dir/.."
		selection=1
	elif [[ $selected == "l" ]]; then
		dir="$dir/$location"
		selection=1
	elif [[ $selected  == "o" ]]; then
		flag=1
	else 
		flag=2
	fi
	clear
done
if [[ $flag == 1 ]]; then
	cd $dir; bash
	exit
else
	echo "exited"
fi


