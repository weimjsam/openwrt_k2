version="21.02.3"
ramips="mt7620"
image_name="lenovo_newifi-y1"
wget https://downloads.openwrt.org/releases/${version}/targets/ramips/${ramips}/openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64

sed -i 's/16384/65536/g'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i 's/7440/120/g'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf

sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_close=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_close_wait=3'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_fin_wait=20'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_syn_recv=20'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_syn_sent=20'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_time_wait=20'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_last_ack=20'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.netfilter.nf_conntrack_tcp_timeout_max_retrans=20'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf

sed -i '$a net.ipv6.conf.all.disable_ipv6=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv6.conf.default.disable_ipv6=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf

sed -i '$a net.ipv4.tcp_tw_reuse=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_tw_recycle=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_fack=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_sack=1'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_timestamps=0'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_window_scaling=0'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_syncookies=0'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_fin_timeout=5'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.tcp_max_tw_buckets=5000'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i '$a net.ipv4.ip_local_port_range=1024 65535'  ./package/kernel/linux/files/sysctl-nf-conntrack.conf


make info
make image PROFILE=${image_name} PACKAGES="vsftpd openssh-sftp-server uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn wpad-openssl firewall  luci-i18n-firewall-zh-cn -luci-app-ddns -ddns-scripts -ddns-scripts_aliyun -ddns-scripts_dnspod -qos-scripts -wpad-basic-wolfssl -kmod-usb-ehci -kmod-usb-printer -kmod-usb-storage -kmod-usb-storage-extras -kmod-usb-uhci -kmod-usb-core -kmod-usb2 -kmod-usb3 -kmod-usb-ohci -kmod-ledtrig-usbdev -ipv6helper -dnsmasq_full_dhcpv6 -ip6tables -ip6tables-extra -ip6tables-mod-nat -kmod-ip6tables-extra -kmod-ip6tables -kmod-nf-conntrack6 -kmod-nf-ipt6 -kmod-nf-reject6 -libip6tc2 -odhcp6c -odhcpd-ipv6only -luci-proto-ipv6 -kmod-ebtables-ipv6 -kmod-fou6 -kmod-ip6-tunnel -kmod-gre6 -kmod-6lowpan -kmod-ipsec6 -kmod-ip6-vti -kmod-ipt-nat6 -kmod-ipt-raw6 -kmod-iptunnel6 -kmod-nf-nat6 -kmod-nf-reject6 -kmod-nft-nat6 -kmod-udptunnel6 -kmod-sit -logd " CONFIG_IPV6=n CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n CONFIG_KERNEL_ELF_CORE=n CONFIG_KERNEL_DEBUG_KERNEL=n CONFIG_STRIP_KERNEL_EXPORTS=y CONFIG_KERNEL_SWAP=n CONFIG_KERNEL_PRINTK=n CONFIG_KERNEL_PRINTK_TIME=n CONFIG_COLLECT_KERNEL_DEBUG=n CONFIG_REPRODUCIBLE_DEBUG_INFO=n


# test：tc kmod-ifb kmod-sched kmod-sched-core kmod-netem 
# mt7620：phicomm_psg1218a lenovo_newifi-y1  
# mt7621：phicomm_k2p d-team_newifi-d2 
