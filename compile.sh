version="22.03.3"
ramips="mt7621"
image_name="d-team_newifi-d2"
wget https://downloads.openwrt.org/releases/${version}/targets/ramips/${ramips}/openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64
make info
make image PROFILE=${image_name} PACKAGES="wget-ssl coreutils-nohup bash curl ca-certificates ipset ip-full libcap libcap-bin ruby ruby-yaml kmod-tun unzip kmod-nft-tproxy luci-compat iptables-nft   \
luci-i18n-firewall-zh-cn vsftpd openssh-sftp-server uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn wpad-openssl   \
-dnsmasq -luci-app-ddns -ddns-scripts -ddns-scripts_aliyun -ddns-scripts_dnspod -qos-scripts -wpad-basic-wolfssl -kmod-usb-ehci -kmod-usb-printer -kmod-usb-storage -kmod-usb-storage-extras -kmod-usb-uhci -kmod-usb-core -kmod-usb2 -kmod-usb3 -kmod-usb-ohci -kmod-ledtrig-usbdev -libip6tc2 -ipv6helper  -ip6tables -odhcp6c -odhcpd-ipv6only   -dnsmasq_full_dhcpv6 -logd -usb -kmod-usbip -kmod-usbip-client -kmod-usbip-server -kmod-usb-ohci-pci"  \
CONFIG_DEBUG_KERNEL=n CONFIG_DEBUG_INFO=n CONFIG_DEBUG_FS=n CONFIG_DEBUG_SECTION_MISMATCH=n CONFIG_DEBUG_FORCE_WEAK_PER_CPU=n CONFIG_DEBUG_KERNEL_FPU=n CONFIG_DEBUG_ATOMIC_SLEEP=n CONFIG_DEBUG_LIST=n CONFIG_DEBUG_PI_LIST=n CONFIG_DEBUG_SG=n CONFIG_DEBUG_NOTIFIERS=n CONFIG_DEBUG_CREDENTIALS=n CONFIG_DEBUG_TIMING_VIRTUAL=n CONFIG_DEBUG_LOCK_ALLOC=n CONFIG_DEBUG_LOCK_ALLOCATIONS=n CONFIG_DEBUG_ATOMIC_RCU=n CONFIG_DEBUG_BLOCK_EXT_DEVT=n CONFIG_DEBUG_KMEMLEAK=n CONFIG_DEBUG_OBJECTS=n CONFIG_DEBUG_OBJECTS_FREE=n CONFIG_DEBUG_OBJECTS_TIMERS=n CONFIG_DEBUG_OBJECTS_WORK=n CONFIG_DEBUG_OBJECTS_PERCPU_COUNTER=n CONFIG_DEBUG_OBJECTS_ENABLE_DEFAULT=n CONFIG_DEBUG_MISC_INIT=n CONFIG_DEBUG_RODATA_TEST=n CONFIG_DEBUG_STACK_USAGE=n CONFIG_DEBUG_VM=n CONFIG_DEBUG_VM_VMACACHE=n CONFIG_DEBUG_VM_PGTABLE=n CONFIG_DEBUG_VM_PGTABLE_LIMIT=n CONFIG_DEBUG_VIRTUAL=n CONFIG_DEBUG_WRITECOUNT=n CONFIG_DEBUG_MEMORY_INIT=n CONFIG_DEBUG_PER_CPU_MAPS=n CONFIG_DEBUG_HIGHMEM=n CONFIG_DEBUG_PREEMPT=n CONFIG_DEBUG_PREEMPT_RT=n CONFIG_DEBUG_SPINLOCK=n CONFIG_DEBUG_MUTEXES=n CONFIG_DEBUG_SPINLOCK_SLEEP=n CONFIG_DEBUG_LOCKING_API_SELFTESTS=n CONFIG_DEBUG_RT_MUTEXES=n CONFIG_DEBUG_SPINLOCK_SELFTEST=n CONFIG_DEBUG_LOCKDEP=n CONFIG_DEBUG_LOCKDEP_RCU=n CONFIG_PROVE_LOCKING=n CONFIG_LOCK_STAT=n CONFIG_LOCKDEP_SMALL=n CONFIG_DEBUG_STACKOVERFLOW=n CONFIG_DEBUG_STACK_VALIDATION=n CONFIG_DEBUG_SLAB=n CONFIG_DEBUG_KMEMLEAK_EARLY_LOG_SIZE=4000 CONFIG_DEBUG_KMEMLEAK_DEFAULT_OFF=n CONFIG_DEBUG_PAGEALLOC=n CONFIG_DEBUG_OBJECT_OVERFLOW=n CONFIG_DEBUG_KOBJECT_RELEASE=n CONFIG_DEBUG_FAULT_INJECTION=n CONFIG_DEBUG_FS_ALLOW_ALL=n CONFIG_PRINTK_TIME=n CONFIG_PRINTK_CALLER=n CONFIG_DEBUG_INFO_REDUCED=n CONFIG_DEBUG_INFO_COMPRESSED=n CONFIG_DEBUG_INFO_SPLIT=n CONFIG_DEBUG_INFO_DWARF4=n CONFIG_ENABLE_WARN_DEPRECATED=n CONFIG_ENABLE_MUST_CHECK=n CONFIG_FRAME_POINTER=n CONFIG_PACKAGE_kmod-usb-core=n CONFIG_PACKAGE_kmod-usb2=n CONFIG_PACKAGE_kmod-usb-ohci=n CONFIG_PACKAGE_kmod-usb-storage=n CONFIG_PACKAGE_kmod-usb-uhci=n CONFIG_PACKAGE_kmod-usb3=n CONFIG_PACKAGE_kmod-usbip=n CONFIG_PACKAGE_kmod-usbip-client=n CONFIG_PACKAGE_kmod-usbip-server=n CONFIG_PACKAGE_kmod-usb-ohci-pci=n CONFIG_IPV6=n  CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n CONFIG_KERNEL_ELF_CORE=n CONFIG_KERNEL_DEBUG_KERNEL=n CONFIG_STRIP_KERNEL_EXPORTS=y CONFIG_KERNEL_SWAP=n CONFIG_KERNEL_PRINTK=n CONFIG_KERNEL_PRINTK_TIME=n CONFIG_COLLECT_KERNEL_DEBUG=n CONFIG_REPRODUCIBLE_DEBUG_INFO=n

