function update(){
clear
cd /usr/bin/
rm -rf /usr/bin/enc
cd
mkdir -p /usr/bin
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m# "
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    rm -rf /usr/bin/menu
    rm -rf /usr/bin/menu.zip
    rm -rf /usr/bin/menu-set
    rm -rf /usr/bin/menu
    rm -rf /usr/bin/tmenu
    rm -rf /usr/bin/hmenu
    rm -rf /usr/bin/menu-xray
    rm -rf /usr/bin/menu-ssh
    rm -rf /usr/bin/bot-menu
    rm -rf /usr/bin/bmenu
    rm -rf /usr/bin//backup
    rm -rf /usr/bin/cfg-vle
    rm -rf /usr/bin/cfg-vme
    rm -rf /usr/bin/cfg-tro
    rm -rf /usr/bin/cfg-ssr
    rm -rf /usr/bin/cfg-ssh
    rm -rf /usr/bin/limit-ssh
    rm -rf /usr/bin/limit-xray
    rm -rf /usr/bin/loop
    rm -rf /usr/bin/xp
    rm -rf /usr/bin/ws
    cd /usr/bin
    wget https://raw.githubusercontent.com/lunatixmyscript/lunatixv2/main/LTv2
    wget -q -O /usr/bin/enc "https://raw.githubusercontent.com/lunatixmyscript/lunatixvpn/main/encrypt" ; chmod +x /usr/bin/enc
    7z e -paskykenza123 LTv2
    unzip LTv2
    enc menu/*
    mv menu/* /usr/bin
    chmod 777 /usr/bin/*
    cd /root/
    rm -rf menu
    rm -rf LTv2
    rm -rf menu.zip
    rm -rf update.sh
    rm -rf update
    rm -rf /root/menu
    rm -rf /root/menu.zip
    rm -rf /root/menu-set
    rm -rf /root/menu
    rm -rf /root/tmenu
    rm -rf /root/hmenu
    rm -rf /root/menu-xray
    rm -rf /root/menu-ssh
    rm -rf /root/bot-menu
    rm -rf /root/bmenu
    rm -rf /root/backup
    rm -rf /root/cfg-vle
    rm -rf /root/cfg-vme
    rm -rf /root/cfg-tro
    rm -rf /root/cfg-ssr
    rm -rf /root/cfg-ssh
    rm -rf /root/limit-ssh
    rm -rf /root/limit-xray
    rm -rf /root/loop
    rm -rf /root/xp
    rm -rf /root/ws

}
netfilter-persistent
clear
echo -e "\033[96;1m┌───────────────────────────────────────────┐\033[0m "
echo -e " \e[1;97;104m               UPDATE SCRIPT         \e[0m"
echo -e "\033[96;1m└───────────────────────────────────────────┘\033[0m "
echo -e ""
echo -e "  \033[1;91m Ipdate version Script\033[1;37m"
fun_bar 'res1'
echo -e "\033[96;1m└───────────────────────────────────────────┘\033[0m "
echo -e ""
echo -e "\033[92mWait in  3 sec..\033[0m"
sleep 3
menu
}
update
