" --- Plugins List ---
"
call plug#begin()
" Theme Ayu
Plug 'ayu-theme/ayu-vim' " or other package manager

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" vim-icons
Plug 'ryanoasis/vim-devicons'

" Better Visual Guide 
Plug 'Yggdroot/indentLine'
Plug 'MaxMEllon/vim-jsx-pretty'

" File Explorer integrated
Plug 'preservim/nerdtree'

" Autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
	let g:coc_global_extensions = ['coc-emmet','coc-css','coc-html','coc-json','coc-prettier','coc-tsserver','coc-python']
" Plugin for C#
Plug 'OmniSharp/omnisharp-vim'

" Formater
Plug 'Chiel92/vim-autoformat'

" For styles/CSS
Plug 'ap/vim-css-color'

call plug#end()
" --- Configurations Part ---
" UI configuration
syntax on
syntax enable
colorscheme ayu
let ayucolor="dark"   " for dark version of theme
"let ayucolor="mirage" " for mirage version of theme
"True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
" Set cursor in block mode
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif
set number
set hidden
set mouse=a
set noshowmode
set scrolloff=10
set noshowmatch
set nolazyredraw
" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4

"NERDTree setup
"Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Toggle NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" open new split panes to right and below
set splitright
set splitbelow

" use alt + h or l for move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-l> <C-w>l

" disable coc.nvim alert at startup
let g:coc_disable_startup_warning = 1

" use  coc#refresh()
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm():
      \ coc#refresh()
" fix vim timeoutlen for ESC key
:set ttimeoutlen=0 timeoutlen=0

let g:OmniSharp_server_use_mono = 1
let g:syntastic_python_python_exec = 'python'
