" filetype plugin indent on
syntax on
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
