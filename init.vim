" Just my simple config
call plug#begin('~/.vim/plugged')

"Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
"Plug 'yuezk/vim-js'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'morhetz/gruvbox'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
"Plug 'lervag/vimtex'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


call plug#end()

filetype off
filetype plugin indent on
syntax enable
set bg=dark
colorscheme codedark
set nowrap

set guifont=FiraCode\ 14

inoremap jk <Esc>


set splitbelow
set splitright

noremap <SPACE> <Nop>
let mapleader=" "

set showcmd

set expandtab " On pressing tab, insert 2 spaces
set tabstop=4 " show existing tab with 2 spaces width
set softtabstop=4
set shiftwidth=4 " when indenting with '>', use 2 spaces width

set number
set noswapfile
set nobackup
set nowritebackup

set textwidth=80
set wildignore+=**/node_modules/**,**/dist/**,**_site/**,*.swp,*.png,*.jpg,*.gif,*.webp,*.jpeg,*.map

set list
set listchars=tab:→→,eol:¬,space:.

set smartcase

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\s\+$//e

" general plugins.
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"map <Leader>t :NERDTreeToggle<CR>

" CoC Explorer
nnoremap <Leader>e :CocCommand explorer<CR>
" Javascript stuffies
let g:javascript_plugin_jsdoc=1

" CoC Tab Completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? \<"C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Telescope nvim
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

