
"============================\ asyncrun.vim /=============================
"" function s:asyncrun_floaterm(opts)abort
""     let l:name = 'AsyncRun'
""     let l:bufnr = floaterm#terminal#get_bufnr(l:name)
""     if l:bufnr == -1
""         execute('FloatermNew --name='.l:name)
""         execute('FloatermToggle '.l:name)
""         execute('FloatermSend ' . a:opts.cmd)
""         execute('FloatermToggle '.l:name)
""     else
""         execute('FloatermSend --name=' . l:name . ' ' . a:opts.cmd)
""         execute('FloatermToggle '.l:name)
""     endif
"" endfunction
"" let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
"" let g:asyncrun_runner.floaterm = function('s:asyncrun_floaterm')

"let g:asyncrun_rootmarks = ['.git', '.svn', '.root']

"function! g:Asyncrun_floaterm(opts)
    "" echo a:opts
    "execute 'FloatermNew --position=bottomright' .
                    "\ ' --wintype=float' .
                    "\ ' --height=0.5' .
                    "\ ' --width=0.5' .
                    "\ ' --title=Aysnctasks:\ ' . a:opts.name .
                    "\ ' --autoclose=0' .
                    "\ ' --cwd=' . a:opts.cwd
                    "\ ' ' . a:opts.cmd
    "" Do not focus on floaterm window, and close it once cursor moves
    "" If you want to jump to the floaterm window, use <C-w>p
    "" You can choose whether to use the following code or not
    "stopinsert | noa wincmd p
    "augroup close-floaterm-runner
        "autocmd!
        "autocmd CmdlineEnter,CursorMoved,InsertEnter * ++nested
            "\ call timer_start(100, { -> s:close_floaterm_runner() })
    "augroup END
"endfunction

"function! s:close_floaterm_runner() abort
    "if &ft == 'floaterm' | return | endif
    "for b in tabpagebuflist()
        "if getbufvar(b, '&ft') == 'floaterm' &&
            "\ getbufvar(b, 'floaterm_jobexists') == v:false
        "execute b 'bwipeout!'
        "break
        "endif
    "endfor
    "autocmd! close-floaterm-runner
"endfunction
"let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
"let g:asyncrun_runner.floaterm = function('g:Asyncrun_floaterm')

""============================\ asynctasks.vim /=============================
"command! Run   AsyncTask run
"command! Build AsyncTask build
"command! Make AsyncTask make
"let g:asynctasks_term_pos = 'floaterm'
"let g:asynctasks_extra_config = [
            "\ '~/.config/nvim/container/plugin/tasks.ini',
            "\ ]
"let g:asynctasks_environ = {
            "\ 'my_name': 'vegeta',
            "\ 'cppc': '/usr/bin/g++',
            "\ 'cc': '/usr/bin/gcc',
            "\}
""function! s:fzf_sink(what)
    ""let p1 = stridx(a:what, '<')
    ""if p1 >= 0
        ""let name = strpart(a:what, 0, p1)
        ""let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
        ""if name != ''
            ""exec "AsyncTask ". fnameescape(name)
        ""endif
    ""endif
""endfunction
""function! s:fzf_task()
    ""let rows = asynctasks#source(&columns * 48 / 100)
    ""let source = []
    ""for row in rows
        ""let name = row[0]
        ""let source += [name . '  ' . row[1] . '  : ' . row[2]]
    ""endfor
    ""let opts = { 'source': source, 'sink': function('s:fzf_sink'),
                ""\ 'options': '+m --nth 1 --inline-info --tac' }
    ""if exists('g:fzf_layout')
        ""for key in keys(g:fzf_layout)
            ""let opts[key] = deepcopy(g:fzf_layout[key])
        ""endfor
    ""endif
    ""call fzf#run(opts)
""endfunction
""command! -nargs=0 AsyncTaskFzf call s:fzf_task()
""command! -nargs=0 FzfTasks call s:fzf_task()
"let g:asynctasks_template = {}
"let g:asynctasks_template.cpp = [
    "\ "[make]",
    "\ "command=make $(VIM_FILENOEXT)",
    "\ "output=terminal",
    "\ "cwd=$(VIM_FILEDIR)",
    "\ "save=2",
    "\ "[run]",
    "\ "command=$(VIM_PATHNOEXT)",
    "\ "output=terminal",
    "\ "cwd=$(VIM_FILEDIR)",
    "\ "save=2",
    "\ "[build]",
    "\ "command:c=gcc -Wall $(VIM_FILENAME) -o $(VIM_PATHNOEXT)",
    "\ "command:cpp=g++ -Wall $(VIM_FILENAME) -o $(VIM_PATHNOEXT)",
    "\ "output=terminal",
    "\ "cwd=$(VIM_FILEDIR)",
    "\ "save=2",
    "\ "[debug]",
    "\ "command:c=gcc -Wall -g $(VIM_FILENAME) -o $(VIM_PATHNOEXT)",
    "\ "command:cpp=g++ -Wall -g $(VIM_FILENAME) -o $(VIM_PATHNOEXT)",
    "\ "output=terminal",
    "\ "cwd=$(VIM_FILEDIR)",
    "\ "save=2",
    "\ "[compile]",
    "\ "command:c=gcc -Wall -c $(VIM_FILENAME)",
    "\ "command:cpp=g++ -Wall -c $(VIM_FILENAME)",
    "\ "output=terminal",
    "\ "cwd=$(VIM_FILEDIR)",
    "\ "save=2"
    "\ ]
"let g:asynctasks_template.c = g:asynctasks_template.cpp
