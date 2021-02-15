"" ========
"" ======== runcode
"" ========
"map <F5> :call RunCode()<CR>
"func! RunCode()
    ":silent exec "w"
    "if &filetype == 'python'
        "set splitright
        ":vsp
        ""set splitbelow
        "":sp
        "":res -10
        ":term python3 %

    "elseif &filetype == 'go'
        "set splitright
        ":vsp
        ":term go run %

    "elseif &filetype == 'c'
        "set splitbelow
        "exec "!gcc % -Wall -o %<"
        ":sp
        ":res -10
        ":term ./%<
        "normal i

    "elseif &filetype == 'cpp'
        "set splitbelow
        "exec "!g++ -std=c++11 % -Wall -o %<"
        ":sp
        ":res -10
        ":term ./%<
        "normal i

    "elseif &filetype == 'markdown'
        "exec "MarkdownPreview"

    "elseif &filetype == 'tex'
        "exec "!xelatex %"
        "silent :!zathura %<.pdf &
    "elseif &filetype == 'vim'
        ":so %
    "endif
"endfunc


" ========
" ======== run code in floaterm
" ========
"map <F5> :call RunCode()<CR>
"func! RunCode()
    ":silent exec "w"
    "if &filetype == 'python'
        ":Run

    "elseif &filetype == 'go'
        ":Run

    "elseif &filetype == 'c'
        ":Run

    "elseif &filetype == 'cpp'
        ":Run

    "elseif &filetype == 'markdown'
        "exec "MarkdownPreview"

    "elseif &filetype == 'tex'
        "exec "!xelatex %"
        "silent :!zathura %<.pdf &
    "elseif &filetype == 'vim'
        ":so %
    "endif
"endfunc

map <F5> :call RunCode()<CR>
func! RunCode()
    :silent exec "w"
    if &filetype == 'python'
        :AsyncRun -mode=term -pos=floaterm -focus=1 python %

    elseif &filetype == 'go'
        :AsyncRun -mode=term -pos=floaterm -focus=1 go run %

    elseif &filetype == 'c'
        :AsyncRun -mode=term -pos=floaterm -focus=1 gcc % -Wall -o %< && ./%<

    elseif &filetype == 'cpp'
        :AsyncRun -mode=term -pos=floaterm -focus=1 g++ -std=c++11 % -Wall -o %< && ./%<

    elseif &filetype == 'markdown'
        exec "MarkdownPreview"

    elseif &filetype == 'tex'
        exec "!xelatex %"
        silent :!zathura %<.pdf &
    elseif &filetype == 'vim'
        :so %
    endif
endfunc
