" ===
" === vimtex
" ===
" =================== pip3 install neovim-remote
" =================== sudo pacman -S xdotool
" =================== sudo pacman -S poppler-data (if use zathura-pdf-poppler)
" =================== ~/.latexmkrc: $pdflatex="xelatex %O %S";

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname="nvr"
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_mappings_enabled = 0
let g:vimtex_text_obj_enabled = 0
let g:vimtex_motion_enabled = 0
let g:vimtex_quickfix_open_on_warning = 0
let maplocalleader=' '
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
autocmd filetype tex nnoremap <buffer><silent> gd :VimtexView<CR>
