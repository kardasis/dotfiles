function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  if strlen(l:branchname) > 0
    return l:branchname
  else
    return '-- NO GIT --'
  endif
endfunction


augroup StatuslineActive
  autocmd!
  autocmd WinEnter,BufEnter * call <SID>apply_active_statusline() " active
  autocmd WinLeave * call <SID>apply_inactive_statusline() " inactive
augroup END

function! s:apply_inactive_statusline(...) abort 
  execute ':setlocal statusline=' .  substitute(s:Inactive_sl(), ' ', '\\ ', "g")
endfun

function! s:apply_active_statusline(...) abort 
  execute ':setlocal statusline=' .  substitute(s:Active_sl(), ' ', '\\ ', "g")
endfun

function! StatuslineMode()
  let l:sl = ''
  let l:sl .= '%#StatusLinePurple#%{(mode()==''n'')?''  NORMAL  '':''''}' 
  let l:sl .= '%#StatusLinePurpleBlue#%{(mode()==''n'')?'''':''''}' 
" 
  let l:sl .= '%#StatusLineWhite#%{(mode()==''i'')?''  INSERT  '':''''}'
  let l:sl .= '%#StatusLineWhiteBlue#%{(mode()==''i'')?'''':''''}' 
" 
  let l:sl .= '%#StatusLinePink#%{(mode()==''v'')?''  VISUAL  '':''''}'
  let l:sl .= '%#StatusLinePinkBlue#%{(mode()==''v'')?'''':''''}' 
" 
  let l:sl .= '%#StatusLineBlack#%{(mode()==''c'')?''  COMMAND  '':''''}'
  let l:sl .= '%#StatusLineBlackBlue#%{(mode()==''c'')?'''':''''}' 
" 

  " %#StatusLineBlackBlue#' 
  " if l:currentMode == 'n'
  "   let l:sl = '%#StatusLinePurple#'
  "   let l:sl .= ' NORMAL '
  " if l:currentMode == 'i'
  "   let l:sl .= '%#StatusLineWhite#'
  "   let l:sl .= ' INSERT '
  " elseif l:currentMode == 'v'
  "   let l:sl .= '%#StatusLinePink#'
  "   let l:sl .= ' VISUAL '
  " elseif l:currentMode == 'c'
  "   let l:sl .= '%#StatusLineBlack#'
  "   let l:sl .= ' COMMAND '
  " else
  "   let l:sl .= '%#StatusLineBlue#'
  " endif
  " let l:sl .= '%#StatusLinePurpleBlue#'
  return l:sl
endfunction

function! StatuslineModeColor()
  let l:currentMode = mode()
  if l:currentMode == 'n'
    return '%#StatusLinePurple#'
  elseif l:currentMode == 'i'
    return '%#StatusLineWhite#'
  elseif l:currentMode == 'v'
    return '%#StatusLinePink#'
  elseif l:currentMode == 'c'
    return '%#StatusLineBlack#'
  endif
endfunction

function! s:Active_sl(...)
  let l:sl = ''
  let l:sl .= StatuslineMode()
  let l:sl .= '%#StatusLineBlue#'
  let l:sl .= ' '. StatuslineGit() . ' '
  let l:sl .= '%#StatusLineBlueGreen#'
  let l:sl .= ''
  let l:sl .= '%#StatusLineGreen#'
  let l:sl .= '%='              " Switch to the center
  let l:sl .= ' %f'               " Path to the file
  let l:sl .= '%y '              " Filetype
  let l:sl .= '%M '             " Modified flag
  let l:sl .= '%R '              " Readonly flag
  let l:sl .= '%='              " Switch to the right side
  let l:sl .= '%#StatusLineRedGreen#'
  let l:sl .= ''
  let l:sl .= '%#StatusLineRed#'
  let l:sl .= ' %c '           " Current column
  let l:sl .= ' [ %l/%L ] '    " Current line / total lines
  let l:sl .= '%#StatusLineBlack# '
  return l:sl
endfunction

function! s:Inactive_sl(...)
  let l:sl = ''
  " highlight inactive windows that have modified contents
  if &modified
    let l:sl .= '%#StatusLineRed#'
  else
    let l:sl .= '%#StatusLineNC#'
  endif
  let l:sl .= '%='              " Switch to the center
  let l:sl .= ' %f'               " Path to the file
  let l:sl .= '%y '              " Filetype
  let l:sl .= '%M '             " Modified flag
  let l:sl .= '%R '              " Readonly flag
  let l:sl .= ' %c  '           " Current column
  let l:sl .= ' [ %l/%L ]'    " Current line / total lines
  let l:sl .= '%='              " Switch to the right side

  return l:sl
endfunction