# test：tc kmod-ifb kmod-sched kmod-sched-core kmod-netem 
# bak ： firewall luci-i18n-firewall-zh-cn \ luci-app-openclash  kmod-inet-diag  kmod-nft-tproxy
# mt7620：phicomm_psg1218a   lenovo_newifi-y1  
# mt7621：phicomm_k2p   d-team_newifi-d2 
# OpenClash ：-dnsmasq version="21.02.5"
ramips="mt7621"
image_name="d-team_newifi-d2"
wget https://downloads.openwrt.org/releases/${version}/targets/ramips/${ramips}/openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
xz -d openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar.xz
tar -xvf openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64.tar
cd openwrt-imagebuilder-${version}-ramips-${ramips}.Linux-x86_64
make info
make image PROFILE=${image_name} PACKAGES="wget-ssl coreutils-nohup bash iptables curl ca-certificates ipset ip-full iptables-mod-tproxy iptables-mod-extra libcap libcap-bin ruby ruby-yaml kmod-tun unzip luci-compat \
luci-i18n-firewall-zh-cn vsftpd openssh-sftp-server uhttpd uhttpd-mod-ubus libiwinfo-lua luci-base luci-base luci-proto-ppp luci-mod-admin-full luci-theme-bootstrap luci-i18n-base-zh-cn wpad-openssl   \
-dnsmasq -luci-app-ddns -ddns-scripts -ddns-scripts_aliyun -ddns-scripts_dnspod -qos-scripts -wpad-basic-wolfssl -kmod-usb-ehci -kmod-usb-printer -kmod-usb-storage -kmod-usb-storage-extras -kmod-usb-uhci -kmod-usb-core -kmod-usb2 -kmod-usb3 -kmod-usb-ohci -kmod-ledtrig-usbdev -libip6tc2 -ipv6helper  -ip6tables -odhcp6c -odhcpd-ipv6only   -dnsmasq_full_dhcpv6 -logd -usb -kmod-usbip -kmod-usbip-client -kmod-usbip-server -kmod-usb-ohci-pci"  \
CONFIG_DEBUG_KERNEL=n CONFIG_DEBUG_INFO=n CONFIG_DEBUG_FS=n CONFIG_DEBUG_SECTION_MISMATCH=n CONFIG_DEBUG_FORCE_WEAK_PER_CPU=n CONFIG_DEBUG_KERNEL_FPU=n CONFIG_DEBUG_ATOMIC_SLEEP=n CONFIG_DEBUG_LIST=n CONFIG_DEBUG_PI_LIST=n CONFIG_DEBUG_SG=n CONFIG_DEBUG_NOTIFIERS=n CONFIG_DEBUG_CREDENTIALS=n CONFIG_DEBUG_TIMING_VIRTUAL=n CONFIG_DEBUG_LOCK_ALLOC=n CONFIG_DEBUG_LOCK_ALLOCATIONS=n CONFIG_DEBUG_ATOMIC_RCU=n CONFIG_DEBUG_BLOCK_EXT_DEVT=n CONFIG_DEBUG_KMEMLEAK=n CONFIG_DEBUG_OBJECTS=n CONFIG_DEBUG_OBJECTS_FREE=n CONFIG_DEBUG_OBJECTS_TIMERS=n CONFIG_DEBUG_OBJECTS_WORK=n CONFIG_DEBUG_OBJECTS_PERCPU_COUNTER=n CONFIG_DEBUG_OBJECTS_ENABLE_DEFAULT=n CONFIG_DEBUG_MISC_INIT=n CONFIG_DEBUG_RODATA_TEST=n CONFIG_DEBUG_STACK_USAGE=n CONFIG_DEBUG_VM=n CONFIG_DEBUG_VM_VMACACHE=n CONFIG_DEBUG_VM_PGTABLE=n CONFIG_DEBUG_VM_PGTABLE_LIMIT=n CONFIG_DEBUG_VIRTUAL=n CONFIG_DEBUG_WRITECOUNT=n CONFIG_DEBUG_MEMORY_INIT=n CONFIG_DEBUG_PER_CPU_MAPS=n CONFIG_DEBUG_HIGHMEM=n CONFIG_DEBUG_PREEMPT=n CONFIG_DEBUG_PREEMPT_RT=n CONFIG_DEBUG_SPINLOCK=n CONFIG_DEBUG_MUTEXES=n CONFIG_DEBUG_SPINLOCK_SLEEP=n CONFIG_DEBUG_LOCKING_API_SELFTESTS=n CONFIG_DEBUG_RT_MUTEXES=n CONFIG_DEBUG_SPINLOCK_SELFTEST=n CONFIG_DEBUG_LOCKDEP=n CONFIG_DEBUG_LOCKDEP_RCU=n CONFIG_PROVE_LOCKING=n CONFIG_LOCK_STAT=n CONFIG_LOCKDEP_SMALL=n CONFIG_DEBUG_STACKOVERFLOW=n CONFIG_DEBUG_STACK_VALIDATION=n CONFIG_DEBUG_SLAB=n CONFIG_DEBUG_KMEMLEAK_EARLY_LOG_SIZE=4000 CONFIG_DEBUG_KMEMLEAK_DEFAULT_OFF=n CONFIG_DEBUG_PAGEALLOC=n CONFIG_DEBUG_OBJECT_OVERFLOW=n CONFIG_DEBUG_KOBJECT_RELEASE=n CONFIG_DEBUG_FAULT_INJECTION=n CONFIG_DEBUG_FS_ALLOW_ALL=n CONFIG_PRINTK_TIME=n CONFIG_PRINTK_CALLER=n CONFIG_DEBUG_INFO_REDUCED=n CONFIG_DEBUG_INFO_COMPRESSED=n CONFIG_DEBUG_INFO_SPLIT=n CONFIG_DEBUG_INFO_DWARF4=n CONFIG_ENABLE_WARN_DEPRECATED=n CONFIG_ENABLE_MUST_CHECK=n CONFIG_FRAME_POINTER=n CONFIG_PACKAGE_kmod-usb-core=n CONFIG_PACKAGE_kmod-usb2=n CONFIG_PACKAGE_kmod-usb-ohci=n CONFIG_PACKAGE_kmod-usb-storage=n CONFIG_PACKAGE_kmod-usb-uhci=n CONFIG_PACKAGE_kmod-usb3=n CONFIG_PACKAGE_kmod-usbip=n CONFIG_PACKAGE_kmod-usbip-client=n CONFIG_PACKAGE_kmod-usbip-server=n CONFIG_PACKAGE_kmod-usb-ohci-pci=n CONFIG_IPV6=n  CONFIG_KERNEL_CRASHLOG=n CONFIG_KERNEL_DEBUG_INFO=n CONFIG_KERNEL_ELF_CORE=n CONFIG_KERNEL_DEBUG_KERNEL=n CONFIG_STRIP_KERNEL_EXPORTS=y CONFIG_KERNEL_SWAP=n CONFIG_KERNEL_PRINTK=n CONFIG_KERNEL_PRINTK_TIME=n CONFIG_COLLECT_KERNEL_DEBUG=n CONFIG_REPRODUCIBLE_DEBUG_INFO=n

# test：tc kmod-ifb kmod-sched kmod-sched-core kmod-netem 
# bak ： firewall luci-i18n-firewall-zh-cn \ luci-app-openclash  kmod-inet-diag  kmod-nft-tproxy
# mt7620：phicomm_psg1218a   lenovo_newifi-y1  
# mt7621：phicomm_k2p   d-team_newifi-d2 
# OpenClash ：-dnsmasq luci-compat luci-app-openclash coreutils-nohup bash dnsmasq-full curl ca-certificates ipset ip-full libcap libcap-bin ruby ruby-yaml kmod-tun kmod-inet-diag unzip kmod-nft-tproxy
