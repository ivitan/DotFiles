"鼠标可用
set mouse=a

"设置行号显示
set number

"将行号设置为相对行号
set relativenumber

"显示标尺
set ruler
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

"语法高亮
syntax enable
syntax on
hi pythonSelf            ctermfg=174 guifg=#6094DB cterm=bold gui=bold
let python_highlight_all=1
syntax enable

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 增强模式中的命令行自动完成操作
set wildmenu

" 总是显示状态行
set laststatus=2

"命令行补全参数
set wildmenu

"Tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"自动检测文件类型
filetype plugin indent on

"开启自动缩进，智能缩进
set autoindent
set cindent
set smartindent
set shiftwidth=4


"映射光标在窗口间移动的快捷键
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

"插件安装列表
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

"基本主题配置
set bg=dark    		   "设置背景为黑色
colorscheme gruvbox    "设置主题为 gruvbox
set guioptions=        "去掉两边的scrollbar
set guifont=Monaco:h17 "设置字体和字的大小
set cuc
set cul
set incsearch		  "输入搜索内容时就显示搜索结果
set ignorecase
set hlsearch		  "搜索时高亮显示被找到的文本

"airline settings
let g:airline_theme = 'simple'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1

" show absolute file path in status line
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'

" show tab number in tab line
let g:airline#extensions#tabline#tab_nr_type = 1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
