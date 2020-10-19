" ############################################################################
" Appearance

" Set color scheme
colorscheme elflord
set background=dark  " background color brightness "dark" or "light"
set t_Co=256         " use 256 colors color-space

" ##############
" Map Leader Key
let mapleader = "\\"

" #######
" ### GUI
if has('gui_running')

   if has("win32") || has("win64")
      set guifont=Lucida_Console:h8:cANSI
   elseif has("linux")
      set guifont=Monospace\ 8
      " To change this setting we can always type :set guifont?
      " to dislay the current font name
   endif
endif

" Unicode / ASCII
set encoding=utf-8 " character encoding used in Vim: "latin1", "utf-8"
set nolist         " show tab as ^I and \n as $
set listchars=tab:▶▶,eol:↲
   " when 'list' is set, display the tab and eol characters as follows
   "    tab:  ▶▶  (unicode u25b6 u2192)
   "    eol:  ↲   (unicode u21b2)

" Window Dimensions
set columns=100    " width of the display
set colorcolumn=79 " place a vertical color string in the selected column
set lines=50       " num lines in the display
set report=2       " show msg when n number of lines are affected by an edit

" Things to display on screen
set ruler          " show the cursor position all the time
set showmode       " more info in the status line

set number         " show/don't show line numbers 
set relativenumber " Show line numbers realtive to the cursor's current line

" How to display the ex command line
set cmdheight=1    " set command line to one lines high
set showcmd        " on: display partial commands in status line

" ############################################################################
" Behavior

" Next unmap the mappings setup in slides
nnoremap <S-Enter> <S-Enter>
nnoremap <CR>    <CR>
nnoremap <F1>    <F1>
nnoremap <F2>    <F2>
nnoremap <F3>    <F3>
nnoremap <F4>    <F4>
nnoremap <F5>    <F5>
nnoremap <F6>    <F6>
nnoremap <F7>    <F7>
nnoremap <F8>    <F8>
nnoremap <F9>    <F9>
nnoremap <F10>   <F10>
nnoremap <F11>   <F11>
nnoremap <F12>   <F12>
nnoremap <Up>    <Up>
nnoremap <Down>  <Down>
nnoremap <Left>  <Left>
nnoremap <Right> <Right>

" ############################################################################
set directory=.,$TEMP
set noinsertmode   " on: use insert mode as the default mode

" ################################
" ### Search Behaviors
"
set noignorecase   " on: ignore case when using a search pattern
set wrapscan       " wrap the buffer when searching
set incsearch      " do incremental searching
set magic          " on: understand regular expressions
set nosmartcase    " ignore case when search string is all lower case
set hlsearch       " highlight search results

" ########
" ### Tags
"
set tagbsearch     " use binary search in tags files
set taglength=0    " num chars significant for tags.  0: all are significant
set tagstack       " on: enables stacking of tag locations on a stack

"####################
" ### Displaying Text
"
set wrap           " on: wrap long lines
set scrolloff=5    " number of screen lines to show around the cursor
set linespace=0

set noterse        " on: display shorter error messages

" ###################
" ### Using the Mouse
"
set mousemodel=extend  " what the right mouse button is used for
set mousehide          " hide the mouse pointer while typing

" #####################
" ### Messages and Info
"
set noerrorbells   " on: sound a bell when an error occurs
set nohidden

" ##################
" ### Selecting Text
"
set clipboard=unnamed " select which default clipboard to use
                      "   ('unnamed' means use system clipboard
                      "    instead of the unnamed default)

" ################
" ### Editing Text
"
set joinspaces     " use two spaces after '.' when joining a line
set wrapmargin=5   " margin from the right in which to break a line
set backspace=2    " specifies what <BS>, CTRL-W, etc. can do in Insert mode
set noreadonly     " open a files as readonly (must use ! to save)
set noshowmatch    " When inserting a bracket, briefly jump to its match

" ######################
" ### Tabs and Indenting
"
"set tabstop=3     " number of spaces a <Tab> in the text stands for
                   " tabstop is rendered useless by shiftwidth=3,
                   " softtabstop=3 and expandtab
set shiftwidth=3   " number of spaces used for each step of (auto)indent
set softtabstop=3  " if non-zero, number of spaces to insert for a <Tab>
set expandtab      " when inserting, expand tabs to spaces when

set nosmarttab     " a <Tab> in an indent inserts 'shiftwidth' spaces

set nolisp         " autoindenting for lisp source files
set cinoptions=>1s,e0,n0,f1s,{1s,}0,^0,:1s,=1s,p2s,t0,c3,+1s,(0,u1s,)20,*30,g1s,h1s

set noautoindent   " automatically set the indent of a new line
set nosmartindent  " do clever autoindenting - this is obsolete

filetype plugin indent on  " replaces smartindent

" ###########
" ### Mapping
"
set notimeout      " allow timing out halfway into a mapping

" #############################
" ### Reading and Writing Files
"
set autowrite      " automatically write a file when leaving a modified buffer
set nowriteany     " ignore read-only attribute (no ! needed to write)

" Temporary Files
set backup
set backupext=.bk~ " file name extension for the backup file
set undofile
set swapfile       " use a swap file for this buffer

" ########################
" ### Command Line Editing
"
set history=500    " num lines of command line history
set wildmenu       " command-line completion shows a list of matches

" ###############################
" ### Executing External Commands
"
set warn           " warn when using a shell command and a buffer has changes

" set shell=       " name of the shell program used for external commands
if has("win32") || has("win64")
   set shell=c:\windows\system32\cmd.exe
elseif has("linux")
   set shell=/bin/bash
endif

" ###########
" ### Various
"
set viminfo='20,\"50 "list that specifies what to write in the viminfo file
set noedcompatible  " 'g' and 'c' flags of ":substitute" toggle

" #########
" ### Spelling dictionary & Thesaurus
"
set nospell

if has("win32") || has("win64")
   set thesaurus+=$HOME/vimfiles/thesaurus/mthesaur.txt,$HOME/vimfiles/thesaurus/roget13a.txt
elseif has("linux")
   set thesaurus+=$HOME/.vim/thesaurus/mthesaur.txt,$HOME/.vim/thesaurus/roget13a.txt
endif

