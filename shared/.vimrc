" filetype plugin indent on

" syntax highlight
syntax on

" remap  <Esc> to jj
:imap jj <Esc>
set number

" Share clipboard with OS
" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" search hidden files with ctrlp
let g:ctrlp_show_hidden = 1

" move up and down one visible line (not newline)
nmap j gj
nmap k gk

" allow backspace to function as you might expect
" normally vim uses behavior like not letting you use
" backspace past where the insert started
set backspace=indent,eol,start

" incremental search
set incsearch
" ignore case while searching
set ignorecase
" If a char is capatlized don't ignore its case while searching
set smartcase
" higlight terms as searching 
set hlsearch
" key to remove search highlighting
nmap \q :nohlsearch<CR>

" add line at 80 chars
:set colorcolumn=72

" more natural pane splitting
set splitbelow
set splitright

" better naviagtion in split panes
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
