" Ignores the casing when searching
set smartcase

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>  " Down
nnoremap <C-K> <C-W><C-K>  " Up
nnoremap <C-L> <C-W><C-L>  " Right
nnoremap <C-H> <C-W><C-H>  " Left

" Handle bufferes - Next, Previous
nnoremap gt :bn<CR>
nnoremap gT :bp<CR>

" Move up a line even through word wrap
nnoremap j gj
nnoremap k gk

" Fuzzy File finding settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

nnoremap <LEADER>f :NERDTreeFind<CR>
