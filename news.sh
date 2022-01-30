#!/bin/bash


##News Streams
#INDIA
ABPNEWS="https://www.youtube.com/watch?v=nyd-xznCpJc"
REPUBLICNEWS="https://www.youtube.com/watch?v=Px1lFQXKD4w"
ZEENEWS="https://www.youtube.com/watch?v=pXTvorHxThQ"
#USA
ABCNEWS="https://www.youtube.com/watch?v=w_Ma8oQLmSM"
#UK
SKYNEWS="https://www.youtube.com/watch?v=9Auq9mYxFEE"

#Dmenu Options
NAMES="ABPNews__India__Hindi\nRepublicWorld_India_Hindi/English\nZeeNews_India_Hindi"

ACCEPTED="Playing..."

case $1 in
	-h | --help)
		printf "\n news.sh [OPTION]\n
		OPTIONS:\n
		   [India]
		   -abp or --abpnews [ABP news] [Hindi]
		   -rp or --republicworld [RepublicWorld News] [Hindi/English]
		   -zn or --zeenews [ZeeNews] [English]

		   [USA]
		   -abc or --abcnews [ABC News] [English]

		   [UK]
		   -sky or --skynews [Sky News] [English]\n\n"

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
	-abc | --abcnews)
		echo $ACCEPTED "ABCNews"
		mpv $ABCNEWS
	;;

	-sky | --skynews)
		echo $ACCEPTED "SkyNews"
		mpv $SKYNEWS
	;;
	-d | --dmenu)
		echo "This part is under development..." | dmenu -p "Part is under development"
	;;
	*)
	echo "Wrong argument, Try again... or use --help, -h"
esac
