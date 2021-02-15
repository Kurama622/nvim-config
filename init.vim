let mapleader=" "                " 设置leader键为空格键
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/dein')
  call dein#begin('~/.config/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('neoclide/coc.nvim', {'branch': 'release'})
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  "call dein#add('Yggdroot/LeaderF', {
      "\'build': './install.sh',
      "\'on_cmd': ['LeaderfFile', 'LeaderfMru', 'LeaderfMruCwd', 'LeaderfBufferAll', 'LeaderfBufTag', 'LeaderfFunctionAll', 'LeaderfLine'],
      "\'hook_source': "source $HOME/.config/nvim/container/plugin/leaderf.vim"
      "\})
  call dein#add('glepnir/oceanic-material')
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
              \ 'build': 'sh -c "cd app && yarn install"' })
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

for file in split(glob("~/.config/nvim/container/*.vim"), '\n')
    exe 'source' file
endfor

