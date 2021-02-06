syntax on
set termguicolors
set t_Co=256
set background=dark    " Setting dark mode
colorscheme oceanic_material
let g:oceanic_material_background = "ocean"
"colors spacegray
"colors xcodedark
"colors codedark

" 设置背景透明
"hi Normal ctermfg=252 ctermbg=none
"hi Normal ctermfg=None ctermbg=none
"hi LineInfoLeft ctermfg=None

"colors spacegray
"colorscheme vegeta
"colors molokai
"set cc=64

filetype on
"set nocompatible                                                " 不以兼容模式运行
" set encoding=utf-8                                              " utf-8编码
" set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,cp936,latin1
set fileencodings=ucs-bom,utf-8,gb2313,gb18030,gbk,cp936,latin1
set fileformats=unix,dos,mac
set helplang=cn                                                 " 中文帮助文档
set nomodeline
set relativenumber                                              " 相对行号
set number                                                      " 绝对行号
set wrap                                                        " 自动换行
set showcmd                                                     " 显示输入信息
set cursorline                                                  " 显示光标所在行
"set cursorcolumn                                                " 显示光标所在列
set wildmenu                                                    " 显示补全提示
set hlsearch                                                    " 高亮搜索结果
" set foldenable                                                " 允许折叠
" set foldmethod=manual                                         " 手动折叠

" 打开vim运行nohlsearch，取消高亮
exec "nohlsearch"
set shiftwidth=4                                                "自动缩进空白字符个数为4
set ts=4                                                        " 设置tab键长度为四个空格
set expandtab                                                   " 设置tab键替换为四个空格键
" set cindent                                                     " 设置C自动缩进
" set autoindent

set incsearch                                                   " 一边输入一边高亮
set ignorecase                                                  " 忽略大小写
set smartcase                                                   " 智能大小写
set laststatus=2                                                " 设置状态栏在倒数第2行

set mouse=a                                                     " 启用鼠标
set backspace=indent,eol,start                                  " 退格键可以退到上一行
set scrolloff=5                                                 " 光标行上下移动范围各缩小5行
"set ruler
"set transparency=11


" 关闭nvim保存编辑记录
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.config/nvim/tmp/undo,.
endif


" 显示tab键和空格键
set list
set listchars=tab:▸\ ,trail:▫

let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
let &t_SR = "\<Esc>]50;CursorShape=2\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7" 

" 打开文件，光标回到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

function! Fcitx2en()
    let input_status = system('fcitx-remote')
    if input_status == 2
        let b:inputtoggle = 1
        call system('fcitx-remote -c')
    endif
endfunction
function! Fcitx2zh()
    try
    if b:inputtoggle == 1
        call system('fcitx-remote -o')
        let b:inputtoggle = 0
    endif
    catch /inputtoggle/
        let b:inputtoggle = 0
    endtry
endfunction
" Autocmds:
au InsertLeave * call Fcitx2en()
au InsertEnter * call Fcitx2zh()
