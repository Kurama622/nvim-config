" =============================================== 插件配置 ===============================================
call plug#begin('~/.config/nvim/plugged')
" Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'xuhdev/vim-latex-live-preview', {'for':'tex'}
Plug 'xuhdev/SingleCompile'
Plug 'vim-latex/vim-latex', {'for':'tex'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'gko/vim-coloresque'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'davidhalter/jedi-vim'
"Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-python'}
call plug#end()

" =============================================== 插件配置 ===============================================

"colorscheme molokai
"set background=dark
colorscheme vegeta
"colorscheme xcodedark
set t_Co=256                                                    " 开启256色支持
syntax on
filetype plugin indent on
filetype on
let mapleader=" "                                               " 设置leader键为空格键
set nocompatible                                                " 不以兼容模式运行
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
set cursorcolumn                                                " 显示光标所在列
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

" 将文件中的tab键替换成空格
map <LEADER>    :retab!<CR>
set incsearch                                                   " 一边输入一边高亮
set ignorecase                                                  " 忽略大小写
set smartcase                                                   " 智能大小写
set laststatus=2                                                " 设置状态栏在倒数第2行

" ======================================== 设置状态栏格式 ========================================
"set statusline=%1*\%<%.50F\                                     "显示文件名和文件路径
"set statusline+=%=%2*\%y%m%r%h%w\ %*                            "显示文件类型及文件状态
"set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*                       "显示文件编码类型
""set statusline+=%4*\ row:%l/%L,col:%c\ %*                       "显示光标所在行和列
"set statusline+=%5*\%3p%%\%*                                    "显示光标前文本所占总文本的比例
"hi User1 cterm=none ctermfg=12 ctermbg=0
"hi User2 cterm=none ctermfg=208 ctermbg=0
"hi User3 cterm=none ctermfg=169 ctermbg=0
""hi User4 cterm=none ctermfg=100 ctermbg=0
"hi User5 cterm=none ctermfg=green ctermbg=0
" ======================================== 设置状态栏格式 ========================================

set mouse=a                                                     " 启用鼠标
set backspace=indent,eol,start                                  " 退格键可以退到上一行
set scrolloff=5                                                 " 光标行上下移动范围各缩小5行
"set ruler
"set transparency=11

" 设置背景透明
hi Normal ctermfg=252 ctermbg=none
" 寻找下一搜索结果，并将其置于屏幕中心
noremap = nzz
" 寻找上一搜索结果，并将其置于屏幕中心
noremap - Nzz
" 取消高亮
noremap <LEADER><CR> :nohlsearch<CR>
map s <nop>
" 保存
map S :w<CR>
" 退出
map Q :q<CR>
" 右分屏，聚焦右窗口
map sl :set splitright<CR>:vsplit<CR>:e 
" 左分屏，聚焦左窗口
map sh :set nosplitright<CR>:vsplit<CR>:e 
" 上分屏，聚焦上窗口
map sk :set nosplitbelow<CR>:split<CR>:e 
" 下分屏，聚焦下窗口
map sj :set splitbelow<CR>:split<CR>:e 
" 光标移至右窗口
map <LEADER>l <C-w>l
" 光标移至上窗口
map <LEADER>k <C-w>k
" 光标移至下窗口
map <LEADER>j <C-w>j
" 光标移至左窗口
map <LEADER>h <C-w>h

" 当前窗口移至右边
map <LEADER>L <C-w>L
" 当前窗口移至上边
map <LEADER>K <C-w>K
" 当前窗口移至下边
map <LEADER>J <C-w>J
" 当前窗口移至左边
map <LEADER>H <C-w>H

" 窗口上移
map <up> :res +5<CR>
" 窗口下移
map <down> :res -5<CR>
" 窗口左移
map <left> :vertical resize-5<CR>
" 窗口右移
map <right> :vertical resize+5<CR>
" 新建标签页
map tn :tabe<CR>
" 前一标签页
map t- :-tabnext<CR>
" 后一标签页
map t= :+tabnext<CR>
" 重新加载vim配置文件
" map rc :source $MYVIMRC<CR>
map rc :source ~/.config/nvim/init.vim<CR>
" 寻找两个相等的单词
map <LEADER>fd /\(\<\w\+\>\)\_s*\1
" 替换占空符<++>
map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
" 全选
map <C-a> ggVG
" 打开我的vimrc
map <LEADER>rc :e ~/.config/nvim/init.vim<CR>
" 复制到系统剪切板
map +y "+y
" 从系统剪切板粘贴
map +p "+p
" 插入模式下jj映射为<Esc>
"inoremap jj <Esc>
nmap <CR> o<Esc>
nmap <LEADER>t :set splitright<CR>:vsplit<CR>:term<CR>
autocmd filetype python nnoremap <buffer> <LEADER>i :set splitright<CR>:vsplit<CR>:term<CR>iipython<CR>
autocmd filetype tex noremap <buffer> <LEADER>i :!python3 ~/scripts/pdf2img.py -i %<.pdf -f %:h -o %<<CR>

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

" ======================================== 自动匹配括号 ========================================
" autocmd filetype c,r,python,vim,conf inoremap <buffer> ( ()<ESC>i
" autocmd filetype c,r,python,vim,conf inoremap <buffer> ) <c-r>=ClosePair(')')<CR>
" autocmd filetype c,r,python,vim,conf inoremap <buffer> { {}<ESC>i
" autocmd filetype c,r,python,vim,conf inoremap <buffer> } <c-r>=ClosePair('}')<CR>
" autocmd filetype c,r,python,vim,conf inoremap <buffer> [ []<ESC>i
" autocmd filetype c,r,python,vim,conf inoremap <buffer> ] <c-r>=ClosePair(']')<CR>
" autocmd filetype c,r,conf inoremap <buffer> " ""<ESC>i
" autocmd filetype c,r,vim,conf inoremap <buffer> ' ''<ESC>i
autocmd filetype r inoremap <buffer> <space>=<space> <space><-<space><ESC>a
" function! ClosePair(char)
" if getline('.')[col('.') - 1] == a:char
"         return "\<Right>"
"     else
"         return a:char
"     endif
" endfunction
" ======================================== 自动匹配括号 ========================================

let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
let &t_SR = "\<Esc>]50;CursorShape=2\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7" 

" 打开文件，光标回到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" =============================================== 创建文件头 ===============================================
autocmd BufNewFile *.py,*.tex exec ":call SetTitle()"
func! SetTitle()
    if &filetype == 'python'
        call setline(1,"#!/usr/bin/env python3")
        call append(line("."),"# -*- coding:UTF-8 -*-")
        call append(line(".")+1,"##########################################################################")
        call append(line(".")+2, "# File Name: ".expand("%"))
        call append(line(".")+3, "# Author: stubborn vegeta")
        call append(line(".")+4, "# Created Time: ".strftime("%c"))
        call append(line(".")+5, "##########################################################################")
        call append(line(".")+6, "<++>")
    endif
    "if &filetype == 'plaintex'
        "call setline(1,"% -*- coding:UTF-8 -*-")
        "call append(line("."),"% #########################################################################")
        "call append(line(".")+1, "% File Name: ".expand("%"))
        "call append(line(".")+2, "% Author: stubborn vegeta")
        "call append(line(".")+3, "% Created Time: ".strftime("%c"))
        "call append(line(".")+4, "% #########################################################################")
        "call append(line(".")+5, "\\documentclass[UTF8]{<++>}")
        "call append(line(".")+6, "\\usepackage{graphicx}")
        "call append(line(".")+7, "\\usepackage{booktabs}")
        "call append(line(".")+8, "\\usepackage{geometry}")
        "call append(line(".")+9, "\\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}")
        "call append(line(".")+10, "\\pagestyle{plain}")
        "call append(line(".")+11, "\\begin{document}")
        "call append(line(".")+12, "<++>")
        "call append(line(".")+13, "\\end{document}")
    "endif
    "if &filetype == 'tex'
        "call setline(1,"% -*- coding:UTF-8 -*-")
        "call append(line("."),"% #########################################################################")
        "call append(line(".")+1, "% File Name: ".expand("%"))
        "call append(line(".")+2, "% Author: stubborn vegeta")
        "call append(line(".")+3, "% Created Time: ".strftime("%c"))
        "call append(line(".")+4, "% #########################################################################")
        "call append(line(".")+5, "\\documentclass[UTF8]{<++>}")
        "call append(line(".")+6, "\\usepackage{graphicx}")
        "call append(line(".")+7, "\\usepackage{booktabs}")
        "call append(line(".")+8, "\\usepackage{geometry}")
        "call append(line(".")+9, "\\geometry{left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm}")
        "call append(line(".")+10, "\\pagestyle{plain}")
        "call append(line(".")+11, "\\begin{document}")
        "call append(line(".")+12, "<++>")
        "call append(line(".")+13, "\\end{document}")
    "endif
