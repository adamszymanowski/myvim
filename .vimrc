""""
" => General settings
""""
set nocompatible
set encoding=utf-8

set mouse=a

" enable filetype plugins
filetype plugin indent on

" history and undo levels
set history=700
set undolevels=700

" reloads .vimrc automaticaly
autocmd! bufwritepost .vimrc source %

" turn off backups and swaps
set nobackup
set noswapfile

""""
" => Colors and Fonts
""""
syntax enable
colorscheme solarized "native  | native better for html
set background=dark

" Proper font size for all systems
if has("gui_running")
  set t_Co=256
  if has("gui_gtk2")
      set guifont=Inconsolata\ 16
  elseif has("gui_macvim")
      set guitfont=Menlo\ Regular:h15
  elseif has("gui_win32")
      set guifont=Consolas:h14:cANSI
  endif
endif

""""
" => Lines, Wrap, Whitespace
""""
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

set expandtab
set smarttab

set autoindent
set smartindent
set cindent

" turn off dedent on colon (:)
set cinoptions+=L0

" 1 tab == 4 spaces (in general)
set ts=4 sw=4 sts=4 " tabstop, shiftwidth, softtabstop

" 1 tab == 2 spaces
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2
autocmd Filetype eruby setlocal ts=2 sw=2 sts=2
autocmd Filetype html setlocal ts=2 sw=2 sts=2
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2

" only tabs for Makefile
autocmd Filetype make setlocal noexpandtab

" formatoptions, permanent use, no auto-comments
autocmd Filetype,BufNewFile,BufRead,BufWinEnter * setlocal fo-=cro 

set nopaste

""""
" => User Interface Settings
""""

" always show statusline
set laststatus=2
" always show current position
set ruler

" vertical move - lines before cursor
set scrolloff=4

" backspace works like it should
set backspace=2
set whichwrap+=<,>,h,l "backspace, cursor keys wrap to next/prev line

" turn off annoying error sound
set noerrorbells

""""
" => Keybidnigs
""""
let mapleader = "," " <Leader>

" new tab, tab movement
map <Leader>t <esc> :tabnew<CR>
map <Leader>n <esc> :tabprevious<CR>
map <Leader>m <esc> :tabnext<CR>

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
"execute pathogen#infect()
"syntax on
"filetype plugin indent on

" settings for syntastic
"let g:syntastic_javascript_checkers = ['jshint']


""""
" =>
""""
