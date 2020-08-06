call plug#begin('~/.config/nvim/plugged')

" Plugins
"
Plug 'Shougo/deoplete.nvim'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ivalkeen/guard-ctags-bundler'
Plug 'kchmck/vim-coffee-script'
Plug 'henrik/git-grep-vim'
Plug 'tpope/vim-fugitive'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'vim-utils/vim-ruby-fold'
Plug 'tpope/vim-rake'
Plug 'nanotech/jellybeans.vim'
Plug 'powerline/powerline'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'szw/vim-ctrlspace'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'slim-template/vim-slim'
Plug 'mileszs/ack.vim'
Plug 'osyo-manga/vim-over'
Plug 'bling/vim-airline'
Plug 'wincent/command-t'
Plug 'matze/vim-move'
Plug 'terryma/vim-multiple-cursors'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'

" Go programming language support
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'fntlnz/atags.vim'

" An ack/ag/pt powered code search and view tool, like ack.vim or :vimgrep but together with more context, and let you edit in-place with powerful edit mode.
Plug 'dyng/ctrlsf.vim'

Plug 'hashivim/vim-terraform'

" Add plugins to &runtimepath
call plug#end()