"     normal G 
endfunc
" =============================================== 创建文件头 ===============================================

"|==========================================================================================================
"|                                             |    废弃区    |
"|                                             ~~~~~~~~~~~~~~~~
"|" 设置注释快捷键
"|map <LEADER>' :call Note()<CR>
"|func! Note()
"|    if &filetype == 'python'
"|        normal 0i# 
"|    endif
"|    if &filetype == 'vim'
"|        normal 0i" 
"|    endif
"|    if &filetype == 'plaintex'
"|        normal 0i% 
"|    endif
"|    if &filetype == 'tex'
"|        normal 0i% 
"|    endif
"|    if &filetype == 'c'
"|        normal 0i// 
"|    endif
"|endfunc
"|" 设置取消注释
"|map <LEADER>" 0df j
"|==========================================================================================================

" =========
" ========= vim-latex
" =========
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_SmartKeyBS=0
let g:Tex_ViewRule_pdf = 'zathura'
"let g:Tex_ViewRule_pdf = 'okular'
"let g:Tex_CompileRule_dvi='latex -src-specials -interaction=nonstopmode $*'
"let g:Tex_ViewRule_dvi="xdvi -editor 'gvim --servername latex-suite --remote-silent'"

" ========
" ======== SingleCompile
" ========
call SingleCompile#SetCompilerTemplate('tex', '/usr/local/texlive/2019/bin/x86_64-linux/xelatex', 'XeLatex',
            \ '/usr/local/texlive/2019/bin/x86_64-linux/xelatex', '',
            \ SingleCompile#GetDefaultOpenCommand() .
            \ ' "$(FILE_TITLE)$.pdf"')
