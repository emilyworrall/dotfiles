let skip_defaults_vim=0
set viminfo=""
set background=dark
syntax on

call plug#begin()
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'kadekillary/Turtles'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'roman/golden-ratio'
  Plug 'mkitt/tabline.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'benmills/vimux'
  Plug 'skalnik/vim-vroom'
  Plug 'leafgarland/typescript-vim'
call plug#end()

filetype plugin indent on
set ts=2 sts=2 sw=2 expandtab
set list listchars=tab:»·,trail:·,nbsp:·
set number
set numberwidth=5

colorscheme turtles

let g:airline_section_b = '%{strftime("%c")} %{fugitive#statusline()}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'

nnoremap <silent> <C-p> :Files<CR>

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

let g:vroom_use_vimux = 1
let g:vroom_map_keys = 0
let g:vroom_clear_screen = 0

map <Leader>t :VroomRunTestFile<CR>
map <Leader>s :VroomRunNearestTest<CR>
map <Leader>l :RunLastSpec<CR>
