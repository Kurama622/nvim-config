" ===
" === vimspector
" ===
"let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
    " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
"sign define vimspectorBP text=☛ texthl=Normal
"sign define vimspectorBPDisabled text=☞ texthl=Normal
"sign define vimspectorPC text=🔶 texthl=SpellBad

" 行断点
sign define vimspectorBP         text=\ ● texthl=String
" 条件行断点
sign define vimspectorBPCond     text=\ ◆ texthl=String
" 禁用的断点
sign define vimspectorBPDisabled text=\ ● texthl=LineNr
" 当前行
sign define vimspectorPC         text=\ ▶ texthl=MatchParen linehl=CursorLine
sign define vimspectorPCBP       text=●▶  texthl=MatchParen linehl=CursorLine



nnoremap <F7> :call vimspector#Reset()<CR>
nmap <silent><nowait><F2> <Plug>VimspectorContinue
nmap <silent><nowait><F3> <Plug>VimspectorStop
nmap <silent><nowait><F4> <Plug>VimspectorRestart
nmap <silent><nowait><F6> <Plug>VimspectorPause
nmap <silent><nowait><F9> <Plug>VimspectorToggleBreakpoint
nmap <silent><nowait><leader><F9> <Plug>VimspectorToggleConditionalBreakpoint
nmap <silent><nowait><F8> <Plug>VimspectorAddFunctionBreakpoint
nmap <silent><nowait><leader><F8> <Plug>VimspectorRunToCursor
nmap <silent><nowait><F10> <Plug>VimspectorStepOver
nmap <silent><nowait><F11> <Plug>VimspectorStepInto
nmap <silent><nowait><F12> <Plug>VimspectorStepOut

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
let g:vimspector_sidebar_width = 30
let g:vimspector_bottombar_height = 8
let g:vimspector_code_minwidth = 72

func! DebugCode()
    if &filetype == 'cpp'
        :silent exec "!g++ -g -O0 % -Wall -o %<"
    endif
endfunc

" Shift - F12
nnoremap <F14> :call DebugCode()<CR>:call vimspector#Launch()<CR>
