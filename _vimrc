syntax enable
colorscheme solarized

" #################################
" Setup modes: Code, Prose, Present
"
if ("win32") || has("win64")
   let $VIHOMEROOT="$HOME/vimfiles"
elseif has("linux")
   let $VIMHOMEROOT="$HOME/.vim"
endif

" Define Some Commands
command! Prose  source $VIMHOMEROOT/prose_settings.vim
command! Code   source $VIMHOMEROOT/code_settings.vim
command! Slides source $VIMHOMEROOT/slides_settings.vim

command! Config execute ":e $MYVIMRC"

Code

" Open Nerdtree at startup.  'augroup' insures these autocmd lines
" aren't executed again if .vimrc is sourced.
augroup AutoMake
   autocmd StdinReadPre * let s:std_in=1
   autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END

"
" #######################################################################
" Mappings for Tabs

" Setup shortcuts for working with tabs.  All use nnoremap or
" normal mode noremap.  This makes the mapping effective only in normal
" mode and doesn't allow recursion of mappings.

"tn makes a new tab, tc closes the current tab
nnoremap tn :tab-new<CR>
nnoremap tc :tabclose<CR>

" th and tl moves to the next tab to the left or right
nnoremap th :tabprevious<CR>
nnoremap tl :tabnext<CR>

" t< and t> moves the current tab one position left or right
nnoremap t< :tabmove -<CR>
nnoremap t> :tabmove +<CR>

"
" #########################################################################
" Mappings for windows

" Speed up moving between window splits so we don't have to press ctrl
" wn creates a new split (above this one)
" wv creates a new split beside this one
" wc closes the current tab
nnoremap wn :spl<CR>
nnoremap wv :vs<CR>
nnoremap wc <C-W>c

" wh,wj,wk,wl moves to the next split in the indicated direction
nnoremap wh <C-W>h
nnoremap wj <C-W>j
nnoremap wk <C-W>k
nnoremap wl <C-W>l

" w= makes all splits equal size
" w+,w- increase/decrease the size of the current split
nnoremap w= <C-W>=
nnoremap w+ <C-W>+
nnoremap w- <C-W>-

" wx swapps this split with the next one
nnoremap wx <C-W>x

"
" #######################################################################
" NERDTree mappings

" nt toggle NERDTree on/off
nnoremap nt :NERDTreeToggle<CR>