call SingleCompile#ChooseCompiler('tex', '/usr/local/texlive/2019/bin/x86_64-linux/xelatex')
"nmap <F6> :SCCompile<CR>:LLPStartPreview<CR>
nmap <F6> :SCCompile<CR>:!zathura %<.pdf &<CR>
"imap <F6> <Esc>:SCCompile<CR>:LLPStartPreview<CR>

" ========
" ======== vim-latex-live-preview
" ========
let g:livepreview_previewer='zathura'
"let g:livepreview_previewer='okular'
autocmd Filetype tex,plaintex setl updatetime=1
let g:livepreview_engine='/usr/local/texlive/2019/bin/x86_64-linux/xelatex'
let g:livepreview_cursorhold_recompile=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:Tex_FoldedSections=''


"" ========
"" ======== gutentags
"" ========
"set tags=./.tags;,.tags

"let g:gutentags_ctags_executable = '/home/vegeta/ctags-master/ctags'
"" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

"" 所生成的数据文件的名称
"let g:gutentags_ctags_tagfile = '.tags'

"" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
"let s:vim_tags = expand('~/.cache/tags')
"let g:gutentags_cache_dir = s:vim_tags

""let g:gutentags_trace = 1
"" 配置 ctags 的参数
"let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

"" 检测 ~/.cache/tags 不存在就新建
"if !isdirectory(s:vim_tags)
   "silent! call mkdir(s:vim_tags, 'p')
