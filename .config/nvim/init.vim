set t_Co=256

set background=dark
set termguicolors

set nobackup		" do not keep a backup file, use versions instead
set number relativenumber
set numberwidth=1
set hlsearch
set smartcase

"set foldmethod=syntax
"set clipboard=unnamedplus
set mouse=ni

set autoindent                " always set autoindenting on
set copyindent                " copy Indentation
set autoread
nnoremap Q <nop> "Disable annoying EX mode

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set expandtab

syntax enable
colorscheme elflord
call plug#begin('~/.vim/plugged')

"Auto complete

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'zchee/deoplete-zsh'

Plug 'Shougo/neoinclude.vim' "also check completion in includes
Plug 'kovetskiy/sxhkd-vim'
Plug 'Valloric/YouCompleteMe'


Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

"Tools
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'lilydjwg/colorizer' " Colorize hexa or rgb
Plug 'ntpeters/vim-better-whitespace' "show when there is gross trailing whitespace
Plug 'tpope/vim-surround' "Sourounding
Plug 'tpope/vim-repeat' "repat last command from plugin
Plug 'tpope/vim-commentary' "Comment shortcut

Plug 'KabbAmine/vCoolor.vim' " color picker

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Looks
Plug 'luochen1990/rainbow' "rainbow highlight brackets
Plug 'neomake/neomake' "do full syntax checking for most languages
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Themes
Plug 'chriskempson/base16-vim'
Plug 'kaicataldo/material.vim'

"Fancy
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'mhinz/vim-startify' "A nice start menu

Plug 'ryanoasis/vim-devicons' "Icons should always be last plugin
call plug#end()
map <C-n> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:deoplete#enable_at_startup = 1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nmap <C-_> :noh<CR>
nmap <C-ç> :set hlsearch!<CR>

"tab nav with shift
nnoremap <C-J> gT
nnoremap <C-K> gt
nnoremap tn :tabnew<CR>
nnoremap tq :tabclose<CR>

