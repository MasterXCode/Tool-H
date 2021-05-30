setup(){
  echo''
  echo -e '\e[1;31m'
  echo -e "Hello User please tell me your Terminal type" ;
  echo''
  echo''
  echo -e "1) Termux"
  echo''
  echo -e "2) Kali_Linux"
  echo''
  read -p "[*]××××(Type a Number)--> " userinput1;
  #
  if [ "${userinput1:-}" = "1" ]
  then
       apt update
       clear && apt install dnsutils netcat telnet tree steghide nmap neofetch -y
       echo'' && echo -e "Done...!"  && echo ''
       cp Tool-H.sh /$PREFIX/bin/Tool-H
       chmod +x /$PREFIX/bin/Tool-H
       echo " Run it by Typing >> Tool-H"
  elif [ "${userinput1:-}" = "2" ]
  then
       apt update
       clear && apt install dnsutils net-tools netcat telnet tree steghide nmap neofetch -y
       echo'' && echo -e "Done...!"  && echo ''
       cp Tool-H.sh /usr/bin/Tool-H
       chmod +x /usr/bin/Tool-H
       echo " Run it by Typing >> Tool-H"
  else
       echo ''
       echo -e "Error.... oh man"
       sleep 2
       setup
  fi
}
setup
