set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
"set clipboard=unnamedplus
set mouse=a

call plug#begin('~/.vim/plugged')
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
"Plug 'morhetz/gruvbox'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ryanoasis/vim-devicons'
"Plug 'scrooloose/nerdcommenter'
"Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'tpope/vim-fugitive'
"Plug 'davidhalter/jedi-vim'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'PhilRunninger/nerdtree-visual-selection'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
call plug#end()

"colorscheme gruvbox
"let g:bargreybars_auto=0
"let g:airline_solorized_bg='dark'
"let g:airline_powerline_fonts=1
"let g:airline#extension#tabline#enable=1
"let g:airline#extension#tabline#left_sep=' '
"let g:airline#extension#tabline#left_alt_sep='|'
"let g:airline#extension#tabline#formatter='unique_tail'
"
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = '#'
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['nerdtree'] = '#'


autocmd vimenter * NERDTree
filetype plugin indent on
autocmd FileType * setlocal expandtab tabstop=2 shiftwidth=2
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-c> "+yy
vnoremap <C-c> "+y
nnoremap <M-k> ddkP
nnoremap <M-j> ddjp
tnoremap <Esc> <C-\><C-n>

" Use Enter to confirm completion if the popup is visible, otherwise insert newline
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
" Show function signature/help when cursor is on function or during input
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
" Show signature help when typing function parameters
inoremap <silent><expr> <C-k> coc#refresh()
