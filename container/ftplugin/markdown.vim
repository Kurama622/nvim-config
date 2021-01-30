" ========
" ======== markdown
" ========
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

let g:mkdp_auto_close = 1

let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0

let g:mkdp_open_to_the_world = 0

let g:mkdp_open_ip = ''

let g:mkdp_browser = ''

let g:mkdp_echo_preview_url = 0

let g:mkdp_browserfunc = ''

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

let g:mkdp_markdown_css = '$HOME/.config/nvim/MDtheme/github.css'

let g:mkdp_highlight_css = ''

let g:mkdp_port = ''

let g:mkdp_page_title = '${name}'

let g:table_mode_corner='|'
let g:table_mode_corner_corner='|'
nnoremap <LEADER>m :TableModeToggle<CR>

