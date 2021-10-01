function! s:StatuslineStart()
  let s:data = {
        \ 'left': [],
        \ 'center': [],
        \ 'right': []
        \ }
endfunction

function! s:AddTab(group, text, position)
  call add(s:data[a:position], {'group': a:group, 'text': a:text})
endfunction

function! HiGroupColor(group, term)
  let output = execute('hi ' . a:group)
  return matchstr(output, a:term.'=\zs\S*')
endfunction

function! s:TransitionHighlightGroup(fg_group, bg_group)
  let l:fg_color = HiGroupColor(a:fg_group, 'ctermbg')
  let l:bg_color = HiGroupColor(a:bg_group, 'ctermbg')
  let groupname = l:fg_color[1:].l:bg_color[1:]
  execute 'highlight '.groupname.' ctermfg='.l:fg_color.' ctermbg='.l:bg_color
  return groupname
endfunction

" build the statusline string
function! s:StatuslineEnd()
  let l:sl = ''
  for i in range(len(s:data['left']))
    let item = s:data['left'][i]
    let l:sl .= '%#'.item['group'].'#'.item['text']
    if i < len(s:data['left']) -1
      let next_item = s:data['left'][i+1]
      let transition_group = s:TransitionHighlightGroup(item['group'], next_item['group'])
      let l:sl .= '%#'.transition_group.'#'
    elseif len(s:data['center'])>0
      let next_item = s:data['center'][0]
      let transition_group = s:TransitionHighlightGroup(item['group'], next_item['group'])
      let l:sl .= '%#'.transition_group.'#'
    elseif len(s:data['right'])>0
      let next_item = s:data['right'][0]
      let transition_group = s:TransitionHighlightGroup(item['group'], next_item['group'])
      let l:sl .= '%#'.transition_group.'#'
    endif
  endfor

  let l:sl .= '%='

  for i in range(len(s:data['center']))
    let item = s:data['center'][i]
    let l:sl .= '%#'.item['group'].'#'.item['text']
  endfor

  let l:sl .= '%='

  for i in range(len(s:data['right']))
    let item = s:data['right'][i]
    if i > 0
      let prev_item = s:data['right'][i-1]
      let transition_group = s:TransitionHighlightGroup(item['group'], prev_item['group'])
      let l:sl .= '%#'.transition_group.'#'
    elseif len(s:data['center']) > 0
      let prev_item = s:data['center'][-1]
      let transition_group = s:TransitionHighlightGroup(item['group'], prev_item['group'])
      let l:sl .= '%#'.transition_group.'#'
    elseif len(s:data['left']) > 0
      let prev_item = s:data['left'][-1]
      let transition_group = s:TransitionHighlightGroup(item['group'], prev_item['group'])
      let l:sl .= '%#'.transition_group.'#'
    endif
    let l:sl .= '%#'.item['group'].'#'.item['text']
  endfor
  execute ':setlocal statusline=' .  substitute(l:sl, ' ', '\\ ', "g")
endfunction

function! s:statusline_nerd_tree()
  return '%{exists(''b:NERDTree'')?b:NERDTree.root.path.str():''''}    '
endfunction

function! s:apply_active_statusline()
  call s:StatuslineStart()
  if &ft == 'nerdtree'
    call s:AddTab("StatuslineRed", s:statusline_nerd_tree(), 'left')
    call s:AddTab("StatuslineWarmgrey", '', 'center')
  else
    call s:AddTab("StatuslinePurple", s:mode_content(), 'left')
    call s:AddTab("StatuslineBlue", s:git_content(), 'left')
    call s:AddTab("StatusLineWarmgrey", '  %f%y%M%R  ', 'center')
    call s:AddTab("StatusLineRed", ' %c  [ %l/%L ] ', 'right')
  endif
  call s:StatuslineEnd()
endfunction

function! s:apply_inactive_statusline()
  call s:StatuslineStart()
  if &ft == 'nerdtree'
    call s:AddTab("StatuslineWarmgrey", s:statusline_nerd_tree(), 'left')
    call s:AddTab("StatuslineBlack", '', 'center')
  else
    if &modified
      call s:AddTab("StatusLineRed", '  %f%y%M%R  ', 'center')
      call s:AddTab("StatusLineRed", '', 'left')
    else
      call s:AddTab("StatusLineBlack", '  %f%y%M%R  ', 'center')
      call s:AddTab("StatusLineBlack", '', 'left')
    endif
  endif
  call s:StatuslineEnd()
endfunction

augroup StatuslineActive
  autocmd!
  autocmd WinEnter,BufEnter * call <SID>apply_active_statusline() " active
  autocmd WinLeave * call <SID>apply_inactive_statusline() " inactive
augroup END

function! s:mode_content()
  let res = ''
  let res .= '%{(mode()==''n'')?''  NORMAL  '':''''}' 
  let res .= '%{(mode()==''i'')?''  INSERT  '':''''}'
  let res .= '%{(mode()==''v'')?''  VISUAL  '':''''}'
  let res .= '%{(mode()==''c'')?''  COMMAND  '':''''}'
  return res
endfunction

function! s:git_content()
  let l:branchname =  system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  if strlen(l:branchname) > 0
    return '  '.l:branchname.'  '
  else
    return '-- NO GIT --'
  endif
endfunction
