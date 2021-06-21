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
    call AnkiToTabs(line('$') + 1)
endfunction
