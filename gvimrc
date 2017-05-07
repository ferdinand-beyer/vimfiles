
set guioptions-=T
set guioptions-=m

set columns=120
set lines=32

if has("osx")
  " Install from:
  " https://github.com/abertsch/Menlo-for-Powerline
  set guifont=Menlo\ for\ Powerline:h12
elseif has("win32")
  " Install Powerline Consolas.ttf from:
  " https://github.com/runsisi/consolas-font-for-powerline
  set guifont=Powerline\ Consolas:h10
endif

" If Vim is started from the task bar, its current working directory might be
" set to $VIMRUNTIME or C:\Windows\system32.  Check if we are in one of these
" directories and change to $HOME in this case.
let s:cwd = tolower(getcwd())
if stridx(s:cwd, "c:\\windows") == 0 ||
\  stridx(s:cwd, tolower($VIM)) == 0 ||
\  stridx(s:cwd, tolower($VIMRUNTIME)) == 0
  cd $HOME
endif
