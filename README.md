### 准备：

* ruby：Mac自带
* brew：需要检查一下
* Python：Mac自带
* Xcode：因为它带clang编译器

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

### Vundle命令：
```
:h Vundle

:PluginInstall(!)

:PluginUpdate

:PluginSearch(!)

:PluginClean(!)

:PluginList
```