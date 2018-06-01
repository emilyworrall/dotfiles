set background=dark
set runtimepath^=~/.vim/bundle/ctrlp.vim
syntax on
colorscheme turtles

call plug#begin()
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'roman/golden-ratio'
  Plug 'mkitt/tabline.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'kadekillary/Turtles'
call plug#end()

filetype plugin indent on
set ts=2 sts=2 sw=2 expandtab
set list listchars=tab:»·,trail:·,nbsp:·
set number
set numberwidth=5

let g:airline_section_b = '%{strftime("%c")} %{fugitive#statusline()}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'

set splitbelow
set splitright
set autoindent
set winwidth=83
set noswapfile
