set nohls
set number
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set hls
set path+=**
syntax off
set tabstop=4 shiftwidth=4 
set wildignore+=**/node_modules/** 
set wildmenu

set nobackup
set nowritebackup
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
set nobackup
set noswapfile
set noundofile
filetype on
filetype indent on

set textwidth=0
set wrap

set incsearch

"=================== Settings ======================
set nohls
set number
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set hls
set path+=**
syntax off
set tabstop=4 shiftwidth=4 
set wildignore+=**/node_modules/** 
set wildmenu

set nobackup
set nowritebackup
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
set nobackup
set noswapfile
set noundofile
filetype on
filetype indent on

set textwidth=0
set wrap

set incsearch

"=================== Mappings ======================

nnoremap <insert> @@

"=================== Functions ======================
"Change:
"Question
"Answer
"
"to
"
"Question\tAnswer
function AnkiToTabs(count=1)
    for i in range(a:count)
        :s/\n/\t/g
        :join
        execute "normal! j"
    endfor
endfunction

function Anki()
    execute "normal! gg"
    call AnkiToTabs(line('$') + 1)

    " Remove the extra tabs at the end of the file
    execute "normal! G"
    execute "normal! $"
    execute "normal! b"
    execute "normal! l"
    execute "normal! D"
endfunction

function Terraformat()
    exec "!terraform fmt " . expand("%")
    :e
endfunction
