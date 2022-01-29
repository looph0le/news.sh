#!/bin/bash


#News Streams
ABPNEWS="https://www.youtube.com/watch?v=nyd-xznCpJc"
REPUBLICNEWS="https://www.youtube.com/watch?v=Px1lFQXKD4w"
ZEENEWS="https://www.youtube.com/watch?v=pXTvorHxThQ"

#Dmenu Options
NAMES="ABPNews__India__Hindi\nRepublicWorld_India_Hindi/English\nZeeNews_India_Hindi"

ACCEPTED="Playing..."

case $1 in
	-h | --help)
		printf "\n news.sh [OPTION]\n
		OPTIONS:\n
		   -abp or --abpnews [ABP news]\n
		   -rp or --republicworld [RepublicWorld News]\n
		   -zn or --zeenews [ZeeNews]\n
		   -d or --dmenu, to use dmenu integration\n\n"
	;;
	-abp | --abpnews) 
		echo $ACCEPTED "ABP News"
		mpv $ABPNEWS 
	;;
	-rp | --republicworld) 
		echo $ACCEPTED "Republic World News"
		mpv $REPUBLICNEWS
	;;
	-zn | --zeenews) 
		echo $ACCEPTED "ZeeNews"
		mpv $ZEENEWS
	;;
	-d | --dmenu)
		#printf $NAMES | dmenu -p "SELECT: " -l 20 
		echo "This part is under development..."
	;;
	*)
	echo "Wrong argument, Try again... or use --help"
esac