"endif

" ========
" ======== coc
" ========
let g:coc_global_extensions = ['coc-python','coc-snippets','coc-css','coc-markmap']

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"" Use <C-l> for trigger snippet expand.
"imap <C-l> <Plug>(coc-snippets-expand)

"" Use <C-j> for select text for visual placeholder of snippet.
"vmap <C-j> <Plug>(coc-snippets-select)

"" Use <C-j> for jump to next placeholder, it's default of coc.nvim
"let g:coc_snippet_next = '<c-j>'

"" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
"let g:coc_snippet_prev = '<c-k>'

"" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)
inoremap <silent><expr> <A-TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<A-tab>'
let g:coc_snippet_prev = '<S-tab>'

"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
"nmap <LEADER>rn <Plug>(coc-rename)

" ========
" ======== jedi-vim
" ========
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = "gd"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"


" ========
" ======== Ultisnips
" ========
let g:UltiSnipsExpandTrigger = "<c-f>"
"let g:UltiSnipsJumpForwardTrigger = "<c-f>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'Ultisnips']
" silent! au BufEnter,BufRead,BufNewFile * silent! unmap <>

" ========
" ======== markdown
" ========
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'surf'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = '/home/vegeta/.config/nvim/MDtheme/github.css'

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '${name}'

"|==========================================================================================================
"|                                             |        废弃区      |
"|                                             ~~~~~~~~~~~~~~~~~~~~~~
"|markdown加粗命令
"|autocmd filetype markdown inoremap <buffer> ,b **** <++><ESC>F*hi
"|" markdown斜体
"|autocmd filetype markdown inoremap <buffer> ,i ** <++><ESC>F*i
"|" markdown插入图片
"|autocmd filetype markdown inoremap <buffer> ,f ![](<++>)<ESC>F[a
"|" markdown插入链接
"|autocmd filetype markdown inoremap <buffer> ,l [](<++>)<Esc>F[a
"|" markdown插入数学公式
"|autocmd filetype markdown inoremap <buffer> ,m $$<CR><CR>$$ <++><Esc>ki
"|" markdown插入代码块
"|autocmd filetype markdown inoremap <buffer> ,c ```<CR>``` <++><Esc>k$a
"|" markdown插入图片(html)
"|autocmd filetype markdown inoremap <buffer> ,h <Esc>:call Imagehtml()<CR>2jf"a
"|function! Imagehtml()
"|        if &filetype == 'markdown'
"|                call append(line("."), "<center>")
"|                call append(line(".")+1, "<img src=\"\" alt=\"<++>\" height=\"50%\" width=\"50%\" />")
"|                call append(line(".")+2, "</center>")
"|        endif
"|endfunction
"|autocmd filetype markdown map <buffer> ; :call InsertString()<CR>
"|function! InsertString()
"|        if getline(".")[col(".")-2] == '|'
"|                normal i <++> | 
"|        else
"|                normal i| <++> | 
"|        endif
"|endfunction
"|
"|autocmd filetype markdown inoremap <buffer> ,t <ESC>:call InsertTable()<CR>
"|function! InsertTable()
"|        call append(line("."), "| <++> | <++> | ")
"|        call append(line(".")+1, "| :--: | :--: | ")
"|        call append(line(".")+2, "| <++> | <++> | ")
"|endfunction
"|
"|autocmd filetype markdown map <buffer> 3t :call InsertTable3()<CR>
"|function! InsertTable3()
"|        call append(line("."), "| <++> | <++> | <++> | ")
"|        call append(line(".")+1, "| :--: | :--: | :--: | ")
"|        call append(line(".")+2, "| <++> | <++> | <++> | ")
"|endfunction
"|==========================================================================================================
let g:table_mode_corner='|'
let g:table_mode_corner_corner='|'
autocmd filetype vim,txt,markdown noremap <LEADER>m :TableModeToggle<CR>
"autocmd filetype markdown noremap <LEADER>p :!markmap --no-open %<CR>

