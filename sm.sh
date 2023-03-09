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


#服务器检查项目
#Lemonbench 综合测试
function Lemonbench(){
curl -fsL https://ilemonra.in/LemonBenchIntl | bash -s fast
}

#三网Speedtest测速
function 3speed(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/superspeed.sh)
}

#Route-trace 回城路由追踪
function jcnf(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/jcnf.sh)
}

#获取本机IP
function getip(){
echo  
curl ip.p3terx.com
echo
}

#流媒体解锁测试
function nf(){

bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/nf.sh)
}

#检测/诊断Youtube地域
function tubecheck(){
wget -O "/root/tubecheck" "https://cdn.jsdelivr.net/gh/sjlleo/TubeCheck/CDN/tubecheck_1.0beta_linux_amd64" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tubecheck"
chmod 777 "/root/tubecheck"
yellow "下载完成,之后可执行 ./tubecheck 再次运行"
./tubecheck
}

#IPV.SH ipv4/6优先级调整
function ipvsh(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/ipv4.sh)
}
#302 【 VPS内存日志自动清理 】
function vmshellvps(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/vmshellvps.sh)
}
#301 【 一键修改root密码 】
function root(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/root.sh)
}
#210 【 Linux网络优化脚本 】
function tools(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/tools.sh)
}
#211  宝塔面板免验证(中文破解版
function install_6.0(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/install_6.0.sh)
}
#212 【 域名IP证书一建申请 】
function acme(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/acme.sh)
}
#213 【 WARP 一键安装脚本 】
function warpWARP(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/warpWARP.sh)
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
#301 【 Xray另外一个修改版一键安装脚本 】
function vpn000(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/xr0.sh)
}
#102 【八合一共存脚本 】
function vpn002(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/v2r2.sh)
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
#109  gost一键中转
function gost(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/gost.sh)
}
#112  SSH开启密码、ROOT登录👊
function ssh_open(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/ssh_open.sh)
}
#113  SSH端口更换默认22👊
function sshport(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/sshport.sh)
}
#114  Ehco隧道中转👊
function ehco(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/ehco.sh)
}
#115  域名ip证书续签 一键脚本👊
function ssl(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/ssl.sh)
}
#118  brooks中转👊
function brooks(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/brooks.sh)
}
#119  欺诈分数以及IP质量检测👊
function che(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/che.sh)
}
#123  socat 中转
function socat(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/socat.sh)
}
#124  tinymapper 中转
function tinymapper(){
bash <(curl -s -L https://raw.githubusercontent.com/wurendi001/shell/main/tinymapper.sh)
}
#========================================================
#主菜单
function start_menu(){
    yum install -y curl
    sudo apt install -y curl
    yum install -y curl wget 2> /dev/null || apt install -y curl wget
    yum update -y && yum install -y curl && yum install -y socat && yum install wget -y
    apt update -y && apt install -y curl && apt install -y socat && apt install wget -y
    clear
    yellow " =================== 收费脚本项目描述内容 ============================ "
    green "               ${RED}Xray一键安装脚本${PLAIN}"

    red   " 作者： (失落的梦) 常用综合脚本包 " 
    green " 联系微信：Falltoher-1314 "
    green " QQ:1150315739 "
    green " 博客1：https://www.kehu33.asia "
    yellow " ===================科学上网工具============================ "
    blue " 99.【 BBRS加速另外一个版本 一键脚本 】"
    blue " 1.【 Xray一键安装脚本】"   
    blue " 2.【 Xray另外一个版本 一键安装脚本 】" 
    blue " 3.【 八合一共存 一键脚本 】"    
    blue " 4.【 Wulabing v2ray 一键脚本 】" 
    blue " 5.【 233boy V2Ray 一键安装脚本 】"
    blue " 6.【 x-ui 一键脚本 】"
    blue " 7.【 ssr 一键脚本 】 "
    blue " 9.【 naiveproxy 一键脚本 "    
    yellow " ================= 中转 ============== "
    blue " 12. iptables 中转 "
    blue " 13. socat 中转 "
    blue " 14. tinymapper 中转 "       
    blue " 15. gost 一键中转 "	
    blue " 16. Ehco隧道一键中转 "	
    blue " 17. brooks 一键中转"       
    yellow " ===================服务器检查============================== "
    green " 20. 检测IP是否解锁tiktok 一键脚本 "
    green " 21. Lemonbench 综合测试 "
    green " 22. 三网Speedtest测速 "
    green " 23. 回程路由追踪 " 
    green " 24. 获取本机IP "
    green " 25. 流媒体解锁测试 "
    green " 26. 检测/诊断Youtube地域 "	
    yellow " ====================服务器功能============================== "
    green " 27. ipv4/6优先级调整 " 
    green " 28. VPS内存日志自动清理 "
    green " 29. Linux，tcp网络优化 一键脚本 "
    green " 31. 【 一键修改root密码 】 "
    green " 32. 宝塔面板免验证(中文破解版) 推荐使用 "
    green " 34. 域名ip证书 一键申请脚本 "
    green " 35. 【 WARP 一键安装脚本】"
    green " 36. 【 开启SSH 密码登陆、替换ROOT密钥登陆 】"
    green " 37. 【 修改SSH 端口默认22，或厂家给的默认的端口 】"   
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
		8 )
            ssr2
	;;
		9 )
            naiveproxy
	;;
		10 )
            trojan1
	;;
		11 )
             trojan2
	;;		
		12 )
             iptsh
	;;
		13 )
             socat
	;;
		14 )
             tinymapper
	;;								
		15 )
             gost
	;;
		16 )
             ehco
	;;
		17 )
             brooks
	;;
		18 )
             xd
	;;
		19 )
             jiguang
	;;
 #==================================
		20 )
             tiktok
	;;
		21 )
             Lemonbench
	;;
		22 )
             3speed
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
		40 )
             nginx
	;;
		41 )
             nginx2
	;;
		42 )
               Inl
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