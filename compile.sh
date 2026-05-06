version="24.10.6"
targets="ramips"
mips="mt7621"  
image_name="xiaomi_mi-router-4a-gigabit-v2"

# Download and extract the OpenWrt imagebuilder
# wget https://downloads.openwrt.org/releases/${version}/targets/${targets}/${mips}/openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz 

# openwrt 官方版
wget https://downloads.openwrt.org/releases/${version}/targets/${targets}/${mips}/openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.zst

# immortalwrt 三方分支
#wget https://downloads.immortalwrt.org/releases/${version}/targets/${targets}/${mips}/immortalwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.zst

#xz -d openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz
zstd -d openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.zst
tar -xvf openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64


# Install the necessary packages and plugins 
make info
make -j$(nproc) image PROFILE=${image_name} PACKAGES="\
htop uhttpd openssh-sftp-server luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn bash dnsmasq \
curl ca-bundle unzip luci kmod-tcp-bbr kmod-macvlan \
libevent2-7 libopenssl3 kmod-ipt-nat \
-ddns-scripts -ddns-scripts_aliyun -ddns-scripts_dnspod -ip6t_REJECT -ip6tables -ip6tables-extra -ip6tables-mod-nat -ipv6helper \
-kmod-6lowpan -kmod-ebtables-ipv6 -kmod-fou6 -kmod-gre6 -kmod-ip6-tunnel -kmod-ip6-vti -kmod-ip6tables -kmod-ip6tables-extra -kmod-ipsec6 \
-kmod-ipt-nat6 -kmod-ipt-raw6 -kmod-iptunnel6 -kmod-ipv6 -kmod-ledtrig-usbdev -kmod-netfilter -kmod-nf-conntrack -kmod-nf-conntrack6 -kmod-nf-flow \
-kmod-nf-ipt6 -kmod-nf-log -kmod-nf-log6 -kmod-nf-nat -kmod-nf-nat6 -kmod-nf-reject -kmod-nf-reject6 -kmod-nft-arp -kmod-nft-bridge -kmod-nft-nat6 -kmod-sit \
-kmod-udptunnel6 -kmod-usb-common -kmod-usb-core -kmod-usb-ehci -kmod-usb-ohci -kmod-usb-printer -kmod-usb-storage -kmod-usb-storage-extras -kmod-usb-uhci \
-kmod-usb2 -kmod-usb3 -libip6tc -libip6tc2 -libiptext6-0 -luci-app-ddns -luci-proto-ipv6 -nf_defrag_ipv6 \
-nf_reject_ipv6 -nf_tproxy_ipv6 -nft_reject_ipv6 -odhcp6c -odhcpd-ipv6only -qos-scripts \
ipset libipset13 kmod-ipt-ipset iptables-mod-conntrack-extra kmod-ipt-conntrack-extra kmod-ipt-conntrack kmod-nf-conncount iptables-mod-ipopt kmod-ipt-ipopt \
ip-tiny iptables-nft kmod-ipt-core xtables-nft kmod-nft-compat kmod-nf-ipt libiptext-nft0 libiptext0 libxtables12  \
" CONFIG_NF_CONNTRACK_IPV6=n CONFIG_DEBUG=n CONFIG_DEBUG_KERNEL=n ﻿CONFIG_USB=n CONFIG_SLUB_DEBUG=n CONFIG_BUG=n CONFIG_KALLSYMS=n CONFIG_NF_TABLES=n CONFIG_DEBUG_FS=n CONFIG_PRINTK=n CONFIG_IPV6=n CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n CONFIG_KERNEL_ELF_CORE=n CONFIG_KERNEL_DEBUG_KERNEL=n CONFIG_KERNEL_SWAP=n CONFIG_KERNEL_PRINTK=n CONFIG_KERNEL_PRINTK_TIME=n CONFIG_COLLECT_KERNEL_DEBUG=n CONFIG_REPRODUCIBLE_DEBUG_INFO=n CONFIG_CRYPTO_USER_API_HASH=n CONFIG_CRYPTO_USER_API_SKCIPHER=n


# proxy2 # libevent2-7 libopenssl3 kmod-ipt-nat \
# luci-app-mwan3 mwan3 kmod-macvlan libevent2-7 libopenssl3 \ kmod-ipt-conntrack kmod-nf-ipt iptables-nft iptables-mod-ipopt iptables-mod-conntrack-extra \
# curl ca-bundle kmod-tun kmod-inet-diag unzip luci-compat luci \
# curl ca-bundle ipset ip-full iptables-mod-tproxy iptables-mod-extra ruby ruby-yaml kmod-tun kmod-inet-diag unzip luci-compat luci dnsmasq-full \
# ipq807x  generic: redmi_ax6
# mediatek mt7622: xiaomi_redmi-router-ax6s
# htop uhttpd openssh-sftp-server luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn
# ramips mt7620：phicomm_psg1218a、lenovo_newifi-y1  
# ramips mt7621：phicomm_k2p、d-team_newifi-d2、xiaomi_mi-router-4a-gigabit-v2、xiaomi_mi-router-4a-gigabit

# fw4 : -firewall4 -nftables -kmod-nft-offload -kmod-nft-offload -nftables -kmod-nft-core -kmod-nft-nat -kmod-nft-fib -libnftnl -libnftables \
# fw3 : firewall iptables-legacy kmod-ipt-offload kmod-ipt-nat kmod-ipt-conntrack kmod-ipt-conntrack-extra iptables-mod-conntrack-extra kmod-ipt-raw \
# mwan3 : mwan3 luci-app-mwan3 kmod-macvlan \

# proxy ### libevent2-7 iptables-nft iptables-mod-nat-extra libopenssl3 \
# tc ### tc kmod-ifb kmod-sched kmod-sched-core kmod-netem \
# AP ### relayd luci-proto-relay \
# python ### python3 python3-pip screen \
# init ### htop kmod-tcp-bbr uhttpd openssh-sftp-server luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn luci-i18n-opkg-zh-cn 
# smartdns ### smartdns luci-app-smartdns luci-i18n-smartdns-zh-cn

# 21.02.7 ### base-files ca-bundle dropbear fstools libc libgcc libustream-wolfssl logd mtd netifd opkg uci uclient-fetch urandom-seed urngd busybox procd kmod-leds-gpio kmod-gpio-button-hotplug wpad-basic-wolfssl dnsmasq firewall ip6tables iptables kmod-ipt-offload odhcp6c odhcpd-ipv6only ppp ppp-mod-pppoe
# 23.05.2 ### base-files ca-bundle dropbear fstools libc libgcc libustream-mbedtls -logd mtd netifd opkg uci uclient-fetch urandom-seed urngd busybox procd procd-ujail procd-seccomp kmod-leds-gpio kmod-gpio-button-hotplug kmod-mt7622-firmware wpad-basic-mbedtls uboot-envtools dnsmasq firewall4 nftables kmod-nft-offload odhcp6c odhcpd-ipv6only ppp ppp-mod-pppoe \
