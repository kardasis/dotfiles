" open a file in the dailies folder with the current date.  create directories
" if needed
function! GoToDaily()
  let year = strftime("%G")
  let month = strftime("%m")
  let day = strftime("%d")
  let dir = "$HOME/notes/dailies/".year."/".month
  if !isdirectory(dir)
    call mkdir(dir, "p")
  endif
  let filePath = "$HOME/notes/dailies/".year."/".month."/".day.".md"
  execute 'vsplit' filePath
endfunction
