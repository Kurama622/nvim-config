let g:translator_window_type='popup'

nmap <silent> ts <Plug>TranslateW
vmap <silent> ts <Plug>TranslateWV

"hi def link TranslatorQuery             Identifier
"hi def link TranslatorDelimiter         Special
"hi def link TranslatorExplain           Statement

hi def link Translator                  Special
hi def link TranslatorBorder            Statement

nnoremap <silent><expr> <leader>f translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(1) : "\<leader>f"
nnoremap <silent><expr> <leader>b translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(0) : "\<leader>b"
