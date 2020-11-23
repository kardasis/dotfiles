function! OpenBufferInNewTab()
  let s:originalTab = tabpagenr()    |" find the current tab number
  echo s:originalTab
  if tabpagewinnr(s:originalTab, '$') ==# 1
    return
  endif
  let s:buf = bufnr("%")             |" find buffer number
  tabnew                             |" open new tab
  let s:newTab = tabpagenr()
  :execute "b".s:buf          |" open buffer in new tab
  :execute s:originalTab."tabnext"   |" return to original tab
  :q                                 |" close window
  :execute s:newTab."tabnext"        |" return to new tab
endfunction
