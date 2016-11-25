" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Sep 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text
set t_Co=256
set tabstop=4
set nu
" Make shift-insert work like in Xterm
"nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
"nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR> 
"nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
"nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
"nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR> 
"nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR> 
"nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR> 
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"cmap to TlistToggle
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
"syn match cFunction ;"\<[a-zA-Z_][a-zA-_Z0-9]*\>[^\[\]]*\]\["me=e-2
"syn match cFunction ;"\<[a-zA-Z_][a-zA-_Z0-9]*\>\s*\["me=e-1
"hi cFunction gui=NONE guifg=green

" Only do this for Vim version 5.0 and later.

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

  " Set nice colors
  " background for normal text is light grey
  " Text below the last line is darker grey
  " Cursor is green, Cyan when ":lmap" mappings are active
  " Constants are not underlined but have a slightly lighter background
  highlight Normal guibg=#585952 guifg=white
  highlight Cursor guibg=green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95
  let Tlist_Ctags_Cmd = '/usr/bin/ctags'
  let Tlist_Show_One_File = 1
  let Tlist_Exit_OnlyWindow = 1
  let Tlist_Use_Right_Window = 1
  let g:winManagerWindowLayout='FileExplorer|TagList'
  let g:winManagerWidth=35
  nmap wm :WMToggle<cr>
  "set refresh time to 500ms to keep the taglist being newest
  set ut=500
