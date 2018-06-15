#!/bin/bash

# 安装vim
sudo apt-get install vim vim-scripts vim-doc vim-addon-manager

git clone git@github.com:wenruo95/tools.git ~/Git/	# 下载配置文件
sudo cp ~/Git/tools/config/.vimrc ~/.vimrc			# 复制至/home/username/


# 插件安装
sudo apt-get install ctags
sudo vim-addons install bufexplorer minibufexplorer omnicppcomplete supertab taglist winmanager

# 查询安装状态
vim-addons | grep install
