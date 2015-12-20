VIM and MacVim 
====================
#### install
```bash
install brew
brew upgrade && brew update
brew install macvim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl https://raw.githubusercontent.com/alanerzhao/MacVim/master/.vimrc >> ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc
Launch vim and run :PluginInstall
source ~/.vim/vimrc
To install from command line: vim +PluginInstall +qall
.vimrc 和.gvimrc 供用一个
```

#### 中文文档
* download chinese vim doc [vimdoc](http://sourceforge.net/projects/vimcdoc/files/vimcdoc)
* 解压执行里面的安装`vimdoc.sh`自动安装
#### 配置插件
#### 常用快捷键
检查map映射是否存在在命令行模式输入对应的映射测他啊例如
```bash
:map<leader>d
```
#### 一些方法
#### 备忘
Snipperts可以后续学习
#### TODO
#### other 
Mac相关app配置

Install Setup
```bash
    1.Install ** Xcode ** ，Install `` command line Tools``

    2.Install brew 
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
      brew doctor
    3. brew install package 
       autojump bash-completion cscope      httpie      macvim      openssl     tig     vim
       bash        brew-cask   git     mackup      node        readline    tree        wget
    4. .....
```
#####
