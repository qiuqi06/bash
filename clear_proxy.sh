IFS=$'\n'       # 设置分隔符为换行符
interfaces=($(networksetup -listallnetworkservices | tail -n +2))
for interface in "${interfaces[@]}"; do
    # 去除末尾可能的空格
    interface=$(echo "${interface}" | xargs)
    # 关闭自动发现代理
    sudo networksetup -setproxyautodiscovery "${interface}" off
    # 关闭自动配置代理
    sudo networksetup -setautoproxystate "${interface}" off
    # 关闭网页代理（HTTP）
    sudo networksetup -setwebproxystate "${interface}" off
    # 关闭安全网页代理（HTTPS）
    sudo networksetup -setsecurewebproxystate "${interface}" off
    # 关闭SOCKS代理
    sudo networksetup -setsocksfirewallproxystate "${interface}" off
done
