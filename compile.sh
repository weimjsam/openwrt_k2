 version="21.02.2"
 wget https://downloads.openwrt.org/releases/${version}/targets/ramips/mt7620/openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
 xz -d openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar.xz
 tar -xvf openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64.tar
 cd openwrt-imagebuilder-${version}-ramips-mt7620.Linux-x86_64
 make info
 make image PROFILE=d-team_newifi-d2 PACKAGES="vsftpd openssh-sftp-server tc  kmod-ifb kmod-sched kmod-sched-core kmod-netem uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-base luci-app-firewall luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap  luci-i18n-base-zh-cn wpad-openssl luci-app-ddns -wpad-basic-wolfssl -ip6tables -odhcp6c -kmod-ipv6 -kmod-ip6tables -odhcpd-ipv6only" CONFIG_IPV6=n
