# 安装常用的命令
```sh
# 这个包可以用于安装各版本的开发工具devtoolset
yum install centos-release-scl

# 这个包可以用于安装git2，先装这个再装vim-go就可以继续使用git 2.x
yum install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm

yum update
yum install zsh
yum install tree
yum install binutils
yum install vim-go
yum install clang
yum install redis
yum install jq
yum install autojump-zsh
yum install docker
yum install tmux
```


# 配置git
如果安装vim-go的时候把系统自带的git 2.x覆盖成git 1.x，则需要修改一些配置让git更好用，把以下内容粘贴到`/etc/gitconfig`中
```ini
[color]
    ui = true
[core]
    autocrlf = true
```


# 配置docker
默认需要root或者sudo权限才可以操作docker，可以通过把普通用户添加到docker组的方式让普通用户也可以操作docker
```sh
groupadd docker
usermod -aG docker ${user}
```