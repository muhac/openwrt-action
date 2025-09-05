### Hostname
name='MineWrt'

# Modify the default hostname (/etc/config/system)
# https://github.com/openwrt/openwrt/blob/v23.05.2/package/base-files/files/bin/config_generate#L314
sed -i "s#hostname='ImmortalWrt'#hostname='$name'#g" package/base-files/files/bin/config_generate

### Timezone
tz='America/Toronto'

# Use zonename instead of timezone, see doc:
# https://openwrt.org/docs/guide-user/base-system/system_configuration
# https://github.com/openwrt/luci/blob/master/modules/luci-lua-runtime/luasrc/sys/zoneinfo/tzdata.lua

# Modify the default timezone (/etc/config/system)
# https://github.com/openwrt/openwrt/blob/v23.05.2/package/base-files/files/bin/config_generate#L315
sed -i "s#timezone='UTC'#zonename='$tz'#g" package/base-files/files/bin/config_generate

### LAN IP
addr='10.10.1.1'
mask='255.255.0.0'

# Modify the default LAN IP address and subnet mask  (/etc/config/network)
# https://github.com/openwrt/openwrt/tree/v23.05.2/package/base-files/files/bin/config_generate#L163-L169
sed -i "s#192.168.1.1#$addr#g" package/base-files/files/bin/config_generate
sed -i "s#255.255.255.0#$mask#g" package/base-files/files/bin/config_generate
