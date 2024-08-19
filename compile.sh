version="23.05.4"
targets="ramips"
mips="mt7621"
image_name="d-team_newifi-d2"

# Download and extract the OpenWrt imagebuilder
# wget https://downloads.openwrt.org/releases/${version}/targets/${targets}/${mips}/openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz
wget https://downloads.openwrt.org/releases/${version}/targets/${targets}/${mips}/openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64

# Install the necessary packages and plugins
make info
make image PROFILE=${image_name} PACKAGES="\
htop uhttpd openssh-sftp-server luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn luci-i18n-opkg-zh-cn \
-luci-app-ddns -ddns-scripts -ddns-scripts_aliyun -ddns-scripts_dnspod -qos-scripts -kmod-usb-ehci -kmod-usb-printer -kmod-usb-storage -kmod-usb-storage-extras -kmod-usb-uhci -kmod-usb-core -kmod-usb2 -kmod-usb3 -kmod-usb-ohci -kmod-ledtrig-usbdev -ipv6helper -dnsmasq_full_dhcpv6 -ip6tables -ip6tables-extra -ip6tables-mod-nat -kmod-ip6tables-extra -kmod-ip6tables -kmod-nf-conntrack6 -kmod-nf-ipt6 -kmod-nf-reject6 -libip6tc2 -odhcp6c -odhcpd-ipv6only -luci-proto-ipv6 -kmod-ebtables-ipv6 -kmod-fou6 -kmod-ip6-tunnel -kmod-gre6 -kmod-6lowpan -kmod-ipsec6 -kmod-ip6-vti -kmod-ipt-nat6 -kmod-ipt-raw6 -kmod-iptunnel6 -kmod-nf-nat6 -kmod-nf-reject6 -kmod-nft-nat6 -kmod-udptunnel6 -kmod-sit -firewall4 -nftables -kmod-nft-offload\
libevent2-7 libopenssl3 \
-firewall4 firewall -nftables iptables-legacy  ip6tables-legacy  -kmod-nft-offload kmod-ipt-offload \
" CONFIG_IPV6=n CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n CONFIG_KERNEL_ELF_CORE=n CONFIG_KERNEL_DEBUG_KERNEL=n CONFIG_STRIP_KERNEL_EXPORTS=y CONFIG_KERNEL_SWAP=n CONFIG_KERNEL_PRINTK=n CONFIG_KERNEL_PRINTK_TIME=n CONFIG_COLLECT_KERNEL_DEBUG=n CONFIG_REPRODUCIBLE_DEBUG_INFO=n


# ramips mt7620：phicomm_psg1218a   lenovo_newifi-y1  
# ramips mt7621：phicomm_k2p、d-team_newifi-d2、xiaomi_mi-router-4a-gigabit
# mediatek mt7622: xiaomi_redmi-router-ax6s
# ipq807x  generic: redmi_ax6

# proxy ### libevent2 iptables-nft iptables-mod-nat-extra 
# tc ### tc kmod-ifb kmod-sched kmod-sched-core kmod-netem \
# AP ### relayd luci-proto-relay 
# python ### python3 python3-pip screen 
# init ### htop kmod-tcp-bbr uhttpd openssh-sftp-server luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn 
# smartdns ### smartdns luci-app-smartdns luci-i18n-smartdns-zh-cn

# 21.02.7 ### base-files ca-bundle dropbear fstools libc libgcc libustream-wolfssl logd mtd netifd opkg uci uclient-fetch urandom-seed urngd busybox procd kmod-leds-gpio kmod-gpio-button-hotplug wpad-basic-wolfssl dnsmasq firewall ip6tables iptables kmod-ipt-offload odhcp6c odhcpd-ipv6only ppp ppp-mod-pppoe
# 23.05.2 ### base-files ca-bundle dropbear fstools libc libgcc libustream-mbedtls -logd mtd netifd opkg uci uclient-fetch urandom-seed urngd busybox procd procd-ujail procd-seccomp kmod-leds-gpio kmod-gpio-button-hotplug kmod-mt7622-firmware wpad-basic-mbedtls uboot-envtools dnsmasq firewall4 nftables kmod-nft-offload odhcp6c odhcpd-ipv6only ppp ppp-mod-pppoe \