" ========
" ======== LaTeX
" ========
"autocmd filetype tex,plaintex inoremap <buffer> ,1 \section{}<CR><++><Esc>kf{a
"autocmd filetype tex,plaintex inoremap <buffer> ,2 \subsection{}<CR><++><Esc>kf{a
"autocmd filetype tex,plaintex inoremap <buffer> ,3 \subsubsection{}<CR><++><Esc>kf{a
"
"autocmd filetype tex,plaintex inoremap <buffer> ,b \textbf{}<++><Esc>4hi
"autocmd filetype tex,plaintex inoremap <buffer> ,i \textit{}<++><Esc>4hi
"autocmd filetype tex,plaintex inoremap <buffer> ,f \begin{figure}[<++>]<CR>\centering<CR>\includegraphics[scale=<++>]{<++>}<CR>\caption{<++>}<CR>\end{figure}<CR><++><Esc>5k
"autocmd filetype tex,plaintex inoremap <buffer> ,t \begin{table}<CR>\centering<CR>\caption{<++>}<CR>\begin{tabular}{<++>}<CR><++><CR>\end{tabular}<CR>\end{table}<CR><++><Esc>7k
"autocmd filetype tex,plaintex inoremap <buffer> ,m \[<CR><CR>\]<CR><CR><++><Esc>3ki
"autocmd filetype tex,plaintex inoremap <buffer> ,e \begin{equation}<CR><CR>\end{equation}<Esc>0kk
"autocmd filetype tex,plaintex inoremap <buffer> <F1> \begin{<++>}<CR><CR>\end{<++>}<Esc>0kk
"autocmd filetype tex,plaintex nmap <buffer> <F10> :LLPStartPreview<CR>

" autocmd filetype tex,plaintex nmap <buffer> <F10> :call Tex_ViewLaTeX()<CR>

