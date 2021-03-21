" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Update init.vim
noremap <F5> :so $MYVIMRC<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
"nnoremap <C-s> :w<CR>
nnoremap <Leader>w :w<CR>

" Alternate way to quit
"nnoremap <C-Q> :q!<CR>
nnoremap <Leader>q :q!<CR>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Terminal
  " 起動時にjobmode
  augroup neovim-terminal
    au!
    au TermOpen * startinsert
  augroup END
  " 移動のあともジョブモード
  if has('nvim')
    " Neovim
    autocmd WinEnter * if &buftype ==# 'terminal' | startinsert | endif
  else
    " Vim
    autocmd WinEnter * if &buftype ==# 'terminal' | normal i | endif
  endif 
  tnoremap jk <C-\><C-n>
  tnoremap kj <C-\><C-n>

" braceses
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" Comments
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
