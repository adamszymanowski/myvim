""""
" => General settings
""""
set nocompatible
set encoding=utf-8

set mouse=a


" history and undo levels
set history=700
set undolevels=700

" search options
set hlsearch "highlight search
" smartcase on demand: /SmartCase\c  | matches smartcase, SmartCase, etc.

" reloads .vimrc automaticaly
autocmd! bufwritepost _vimrc source %

" turn off backups and swaps
set nobackup
set noswapfile

""""
" => Colors and Fonts
""""
syntax enable
colorscheme solarized  "| native better for html
set background=dark
" NOTE: switch colorschemes with Keybindings

" Proper font size for all systems
set t_Co=256
if has("gui_running")
  if has("gui_gtk2")
      set guifont=FantasqueSansMono\ 13 " best font ever, sorry Inconsolata
  elseif has("gui_macvim")
      set guifont=Fantasque\ Sans\ Mono\ Regular:h13 "Menlo\ Regular:h15
  elseif has("gui_win32")
      set guifont=Consolas:h8:cANSI
  endif

  " turn off annoying error blink/sound in GUI 
  autocmd GUIEnter * set vb t_vb=
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
filetype plugin indent on  " enable filetype plugins

set expandtab
set smarttab

set autoindent
set smartindent
set cindent

" turn off dedent on colon (:)
set cinoptions+=L0

" 1 tab == 2 spaces (in general)
set ts=2 sw=2 sts=2 " tabstop, shiftwidth, softtabstop


" 1 tab == 4 spaces
autocmd Filetype c          setlocal ts=4 sw=4 sts=4
autocmd Filetype python     setlocal ts=4 sw=4 sts=4
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4

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
" always show mode
set showmode

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

" write all
nnoremap <Leader>w :wa<CR>

" current file name
nnoremap <Leader>f :echo @%<CR>

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
"execute pathogen#infect()
"syntax on
""""
" =>
""""
