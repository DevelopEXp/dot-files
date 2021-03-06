" Enables syntax highlighting
syntax enable

" Color the line that the cursor is on
set cursorline
highlight CursorLine cterm=UNDERLINE ctermbg=234

" A dark grey for highlighting; rgb=38,38,38
highlight Visual cterm=NONE ctermbg=235 ctermfg=NONE guibg=Grey15

" Show uncomplete commands in the bottom right
set showcmd

" Set indentation level
set tabstop=4
set shiftwidth=4
set expandtab

" Set line width
set tw=80

" Don't wrap long lines (soft wrap)
set nowrap

" Set relative numbering for better navigation
" with the current line number
set relativenumber
set number

" Incrementally highlights the results of a search
set incsearch

" Toggle NERDTree
nmap <LEADER>n :NERDTreeToggle<CR>

" Always show the status line
set laststatus=2

" Airline Status Line settings
let g:airline_theme='dark'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

au FileType qf call AdjustWindowHeight(1, 10)
au FileType qf set wrap
function! AdjustWindowHeight(minheight, maxheight)
    let l = 1
    let n_lines = 0
    let w_width = winwidth(0)
    while l <= line('$')
        " number to float for division
        let l_len = strlen(getline(l)) + 0.0
        let line_width = l_len/w_width
        let n_lines += float2nr(ceil(line_width))
        let l += 1
    endw
    exe max([min([n_lines, a:maxheight]), a:minheight]) . "wincmd _"
endfunction