" ========
" ======== python
" ========
" autocmd filetype python inoremap <buffer> ,' """<CR><CR>"""<CR><++><Esc>2ki

" ========
" ======== fzf
" ========

" find file
noremap \ :FZF<CR>
" find history
noremap <C-h> :MRU<CR>
" find lines containing keywords
noremap <C-l> :LinesWithPreview<CR>
" find buffer
noremap <C-b> :Buffers<CR>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
  \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
  \ call fzf#vim#buffers(
  \   '',
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:0%', '?'),
  \   <bang>0)

command! -bang -nargs=* LinesWithPreview
    \ call fzf#vim#grep(
    \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
    \   fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --sort'}, 'up:50%', '?'),
    \   1)

"command! -bang -nargs=* Ag
    "\ call fzf#vim#ag(
    "\   '',
    "\   <bang>0 ? fzf#vim#with_preview('up:60%')
    "\           : fzf#vim#with_preview('right:50%','?'),
    "\   <bang>0)

command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

" ===
" === vimspector
" ===

"let g:python_host_prog = '/home/vegeta/anaconda3/envs/tf2.1/bin/python'
"function! s:read_template_into_buffer(template)
    "" has to be a function to avoid the extra space fzf#run insers otherwise
    "execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
"endfunction
"command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            "\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
            "\   'down': 20,
            "\   'sink': function('<sid>read_template_into_buffer')
            "\ })
"noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
"map <F1> <Plug>VimspectorContinue
"" S-F1
"map <F13> <Plug>VimspectorStop
"" C-F1
"map <F25> <Plug>VimspectorRestart
"map <F2> <Plug>VimspectorPause
"map <F9> <Plug>VimspectorToggleBreakpoint
"" S-F9
""map <F21> <Plug>VimspectorToggleConditionalBreakpoint
"map <F21> <Plug>VimspectorAddFunctionBreakpoint
"map <F10> <Plug>VimspectorStepOver
"map <F11> <Plug>VimspectorStepInto
"" S-F11
"map <F23> <Plug>VimspectorStepOut

"sign define vimspectorBP text=☛ texthl=Normal
"sign define vimspectorBPDisabled text=☞ texthl=Normal
"sign define vimspectorPC text=🔶 texthl=SpellBad


" ========
" ======== runcode
" ========
map <F5> :call RunCode()<CR>
func! RunCode()
    exec "w"
    if &filetype == 'python'
        set splitright
        :vsp
        "set splitbelow
        ":sp
        ":res -10

        redir @a
        silent exec "g /^#!.*python2$/ %"
        redir END
        if @a == ''
            :term python2 %;echo '\n[python2]'
        else
            :term python3 %
        endif
        normal i
    endif

    if &filetype == 'r'
        "set splitright
        ":vsp
        set splitbelow
        :sp
        :res -10
        :term Rscript %
        normal i
        if filereadable('Rplots.pdf')
            exec "!zathura Rplots.pdf &"
        endif
    endif

    if &filetype == 'c'
        set splitbelow
        exec "!gcc % -Wall -o %<"
        :sp
        :res -10
        :term ./%<
        normal i
    endif

    if &filetype == 'cpp'
        set splitbelow
        exec "!g++ -std=c++11 % -Wall -o %<"
        :sp
        :res -10
        :term ./%<
        normal i
    endif

    if &filetype == 'markdown'
        exec "MarkdownPreview"
    endif

    if &filetype == 'tex'
        ":SCCompile
        silent exec "!/usr/local/texlive/2019/bin/x86_64-linux/xelatex % >/tmp/nvimlatex"
        redir @a
        silent echo system('~/.config/nvim/scripts/IsError.sh')
        redir END
        let Error = len(@a)
        if Error == 1
          silent exec "!zathura %<.pdf &"
          ":LLPStartPreview
        else
          echo @a
        endif
      endif
endfunc

map <F29> :call RUN_latexmk()<CR>
func! RUN_latexmk()
    exec "w"
    if &filetype == 'tex'
        ":SCCompile
        "silent exec "pkill zathura"
        exec "!/usr/local/texlive/2019/bin/x86_64-linux/pdflatex % >/tmp/nvimlatex"
        redir @a
        silent echo system('~/.config/nvim/scripts/IsError.sh')
        redir END
        let Error = len(@a)
        if Error == 1
          silent exec "!zathura %<.pdf &"
          ":LLPStartPreview
        else
          echo @a
        endif
      endif
endfunc

" Shfit + F5
map <F17> :call RunCodeRepl()<CR>
func! RunCodeRepl()
    exec "w"
    if &filetype == 'python'
            if search("@profile")
                    exec "AsyncRun kernprof -l -v %"
                    exec "copen"
                    exec "wincmd p"
             elseif search("set_trace()")
                     exec "!python3 %"
             else
                    exec 'vertical rightbelow copen 60'
                    exec 'wincmd w'
                    exec "AsyncRun -raw python3 %"
                    exec "copen"
                    exec "wincmd p"
            endif
    endif
    if &filetype == 'r'
        exec "AsyncRun -raw Rscript %"
        exec "copen"
        exec "wincmd p"
        if filereadable('Rplots.pdf')
            exec "!zathura Rplots.pdf &"
        endif
    endif
    if &filetype == 'tex'
        :LLPStartPreview
    endif
    if &filetype == 'markdown'
        silent exec "!markmap --no-open %"
        silent exec "!surf %<.html"
    endif
endfunc
