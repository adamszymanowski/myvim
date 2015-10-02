""""
" => General settings
""""
set nocompatible
set encoding=utf-8

set mouse=a

" history and undo levels
set history=700
set undolevels=700

" reloads .vimrc automaticaly, does not work under windows I guess
autocmd! bufwritepost .vimrc source %

" turn off backups and swaps
set nobackup
set noswapfile

""""
" => Colors and Fonts, User Interface
""""
syntax enable
colorscheme solarized  "| native better for html
set background=dark

" Proper font size for all systems
if has("gui_running")
  set t_Co=256
  if has("gui_gtk2")
      set guifont=FantasqueSansMono\ 13 " best font ever, sorry Inconsolata
  elseif has("gui_macvim")
      set guitfont=Menlo\ Regular:h15
  elseif has("gui_win32")
      set guifont=Consolas:h14:cANSI
  endif

  " turn off annoying error blink/sound
  set noerrorbells
  set novisualbell
  set t_vb=
  set tm=500
endif

" height of command bar
set cmdheight=2
" always show statusline
set laststatus=2
" always show current position
set ruler

" search highlight
set hlsearch

" show mathcing braces, blinking in tenths of second
set showmatch
set mat=2

" vertical move - lines before cursor
set scrolloff=4

" backspace works like it should
set backspace=2
set whichwrap+=<,>,h,l "backspace, cursor keys wrap to next/prev line

set number "show line numbers
set tw=79 "textwidth
set cc=80 "colorcolumn

set wrap "wrap lines visually
set linebreak "no linebreaks without explicit enter
set textwidth=0 wrapmargin=0 "prevent newelines in newly entered text

" (do not) show whitespace, a list of characters
set nolist " list disables linebreak(!)
set listchars=eol:█,tab:►►,trail:⊙,extends:▷,precedes:◁,nbsp:▬


""""
" => Filetype, Tabs and Indents, Format options
""""
filet
" enable filetype plugins
filetype plugin indent on

set expandtab
set smarttab

set autoindent
set smartindent
set cindent

" cindent options
set cinoptions+=L0 " turn off dedent on colon (:)
set cinoptions+=(0 " indent function arguments to parenthesis

" 1 tab == 4 spaces (in general)
set ts=4 sw=4 sts=4 " tabstop, shiftwidth, softtabstop

" 1 tab == 2 spaces
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2
autocmd Filetype eruby setlocal ts=2 sw=2 sts=2

autocmd Filetype html setlocal ts=2 sw=2 sts=2
autocmd Filetype css setlocal ts=2 sw=2 sts=2
autocmd Filetype scss setlocal ts=2 sw=2 sts=2
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2

autocmd Filetype yaml setlocal ts=2 sw=2 sts=2

" only tabs for Makefile
autocmd Filetype make setlocal noexpandtab

" formatoptions, permanent use, no auto-comments
autocmd Filetype,BufNewFile,BufRead,BufWinEnter * setlocal fo-=cro 

set nopaste


""""
" => Keybidnigs
""""
let mapleader = "," " <Leader>

" new tab, tab movement
map <Leader>t <esc> :tabnew<CR>
map <Leader>n <esc> :tabprevious<CR>
map <Leader>m <esc> :tabnext<CR>

" cut copy paste | vmap is for visual
vmap <Leader>x "+x 
vmap <Leader>c "+y
map <Leader>v <esc> "+gP

" move through splits freely (Ctrl + j, k, l, h)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" move through wraped lines
nnoremap k gk
nnoremap j gj


""""
" => Plugins
""""
" settings for pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" settings for syntastic
let g:syntastic_javascript_checkers = ['jshint']

