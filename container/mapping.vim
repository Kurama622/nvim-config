" 将文件中的tab键替换成空格
map <LEADER>    :retab!<CR>
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
map sl :set splitright<CR>:vsplit<CR>
" 左分屏，聚焦左窗口
map sh :set nosplitright<CR>:vsplit<CR>
" 上分屏，聚焦上窗口
map sk :set nosplitbelow<CR>:split<CR>
" 下分屏，聚焦下窗口
map sj :set splitbelow<CR>:split<CR>
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
"map <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l
" 全选
"nmap <C-a> ggVG
" 打开我的vimrc
map <LEADER>rc :e ~/.config/nvim/init.vim<CR>
" 复制到系统剪切板
map +y "+y
" 从系统剪切板粘贴
map +p "+p
" 插入模式下jj映射为<Esc>
"inoremap jj <Esc>
"tnoremap <ESC> <C-\><C-n>
tnoremap <LEADER>i exit<CR>
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>
tnoremap <A-w> <C-\><C-n><C-w><C-w><C-\><C-n>i
inoremap <A-w> <Esc><C-w><C-w><C-\><C-n>i
noremap <A-w> <C-w><C-w><C-\><C-n>i
noremap <C-j> J
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l
nnoremap <CR> o<Esc>
nnoremap 0 ^
nnoremap ^ 0
vnoremap 0 ^
vnoremap ^ 0

nmap <LEADER>t :set splitright<CR>:vsplit<CR>:term<CR>

nmap <LEADER>s :FloatermNew --position=bottomright<CR>
"tnoremap <LEADER>s <C-\><C-n><C-w><C-w>

autocmd filetype python nnoremap <buffer> <LEADER>i :set splitright<CR>:vsplit<CR>:term<CR>ipython<CR>
autocmd filetype tex noremap <buffer> <LEADER>i :!python3 ~/usr_file/script/pdf2img.py -i %<.pdf -f %:h -o %<<CR>
vnoremap <LEADER>\ ::yank +<CR>:!bash ~/usr_file/script/code2image/code2image.sh %:h %<<CR>
