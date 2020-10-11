"let mapleader = "\<Space>"

nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" presentation mode
" <left> and <right> jump to previous/next slide
nnoremap <Left>  :silent bprevious<CR> :redraw!<CR>
nnoremap <Right> :silent bnext<CR> :redraw!<CR>

" Setup some Function Keys

" F1 toggles a few things on/off so in slide creation mode we can have these
" things showing, and in presentation mode they can be turned off
nnoremap <F1>  :set relativenumber! number! showmode! showcmd! hidden! ruler!<CR>

nnoremap <F2>  :call DisplayPresentationBoundaries()<CR>
nnoremap <F3>  :call FindExecuteCommand()<CR>

" jump to slides
nnoremap <F9>  :call JumpFirstBuffer()<CR> :redraw!<CR>
nnoremap <F10> :call JumpSecondToLastBuffer()<CR> :redraw!<CR>
nnoremap <F11> :call JumpLastBuffer()<CR> :redraw!<CR>

" Help creating presentations with external filters
" redraw the current text with figlet standard or small font
nnoremap <leader>FF :.!toilet -w 200 -f standard<CR>
nnoremap <leader>ff :.!toilet -w 200 -f small<CR>

" redraw the current text with a box around it
nnoremap <leader>fb :.!toilet -w 200 -f term -F border<CR>

