version="21.02.7"
mips="mt7621"
targets="ramips"
image_name="d-team_newifi-d2"
wget https://downloads.openwrt.org/releases/${version}/targets/${targets}/${mips}/openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-${targets}-${mips}.Linux-x86_64

make info
make image PROFILE=${image_name} PACKAGES="tc kmod-ifb kmod-sched kmod-sched-core kmod-netem /
luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn wpad-openssl vsftpd openssh-sftp-server uhttpd uhttpd-mod-ubus vsftpd openssh-sftp-server uhttpd uhttpd-mod-ubus  -logd " CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n CONFIG_KERNEL_DEBUG_KERNEL=n CONFIG_KERNEL_PRINTK_TIME=n CONFIG_COLLECT_KERNEL_DEBUG=n CONFIG_REPRODUCIBLE_DEBUG_INFO=n

# test：tc kmod-ifb kmod-sched kmod-sched-core kmod-netem \ luci-app-smartdns luci-i18n-smartdns-zh-cn smartdns 
# bak ： firewall luci-i18n-firewall-zh-cn \ luci-app-openclash  kmod-inet-diag  kmod-nft-tproxy
# ramips mt7620：phicomm_psg1218a   lenovo_newifi-y1  
# ramips mt7621：phicomm_k2p   d-team_newifi-d2 
# mediatek mt7622: xiaomi_redmi-router-ax6s
