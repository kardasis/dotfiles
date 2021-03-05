function! Paste(regname, pasteType, pastecmd)
  let reg_type = getregtype(a:regname)
  call setreg(a:regname, getreg(a:regname), a:pasteType)
  exe 'normal "'.a:regname . a:pastecmd
  call setreg(a:regname, getreg(a:regname), reg_type)
endfunction
