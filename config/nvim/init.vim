if &compatible
  set nocompatible
endif

let s:dein_dir = $HOME . '/.cache/dein'
let &runtimepath .= ',' . s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let s:toml_dir = $HOME . '/.config/nvim'
  let s:toml = s:toml_dir . '/dein.toml'
  call dein#load_toml(s:toml)

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" https://postd.cc/how-to-boost-your-vim-productivity/
let mapleader = '\<Space>'

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

