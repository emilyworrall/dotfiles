let skip_defaults_vim=1
set viminfo=""
set background=dark
set runtimepath^=~/.vim/bundle/ctrlp.vim
syntax on
colorscheme turtles

call plug#begin()
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'roman/golden-ratio'
  Plug 'mkitt/tabline.vim'
  Plug 'tpope/vim-fugitive'
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
let g:ctrlp_custom_ignore = 'node_modules'

set splitbelow
set splitright
set autoindent
set winwidth=83
set noswapfile
set term=screen-256color
:command NE NERDTree
:command W w
:command Q q
:command Wq wq
:command WQ wq
