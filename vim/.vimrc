syntax on
"autocmd FileType perl set number
filetype indent plugin on
autocmd Filetype perl :set equalprg=perltidy

"" start folding
"set foldmethod=syntax
"set foldlevelstart=1
"let perl_fold=1
"let perl_fold_blocks=1
"let perl_include_pod=1
"let perl_want_scope_in_variables=1
"let perl_extended_vars=1
"let perl_sync_dist=250
"let sh_fold_enabled=1
"
"inoremap <F9> <C-O>za
"nnoremap <F9> za
"onoremap <F9> <C-C>za
"vnoremap <F9> zf
"" end folding

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
call matchadd('ExtraWhitespace', '\s\+$',-1)
" match ExtraWhitespace /\s\+$/

highlight TabChar ctermbg=lightblue guibg=lightblue
autocmd ColorScheme * highlight TabChar ctermbg=lightblue guibg=lightblue
" Show leading tabs
" 2match TabChar /^\s*\t/
call matchadd('TabChar', '^\s*\t\+\s*',-1)

" Automatically remove trailing whitespace before saving
autocmd FileType perl autocmd BufWritePre <buffer> %s/\s\+$//e

" When editing a git-commit file always move the cursor to the start
" of the file.
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

colorscheme murphy "the colorscheme for winners
set scrolloff=5 "keeps stuff in the middle of the screen when scrolling
set ai "autoindent
set visualbell "visual bell, because pc speakers are so 80's
set showmatch "shows all search matches
set hlsearch "highlight last search pattern
set ignorecase " case insensitive searching
set smartcase " case sensitive searching if there is an uppercase
set incsearch "incremental search
set encoding=utf8 "you can work this out right?
set fileformats=unix,dos
set relativenumber "relative numbers down the lhs
set number "line number on the lhs, just for current line with relativenumber enabled
set modeline
set modelines=10
set ttyfast "go fasta!
set colorcolumn=110 "80 is stupid
set mouse-=a "disable visual mouse stuff
set backspace=indent,eol,start " allow backspace to delete the autoindent, linebreaks or the start of insert mode
set nocompatible " drop vi compatibility
"set ruler
