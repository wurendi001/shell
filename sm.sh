#! /bin/bash
# 失落的梦 

#颜色
red(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[38m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[36m\033[01m$1\033[0m"
}
blue(){
    echo -e "\033[32m\033[01m$1\033[0m"
}


CountRunTimes() {
    if [ "$is_busybox" == 1 ]; then
        count_file=$(mktemp)
    else
        count_file=$(mktemp --suffix=RRC)
    fi
    RunTimes=$(curl -s --max-time 10 "https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwurendi001%2Fshell&count_bg=%233DC88D&title_bg=%23AE1818&icon=openstack.svg&icon_color=%23E7E7E7&title=%%20E8%BF%90%E8%A1%8C&edge_flat=true" >"${count_file}")
    TodayRunTimes=$(cat "${count_file}" | tail -3 | head -n 1 | awk '{print $5}')
    TotalRunTimes=$(cat "${count_file}" | tail -3 | head -n 1 | awk '{print $7}')
}
CountRunTimes

local_ipv4=$(curl $useNIC -4 -s --max-time 10 api64.ipify.org)
local_ipv4_asterisk=$(awk -F"." '{print $1"."$2".*.*"}' <<<"${local_ipv4}")
local_isp4=$(curl $useNIC -s -4 -A $UA_Browser --max-time 10 https://api.ip.sb/geoip/${local_ipv4} | grep organization | cut -f4 -d '"')

#IPV.SH ipv4/6优先级调整
function ipvsh(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/ipv4.sh)
}
#210 【 Linux网络优化脚本 】
function tools(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/tools.sh)
}
#212 【 域名IP证书一建申请 】
function acme(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/acme.sh)
}
#214 【 检测IP是否解锁tiktok  一键脚本 】
function tiktok(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/tiktok.sh)
}

#========================================================
#=====================科学上网工具=======================
#========================================================
#99 【 安装BBRS 】
function bbrs(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/tcp2.sh)
}
#101 【 Xray一键安装脚本 】
function vpn001(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/xr2.sh)
}
#103 【Wulabing v2ray 一键脚本 】
function vpn003(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/xr1.sh)   
} 
#105 【 233Boy 修改版 V2Ray 一键安装脚本 】
function vpn005(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/v2r3.sh) 
} 
#106 【 xui 一键安装脚本 】
function x-ui(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/x-ui.sh) 
}
#107 【 ssr 一键安装脚本 】
function ssr(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/ssr.sh) 
} 
#108  iptables.sh iptable中转
function iptsh(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/iptables.sh)
}
#123  socat 中转
function socat(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/socat.sh)
}
#========================================================
#主菜单
function start_menu(){
    yum install -y curl wget 2> /dev/null || apt install -y curl wget
    clear
    yellow " =================== 免费脚本项目描述内容 ============================ "
    green "               ${RED}Xray一键安装脚本${PLAIN}"

    red   " 作者： (失落的梦) 常用综合脚本包 " 
    green " 联系微信：Falltoher-1314 "
    green " QQ:1150315739 "
    green " 博客1：https://www.kehu33.asia "
    yellow " ================== 科学上网工具 ============================ "
    blue " 99.【 BBRS加速另外一个版本 一键脚本 】"
    blue " 1.【 Xray一键安装脚本】"      
    blue " 4.【 Wulabing v2ray 一键脚本 】" 
    blue " 5.【 233boy V2Ray 一键安装脚本 】"
    blue " 6.【 x-ui 一键脚本 】"
    blue " 7.【 ssr 一键脚本 】 "    
    yellow " ================= 中转 ============== "
    blue " 12. iptables 中转 "
    blue " 13. socat 中转 "      	      
    yellow " =================== 服务器检查 ============================== "
    green " 20. 检测IP是否解锁tiktok 一键脚本 "	
    green " 27. ipv4/6优先级调整 " 
    green " 29. Linux，tcp网络优化 一键脚本 "   
    green " 38.  域名ip证书续签 一键脚本 "
    green " 39.  欺诈分数以及IP质量检测 一件代码"
    yellow " ========================================================= "   
    blue "     ** 使用时间: $(date)"
    blue " ${Font_Yellow}检测脚本当天运行次数：${TodayRunTimes}; 共计运行次数：${TotalRunTimes} ${Font_Suffix}"
    yellow " ========================================================= "
   green " 0. 退出脚本"
    echo
    read -p "请输入数字:" menuNumberInput
    case "$menuNumberInput" in
 #==================================    
		00 )
             bbr
	;;
		99 )
             bbrs
	;;
		1 )
            vpn001
	;;
		2 )
            vpn000
	;;
		3 )
            vpn002
	;;
		4 )
            vpn003
	;;
		5 )
            vpn005
	;;
		6 )
            x-ui
	;;
		7 )
            ssr
	;;		
		12 )
             iptsh
	;;
		13 )
             socat
	;;
 #==================================
		20 )
             tiktok
	;;
		23 )
             jcnf
	;;
		24 )
             getip
	;;
		25 )
             nf
	;;
		26 )
             tubecheck
	;;
 #==================================
		27 )
             ipvsh
	;;
		28 )
             vmshellvps
	;;
		29 )
             tools
	;;
		30 )
             init
	;;
		31 )
             root
	;;
		32 )
             install_6.0
	;;
		33 )
             wuren
	;;
		34 )
             acme
	;;
		35 )
             warpWARP
	;;
		36 )
             ssh_open
	;;
		37 )
             sshport
	;;
		38 )
             ssl
	;;
		39 )
             che
	;;
 #==================================
        0 )
            exit 1
        ;;
        * )
            clear
            red "请输入正确数字 !"
            start_menu
        ;;
    esac
}

start_menu "first"
