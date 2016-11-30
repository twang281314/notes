---
title: Hexo使用
updated : 2016-11-15 10:09   
---
# Hexo 介绍

[hexo](https://github.com/hexojs/hexo)出自台湾大学生[@tommy351](https://twitter.com/tommy351)之手，是一个基于Node.js的静态博客程序  

# 常见命令  

## 简写

``` js
hexo n == hexo new
hexo p == hexo publish
hexo g == hexo generate
hexo s == hexo server
hexo d == hexo deploy
```
<!-- more -->
## 服务器
``` js
hexo server #Hexo 会监视文件变动并自动更新，您无须重启服务器。
hexo server -s #静态模式
hexo server -p 5000 #更改端口
hexo server -i 192.168.1.1 #自定义 IP
hexo clean #清除缓存 网页正常情况下可以忽略此条命令
hexo g #生成静态网页
hexo d #开始部署
```