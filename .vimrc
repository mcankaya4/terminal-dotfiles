set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set nocompatible
set hlsearch
set cursorline

call plug#begin()
	Plug 'tpope/vim-commentary'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'itchyny/lightline.vim'
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Install fuzzy finder binary
	Plug 'junegunn/fzf.vim' 
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTree' } 
	Plug 'editorconfig/editorconfig-vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'prettier/vim-prettier', {
		  \ 'do': 'yarn install --frozen-lockfile --production',
		  \ 'for': ['javascript', 'php', 'css', 'less', 'scss', 'json', 'vue', 'html'] }
	Plug 'sheerun/vim-polyglot'
call plug#end()

" autocmd VimEnter * NERDTree
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeShowHidden=1


let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.css,*.scss,*.json,*.md,*.vue,*.php,*.html,*.ts PrettierAsync

let g:coc_global_extensions = [
    \ 'coc-html',
	\ 'coc-json',	
    \ 'coc-css',
    \ 'coc-phpls',
	\ 'coc-diagnostic'
    \]

syntax on

let g:material_theme_style = 'challenger_deep'
colorscheme challenger_deep
let g:lightline = { 'colorscheme': 'challenger_deep'}
let g:airline_theme = 'challenger_deep'
let g:onedark_termcolors=256

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

highlight LineNr ctermfg=7 ctermbg=27
highlight CursorLine ctermbg=232

nnoremap nc  :NERDTreeClose<CR>
nnoremap nt  :NERDTreeToggle<CR>
nnoremap nf  :NERDTreeFocus<CR>
nnoremap no  :NERDTree<CR>
nnoremap ee  :Explore<CR>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

nnoremap te  :tabedit<Space>
nnoremap td  :tabclose<CR>

nnoremap vsp :vsplit<Space>
nnoremap sp  :split<Space>

nnoremap ff :Files<cr>
let g:fzf_buffers_jump = 1
let g:fzf_action = {
\ 'enter': 'tab split',
\ 'ctrl-s': 'split',
\ 'ctrl-v': 'vsplit' }

