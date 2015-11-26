"source $VIMRUNTIME/vimrc_example.vim
"set runtimepath+=$VIMRUNTIME/after
"set number
set statusline=%f%m%r%h%w\ [L\:%04l,C\:%04v][%p%%]\ [EOL\:%L]
"set statusline=%F%m%r\  [L:%04l,C:%04v][%p%%]
set history=5000

"検索系
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト (2013-07-03 14:30 修正）

"表示関係
"set list                " 不可視文字の可視化
set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
"set colorcolumn=80      " その代わり80文字目にラインを入れる

" 前時代的スクリーンベルを無効化
set t_vb=
set novisualbell

set autowrite
set showcmd
set number
set showmode
set showmatch
set laststatus=2
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set enc=UTF-8
set fenc=UTF-8
set fencs=UTF-8,ISO-2022-JP,EUC-JP,CP932

set nobackup
set nowritebackup
"set noautoindent
set autoindent
set noswapfile
set smarttab

autocmd FileType python setl colorcolumn=80 textwidth=78

autocmd FileType python let g:pydiction_location = '~/.vim/pydiction/complete-dict'
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/vagrant/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle install
NeoBundle 'andviro/flake8-vim'
"NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'

" ---- colorschemes -----:
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'chriskempson/vim-tomorrow-theme'

call neobundle#end()

NeoBundleCheck

let g:PyFlakeOnWrite = 0
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
let g:PyFlakeDefaultComplexity=10
let g:PyFlakeRangeCommand = 'Q'

let g:jedi#completions_command = "<C-k>"

autocmd FileType python let b:did_ftplugin = 1
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

filetype plugin indent on
filetype indent on
syntax on
colorscheme default
