call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ap/vim-css-color'

" Coding
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'

" File Explore
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'moll/vim-bbye'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

" Auto Complete
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/deoplete.nvim'

" Code Style
Plug 'Chiel92/vim-autoformat'
Plug 'ntpeters/vim-better-whitespace'

" Syntax
Plug 'mustache/vim-mustache-handlebars'
Plug 'jimmyhchan/dustjs.vim'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'

" Tools
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" General
set hidden
set undofile
set wildmenu
set autoread
set noswapfile
set mouse=a
set undodir=/tmp
set updatetime=250
set ttimeoutlen=100
set foldmethod=indent
set foldlevelstart=99
set pastetoggle=<F12>
set clipboard=unnamed,unnamedplus
set wildignore+=*/node_modules/*,*/dist/*
let mapleader = ","
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap cf :let @+=expand("%:p")<cr>
nnoremap cp :%y<cr>
nnoremap vv vip
vnoremap d "_d
command Q :q!
command W w !sudo tee % > /dev/null

" Tab & Space
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" Search
set hlsearch
set incsearch
set ignorecase
nnoremap <silent> ch :noh<cr>

" Buffer
nnoremap bo :BufOnly<cr>
nnoremap bd :Bdelete<cr>
let c = 1
while c <= 99
    execute "nnoremap " . c . "b :" . c . "b\<cr>"
    let c += 1
endwhile

" Theme
set cul
set number
set relativenumber
set background=dark
set colorcolumn=80,120
let g:gruvbox_sign_column = "bg0"
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_invert_selection = 0
colorscheme gruvbox
hi CursorLine ctermbg=235
hi ColorColumn ctermbg=235
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=235
hi MatchParen ctermbg=NONE cterm=underline

" Airline
set laststatus=2
let g:airline_theme = "wombat"
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%p%%  %l/%L : %v"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ":t"
let g:airline#extensions#tabline#buffer_nr_show = 1

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

" Nerd Commenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = "left"

" Multiple Cursor
let g:multi_cursor_exit_from_insert_mode = 0

" Easy Motion
let g:EasyMotion_smartcase = 1
nmap t <Plug>(easymotion-overwin-f)

" Nerd Tree
let NERDTreeShowHidden = 1
nnoremap <c-e> :NERDTreeToggle<cr>

" Ctrl-P
let g:ctrlp_show_hidden = 1

" Emmet
let g:user_emmet_leader_key = "<c-z>"
imap <expr><c-y> emmet#expandAbbrIntelligent("\<tab>")
imap <expr><c-j> "<c-z>n"
imap <expr><c-k> "<c-z>N"

" Utilsnip
let g:UltiSnipsExpandTrigger = "<c-l>"

" Neocomplete & Deoplete.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
if has('nvim')
    let g:deoplete#enable_at_startup = 1
else
    let g:neocomplete#enable_at_startup = 1
endif


" White Space
nnoremap <space>c :StripWhitespace<cr>:w<cr>
