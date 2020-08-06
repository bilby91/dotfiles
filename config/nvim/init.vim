set hidden
set nocompatible

filetype off

source ~/.config/nvim/plugins.vim

let mapleader = " "

let g:ackprg = 'ag --vimgrep'

let g:nerdtree_tabs_open_on_console_startup = 0
let NERDTreeQuitOnOpen = 0
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '_trial_temp(.)*/']

let g:CtrlSpaceSearchTiming = 500

let g:move_key_modifier = 'C'

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore tmp/ --ignore .git/ -g ""'
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

color jellybeans

"folding settings
set foldmethod=indent
set nofoldenable
set foldlevel=1
set history=1000
set laststatus=2
set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
set synmaxcol=328
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set omnifunc=syntaxcomplete#Complete
set grepprg=ag\ --nogroup\ --nocolor

map <Space> <Nop>
noremap <CR> <Nop>

" Menu
map ff :NERDTreeFind<CR>
map mt :NERDTreeTabsToggle<CR>

" EasyAlign
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

map <Leader>w <C-w>
map <Leader>s :w<CR>

" Search
map <Leader>f :CtrlSF 
vnoremap <Leader>f y<CR>:CtrlSF <C-R>"<CR>

vnoremap // y/<C-R>"<CR>

nnoremap <Leader>y :History<CR>
nnoremap <Leader>o :FZF<CR>

map <Leader>h <C-W><C-H>
map <Leader>l <C-W><C-L>
map <Leader>k <C-W><C-K>
map <Leader>j <C-W><C-J>

map <TAB> ><Right>
map <S-TAB> <<Right>

vmap <TAB> >gv
vmap <S-TAB> <gv

map <Leader>/ <Leader>c<Leader>i<ESC>

map <Leader>t :tabnew<CR>
map <Leader>q <S-z><S-z>
map qq <S-z><S-z>
map <Leader><S-d> YP<ESC>
map <Leader>r :s///g
map <Leader>R :e!<CR>
map <Leader>x dd<ESC>
map <Leader>a :%y+<CR>

vmap ' S'
vmap " S"

map \ :nohlsearch<CR>

nmap <Leader><Leader> V

" Tabs

map >> :execute "tabmove" tabpagenr() +1<CR>
map << :execute "tabmove" tabpagenr() -2<CR>

map .. gt<ESC>
map ,, gT<ESC>

" Go to tab by number
noremap 11 1gt
noremap 22 2gt
noremap 33 3gt
noremap 44 4gt
noremap 55 5gt
noremap 66 6gt
noremap 77 7gt
noremap 88 8gt
noremap 99 9gt
noremap 00 :tablast<cr>

" Python3 Support
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Autocomplete

:set dictionary="/usr/dict/words"

let g:deoplete#enable_at_startup=1

" disable autocomplete
let g:deoplete#disable_auto_complete = 1

let g:tsuquyomi_completion_detail = 1

let g:deoplete#sources={}
let g:deoplete#sources._    = ['buffer', 'file', 'ultisnips']
let g:deoplete#sources.ruby = ['buffer', 'member', 'file', 'ultisnips']
let g:deoplete#sources.vim  = ['buffer', 'member', 'file', 'ultisnips']
let g:deoplete#sources.css  = ['buffer', 'member', 'file', 'omni', 'ultisnips']
let g:deoplete#sources.scss = ['buffer', 'member', 'file', 'omni', 'ultisnips']

" Insert <TAB> or select next match
inoremap <silent> <expr> <Tab> utils#tabComplete()

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Autogenerate ctags
"autocmd BufWritePost * call atags#generate()

au FocusLost * silent! wa
au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go
