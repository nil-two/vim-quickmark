let s:save_cpo = &cpo
set cpo&vim

function! s:get_mark_from_input() abort
  echon 'mark: '
  let mark = getchar()
  let mark = (type(mark) == type(0))? nr2char(mark): mark
  if mark !~ '^\a$'
    return 0
  endif
  return mark
endfunction

function! quickmark#mark() abort
  let mark = s:get_mark_from_input()
  if type(mark) == type(0) && !mark
    return
  endif
  let path = expand('%:p')
  call setreg(mark, path)
endfunction

function! quickmark#open_marked() abort
  let mark = s:get_mark_from_input()
  if type(mark) == type(0) && !mark
    return
  endif
  let path = getreg(mark)
  execute 'edit' path
endfunction

function! quickmark#open_marked_with_newtab() abort
  let mark = s:get_mark_from_input()
  if type(mark) == type(0) && !mark
    return
  endif
  let path = getreg(mark)
  execute 'tabnew' path
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
