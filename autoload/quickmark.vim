let s:pathes_by_mark = {}

function! s:get_mark_from_input() abort
  call inputsave()
  let mark = input('mark: ')
  call inputrestore()
  return mark
endfunction

function! quickmark#mark() abort
  let mark = s:get_mark_from_input()
  if mark ==# ''
    return
  endif
  let path = expand('%:p')
  let s:pathes_by_mark[mark] = path
endfunction

function! quickmark#open_marked() abort
  let mark = s:get_mark_from_input()
  if mark ==# '' || !has_key(s:pathes_by_mark, mark)
    return
  endif
  let path = s:pathes_by_mark[mark]
  execute 'edit' path
endfunction

function! quickmark#open_marked_with_newtab() abort
  let mark = s:get_mark_from_input()
  if mark ==# '' || !has_key(s:pathes_by_mark, mark)
    return
  endif
  let path = s:pathes_by_mark[mark]
  execute 'tabnew' path
endfunction
