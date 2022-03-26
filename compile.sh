 version="21.02.2"
 ramips="mt7620"
 wget https://downloads.openwrt.org/releases/${version}/targets/ramips/${ramips}/openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
 xz -d openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
 tar -xvf openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar
 cd openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64
 make info
 make image PROFILE=d-team_newifi-d2 PACKAGES="vsftpd openssh-sftp-server tc  kmod-ifb kmod-sched kmod-sched-core kmod-netem uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-base luci-app-firewall luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap  luci-i18n-base-zh-cn wpad-openssl luci-app-ddns -wpad-basic-wolfssl -kmod-usb-core -kmod-usb2 -kmod-usb-ohci -kmod-ledtrig-usbdev -kmod-nf-conntrack6 -kmod-nf-ipt6 -libip6tc -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n

# phicomm_psg1218a lenovo_newifi-y1 mt7620 、d-team_newifi-d2 mt7621
