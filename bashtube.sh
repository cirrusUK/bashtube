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
toilet -f future --metal ' BashTube'
tput setaf 2
printf %"s\n"
printf '\E[33m'" Enter number/letter of desired\n playlist,sit back & enjoy"  | pv -qL 20 ;
echo ''
echo ''
tput setaf 4
read -p "1= Judge Judy Playlist 
2= Judge Judy Playlist 
3= Judge Judy Playlist 
4= 2020 Playlist 
5= 2020 Playlist 
6= 2020 On I.D
7= Dateline
8= CrimeTime TV
9= Crime INC
0= Real Stories
A= Tucker Dell
B= John Aylward
C= David B. Mayes
D= Crime Stories 
E= Crime & Investigation
F= London Live
`tput setaf 2`
Q= Exit 
`tput setaf 1`
PLay=: " answer
tput setaf 1
# (2) handle the command line argument we were given
while true
do
  case $answer in
   [1]* ) mpv 'http://www.dailymotion.com/playlist/x4lg28_JudgeJudyTV_judge-judy-2016/1#video=x4jlm4k'
           echo "Playing Judge Judy Playlist 1"
           break;;
 
   [2]* ) mpv 'http://www.dailymotion.com/playlist/x4uxir_JudgeJudyTV_judge-judy-s22-2017/1#video=x5h1vri'
           echo "Playing Judge Judy Playlist 2"
           break;;
           
   [3]* ) mpv 'https://www.youtube.com/playlist?list=PLPlt2ahkFnsY8-bEh1t1Nzp7jmbHW_qjH'
           echo "Playing Judge Judy Playlist 3"
           break;;

   [4]* ) mpv 'https://www.youtube.com/playlist?list=PLtkzFtVLpZTxjE9kVFx1V9ZaItTQKbSDe'
           echo "Playing 2020 Playlist 1"
           break;;

   [5]* ) mpv 'https://www.youtube.com/playlist?list=PLjYTdfYGUqXWdPPBppWuk3hOpXiLwZXoM'
           echo "Playing 2020 Playlist 2"
           break;;

   [6]* ) mpv 'http://www.dailymotion.com/2020onid'
           echo "Playing 2020 On I.D"
           break;;           

   [7]* ) mpv 'http://www.dailymotion.com/datelinehd'
           echo "Playing Dateline"
           break;;  
           
   [8]* ) mpv 'http://www.dailymotion.com/crimetime-tv'
           echo "Playing CrimeTime TV"
           break;;

   [9]* ) mpv 'http://www.dailymotion.com/xDarkestRainx'
           echo "Playing Crime INC"
           break;;

   [0]* ) mpv 'http://www.dailymotion.com/realstories'
           echo "Playing Real Stories"
           break;;

   [Aa]* ) mpv 'https://www.youtube.com/channel/UCr_BjEaj9W9yB7AGmZWH-9A/feed'
           echo "Playing Tucker Dell"
           break;;

   [Bb]* ) mpv 'https://www.youtube.com/channel/UCsv_r3_m4jCAL3QehUC_hag'
           echo "Playing John Aylward"
           break;;

   [Cc]* ) mpv 'https://www.youtube.com/channel/UCmqgjSvhNMvG0msr-n14SpQ'
           echo "Playing David B. Mayes"
           break;;

   [Dd]* ) mpv 'https://www.youtube.com/playlist?list=PLUDizevuO8OonDbpnQk1pVOu2nxQKnoKy'
           echo "Playing Crime Stories "
           break;;

   [Ee]* ) mpv 'http://smart.worldiptv.in:53333/C&INetwork?auth=lgmarinov+buzemska5'
           echo "Playing Crime & Investigation "
           break;;

   [Ff]* ) mpv 'http://goo.gl/QYUP1M'
           echo "Playing London Live "
           break;;



   [Qq]* ) exit;;
   
   * )     echo -e '\E[18m'"Goodbye, do call again.\n"; break ;;
  esac
done
