" ========
" ======== coc
" ========

set updatetime=100

"if has("patch-8.1.1564")
    "set signcolumn=yes
"else
    "set signcolumn=yes
"endif

let g:coc_global_extensions = [
           \ 'coc-python',
           \ 'coc-snippets',
           \ 'coc-translator',
           \ 'coc-vimlsp'
           \]

inoremap <silent><expr> <Tab>
     \ pumvisible() ? "\<C-n>" :
     \ <SID>check_back_space() ? "\<Tab>" :
     \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)

inoremap <silent><expr> <A-TAB>
     \ pumvisible() ? coc#_select_confirm() :
     \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
     \ <SID>check_back_space() ? "\<TAB>" :
     \ coc#refresh()


let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

nmap ts <Plug>(coc-translator-p)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <LEADER>rn <Plug>(coc-rename)

"function! s:cocActionsOpenFromSelected(type) abort
  "execute 'CocCommand actions.open ' . a:type
"endfunction
"xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
"nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
