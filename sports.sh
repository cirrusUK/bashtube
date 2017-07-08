#!/bin/bash
#This script requires mpv, pipe viewer (pv) & toilet.
# (1) prompt user, and read command line argument
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
printf %"s\n"
printf %"s\n"
tput setaf 3
blue=`tput setaf 4`
echo -e "\e[0;36m📺 \e[0;31m📺 \e[0;32m📺 \e[0;33m📺 \e[0;34m📺 \e[0;39m📺 \e[0;38m📺 \e[0;35m📺 \e[0;37m📺 \e[0;33m📺 \e[0;39m📺  \e[0m\n"
toilet -f future --metal ' sky_sports'
tput setaf 2
printf %"s\n"
printf '\E[33m'" Enter number/letter of desired\n stream,sit back & enjoy"  | pv -qL 20 ;
echo ''
echo ''
tput setaf 4
read -p "1= UK:Sky_Sports_1 
2= UK:Sky_Sports_2
3= UK:Sky_Sports_3
4= UK:Sky_Sports_4
5= UK:Sky_Sports_5
6= UK:Sky_Sports_F1
7= UK:Sky_Sports_News
8= BT_Sports_1
9= BT_Sports_2
0= BT_Sports_3
A= ESPN
B= LIGTV
C= StarSport
D= Chelsea_TV
E= Wimbledon
`tput setaf 2`
Q= Exit 
`tput setaf 1`
PLay: " answer
tput setaf 1
# (2) handle the command line argument we were given
while true
do
  case $answer in
   [1]* ) mpv 'http://185.142.239.164:3135/1/Sports/index.m3u8'
           echo "Playing Sky_Sports_1"
           break;;
 
   [2]* ) mpv 'http://185.142.239.164:3135/2/Sports/index.m3u8'
           echo "Playing Sky_Sports_2"
           break;;
           
   [3]* ) mpv 'http://185.142.239.164:3135/3/Sports/index.m3u8'
           echo "Playing Sky_Sports_3"
           break;;

   [4]* ) mpv 'http://185.142.239.164:3135/4/Sports/index.m3u8'
           echo "Playing Sky_Sports_4"
           break;;

   [5]* ) mpv 'http://185.142.239.164:3135/5/Sports/index.m3u8'
           echo "Playing Sky_Sports_5"
           break;;

   [6]* ) mpv 'http://185.142.239.164:3135/F1/Sports/index.m3u8'
           echo "Playing Sky_Sports_F1"
           break;;           
           
   [7]* ) mpv 'http://smart.worldiptv.in:53333/SkySportNews?auth=lgmarinov+buzemska5'
           echo "Playing Sky_Sports_News"
           break;;

   [8]* ) mpv 'http://185.142.239.164:3135/BT/1/index.m3u8'
           echo "BT_Sports_1"
           break;;
 
   [9]* ) mpv 'http://185.142.239.164:3135/BT/2/index.m3u8'
           echo "Playing BT_Sports_2"
           break;;

   [0]* ) mpv 'http://185.142.239.164:3135/BT/3/index.m3u8'
           echo "Playing BT_Sports_3"
           break;;

   [aA]* ) mpv 'http://185.142.239.164:3135/BT/Espn/index.m3u8 '
           echo "Playing ESPN"
           break;;

   [bB]* ) mpv 'http://46.105.233.106:8085/ligtv '
           echo "Playing LIGTV"
           break;;

   [cC]* ) mpv 'http://91.121.58.28:8090/starsport '
           echo "Playing StarSport"
           break;;

   [dD]* ) mpv 'http://ooyalahd2-f.akamaihd.net/i/chelsea02_delivery@145821/index_2528_av-p.m3u8 '
           echo "Playing Chelsea_TV"
           break;;
           
   [eE]* ) mpv 'http://78.129.184.15:9625/streaming/stream/playlist.m3u8'
           echo "Playing Wimbledon"
           break;;           

   [Qq]* ) exit;;
   
   * )     echo -e '\E[18m'"Goodbye, do call again.\n"; break ;;
  esac
done
