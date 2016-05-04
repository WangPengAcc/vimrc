""""""""""""""""""""""""""""""""""
"Vundle相关配置，不要乱改
""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"把需要的插件全部写在这一行下面
Plugin 'taglist.vim'                               "代码导航
Plugin 'tpope/vim-fugitive'                        "Git集成
Plugin 'scrooloose/nerdtree'                       "文件浏览器
Plugin 'Lokaltog/vim-powerline'                    "状态栏美化
Plugin 'L9'                                        "必须的依赖库
Plugin 'git://git.wincent.com/command-t.git'       "快速定位文件
Plugin 'Valloric/YouCompleteMe'                    "智能补全代码
"把需要的插件全部写在这一行上面

call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""""""""
"Vundle相关配置，不要乱改
""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""下面是自己的设置""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                   "开启语法高亮
colorscheme molokai         "设置配色方案

set helplang=cn             "帮助系统设置为中文
set number                  "显示行号
set ruler                   "显示位置指示器
set laststatus=2            "总是显示状态行
set cursorline              "为光标所在行加下划线

set hls                     "检索时高亮显示匹配项
set ignorecase              "检索时忽略大小写
set showmatch               "代码匹配
set bs=2                    "在insert模式下用退格键删除

set fileencodings=uft-8     "使用utf-8打开文件
set autoread                "文件在Vim之外修改过，自动重新读入
set backupdir=/tmp          "设置备份文件目录
set directory=/tmp          "设置临时文件目录

set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set softtabstop=2           "一个制表符的长度（可以大于tabstop）
set smarttab                "智能制表符
set smartindent             "智能缩进
set autoindent              "自动缩进

"YouCompleteMe相关设置
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>

"nerdtree相关设置
"开关文件浏览器
map <D-1> :NERDTreeToggle <CR>
"在文件浏览器中定位当前文件
map <D-!> :NERDTreeFind <CR>
"关闭文件时同时关闭文件浏览器
let NERDTreeQuitOnOpen = 1

"打开文件定位窗口
"nnoremap <slient> <D-R> :CommandT<CR>
"打开最近打开的文件列表
"nnoremap <slient> <D-E> :CommandTBuffer<CR>


"TagList 相关设置
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
"Sort type 'name' or 'order'
let Tlist_Sort_Type = "name"
let Tlist_Compact_Format = 1
let g:tlist_php_settings = 'php;c:class;f:function'
map <D-7> :TlistToggle <CR>

"powerline 相关设置
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'

"编程语言相关设置
"Enable omni completion.
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete