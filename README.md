### 准备：

* git：不解释
* ruby：Mac自带
* brew：需要检查一下
* Python：Mac自带
* Xcode：因为它带`clang`编译器
* vim7.4（方案1）：Mac自带的是7.3，使用`brew`升级（其实是安装一个新的，老的还在），然后在`~/.bash_profile`添加以下内容：

```
# vim
alias vi=vim
alias vim='/usr/local/Cellar/vim/7.4.1468/bin/vim'
```

* macvim（方案2，推荐）：

```
$ brew install macvim
```

安装完成后修改`~/.bash_profile`：

```
# vim
alias vi=vim
alias vim=mvim
alias macvim=mvim
```

### 安装中文帮助文档：

下载中文`doc`，[地址](http://sourceforge.net/projects/vimcdoc/files/vimcdoc/)

解压后把`doc`文件夹里面的所有文件复制到`~/.vim/doc/`路径下

### 下载配色：

[地址](https://github.com/tomasr/molokai)

把`molokai.vim`放到`~/.vim/colors/`路径下

### 下载字体：

状态栏美化要用，下载后保存到一个文件夹，我的是`~/font/vim-powerline/`，然后在系统设置里面设置一下就好

[地址](https://github.com/iospp/FontForPowerline)

### 安装Vundle：

[官方地址](https://github.com/VundleVim/Vundle.vim)

终端输入`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### 配置.vimrc文件：

把`.vimrc文件`放到`~/`目录下就可以了

终端输入`$ source ~/.vimrc`使文件生效

### 使用Vundle下载安装插件：

打开`vim`默认模式下输入以下命令：

```
:PluginInstall!
```

### 编译安装YouCompleteMe：

使用`Vundle`安装完`YouCompleteMe`后并不能生效，需要编译安装，`YouCompleteMe`默认支持`c family`语言，对`Python`支持也不错

```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py --clang-completer
```

如果提示

```
Some folders in /Users/wangpeng/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party are empty; you probably forgot to run:
	git submodule update --init --recursive
```

那就

```
$ git submodule update --init --recursive
```

然后再执行一遍

```
./install.py --clang-completer
```

打开`vim`，如果没有提示`YouCompleteMe`未加载，就说明安装成功了

在`.ycm_extra_conf.py`文件中删除以下代码（支持C++标准库）

```
    # NOTE: This is just for YouCompleteMe; it's highly likely that your project
    # does NOT need to remove the stdlib flag. DO NOT USE THIS IN YOUR
    # ycm_extra_conf IF YOU'RE NOT 100% SURE YOU NEED IT.
    try:
      final_flags.remove( '-stdlib=libc++' )
    except ValueError:
      pass
```

注：与YCM冲突的插件：

* clang_complete
* AutoComplPop
* Supertab
* neocomplcache
* jedi

可选(optional)插件：

* `Plugin 'Valloric/ListToggle'`
* `Plugin 'scrooloose/syntastic'`

### Vundle命令：
```
:h Vundle

:PluginInstall(!)

:PluginUpdate

:PluginSearch(!)

:PluginClean(!)

:PluginList
```