set nocompatible

" Use the 'google' package by default (see http://go/vim/packages).
source /usr/share/vim/google/google.vim


" Load YCM (http://go/ycm) for semantic auto-completion and quick syntax
" error checking. Pulls in a google3-enabled version of YCM itself and
" a google3-specific default configuration.
Glug youcompleteme-google

" Load the automated blaze dependency integration for Go.
" Note: for Go, blazedeps uses the Go team's glaze tool, which is fully
" supported by the Go team. The plugin is currently unsupported for other
" languages.
"Glug blazedeps auto_filetypes=`['go']`

" Load piper integration (http://go/VimPerforce).
"Glug piper plugin[mappings]

" Load Critique integration. Use :h critique for more details.
"Glug critique plugin[mappings]

" Load blaze integration (http://go/blazevim).
"Glug blaze plugin[mappings]

" Load the syntastic plugin (http://go/vim/plugins/syntastic-google).
" Note: this requires installing the upstream syntastic plugin from
" https://github.com/scrooloose/syntastic.
"Glug syntastic-google

" Load the ultisnips plugin (http://go/ultisnips).
" Note: this requires installing the upstream ultisnips plugin from
" https://github.com/SirVer/ultisnips.
"Glug ultisnips-google

filetype plugin indent on
syntax on

"***** added by eacrlin *****
" *** vundle ***
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Snippets utility
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'ervandew/supertab'
Plugin 'christoomey/vim-tmux-navigator'


" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Where to save Ultisnips (so they aren't saved in the local working directory)
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" **************
:imap jj <Esc>
nmap :ue :UltiSnipsEdit
set number
"****************************
