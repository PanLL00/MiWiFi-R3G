# 小米路由器3G DIY固件  
## 2022年
### 3.27成功  
第一次不修改的方式进行编译。  

### 3.28更新  
选定机型、修改名字（MiWiFi-R3G）、修改产ip段、自动发布到release  

### 3.29更新  
增加两个软件源（openwrt常用软件包+passwall基本依赖）  
增加frpc、fprs、cf-ddns组件取消网易云插件  

### 4.1更新  
修改默认Wi-Fi名称：Xiaomi_R3G、Xiaomi_R3G_5G  
通过hosts解决Android TV激活问题（未成功）  

### 4.5更新  
将Android TV激活改用uci命令方式实现  
优化uci命令后增加\n换行符  
取消新添加的软件源，SSR Plus+插件可以使用自带编译文件完成  

### 4.7更新  
新增fprc、frps、cloudflare-ddns插件  

### 4.8更新  
取消网易云插件、网络唤醒  

### 4.20更新  
新增SSR Plus+插件  
移除ARP绑定、自动重启组件  
