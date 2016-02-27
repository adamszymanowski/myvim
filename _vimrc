""""
" => General settings
""""
set nocompatible
set encoding=utf-8

set mouse=a

" history and undo levels
set history=700
set undolevels=700

set hlsearch "highlight search

autocmd! bufwritepost .vimrc source % " reloads .vimrc automaticaly

" turn off backups and swaps
set nobackup
set noswapfile

set nopaste

""""
" => User Interface Settings
""""
syntax enable
colorscheme solarized  "| native better for html
set background=dark

set t_Co=256
if has("gui_running")
  if has("gui_gtk2")
      set guifont=FantasqueSansMono\ 13 " best font ever, sorry Inconsolata
  elseif has("gui_macvim")
      set guifont=Menlo\ Regular:h15
  elseif has("gui_win32")
      set guifont=Consolas:h8:cANSI
  endif

  " turn off annoying error blink/sound in GUI 
  autocmd GUIEnter * set vb t_vb=
endif

" turn off toolbar and menu
set guioptions-=T
set guioptions-=m

set number "show line numbers
set tw=79 "textwidth
set cc=80 "colorcolumn

set wrap "wrap lines visually
set linebreak "no linebreaks without explicit enter
set textwidth=0 wrapmargin=0 "prevent newelines in newly entered text

" (do not) show whitespace, a list of characters
set nolist " list disables linebreak(!)
set listchars=eol:█,tab:►►,trail:⊙,extends:▷,precedes:◁,nbsp:▬

set laststatus=2 " always show statusline
set ruler " always show current position
set showmode " always show mode

set scrolloff=4 " vertical move - lines before cursor

set backspace=2 " backspace works like it should
set whichwrap+=<,>,h,l "backspace, cursor keys wrap to next/prev line

set noerrorbells " turn off annoying error sound

""""
" => Filetype, Tabs and Indents, Format options
""""
filetype plugin indent on  " enable filetype plugins

set expandtab
set smarttab

set autoindent
set smartindent
set cindent

set cinoptions+=L0 " turn off dedent on colon (:)

" 1 tab == 2 spaces (in general)
set ts=2 sw=2 sts=2 " tabstop, shiftwidth, softtabstop

" 1 tab == 4 spaces
autocmd Filetype c          setlocal ts=4 sw=4 sts=4
autocmd Filetype python     setlocal ts=4 sw=4 sts=4
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4
autocmd Filetype java       setlocal ts=4 sw=4 sts=4

" only tabs for Makefile
autocmd Filetype make setlocal noexpandtab

" formatoptions, permanent use, no auto-comments
autocmd Filetype,BufNewFile,BufRead,BufWinEnter * setlocal fo-=cro 

""""
" => Keybidnigs
""""
let mapleader = "," " <Leader>

" new tab, tab movement
nnoremap <Leader>t  :tabnew<CR>
nnoremap <Leader>n  :tabprevious<CR>
nnoremap <Leader>m  :tabnext<CR>

" cut copy paste | vmap is for visual
vmap <Leader>x "+x 
vmap <Leader>c "+y
map <Leader>v <esc> "+gP

" splits
nnoremap <Leader>s :vsplit<CR>
nnoremap <Leader>h :split<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>w :wa<CR> " write all
nnoremap <Leader>f :echo @%<CR> " current file name

" switch colorschemes
nnoremap <Leader>1 :set background=dark<CR><esc> :colorscheme solarized<CR>
nnoremap <Leader>2 :set background=light<CR><esc> :colorscheme solarized<CR>
nnoremap <Leader>3 :colorscheme native<CR>

" move through splits freely (Ctrl + j, k, l, h)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" move through wraped lines
nnoremap k gk
nnoremap j gj

set pastetoggle=<F5>

""""
" => Plugins
""""
" settings for pathogen
execute pathogen#infect()
syntax on

" settings for syntastic
"let g:syntastic_javascript_checkers = ['jshint', 'flow']
""let g:syntastic_scss_checkers = ['scss_lint']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
