if &compatible
  set nocompatible
endif

" https://postd.cc/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>

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

filetype plugin on
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" https://github.com/jpalardy/vim-slime
let g:slime_target = 'neovim'

" http://blog-sk.com/vim/neovim-settings/
nnoremap <Leader>t :split +:terminal<CR>
tnoremap <ESC> <C-\><C-n>
