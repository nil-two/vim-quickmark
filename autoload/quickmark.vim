let s:save_cpo = &cpo
set cpo&vim

function! s:get_mark_from_input()
  echon 'mark: '
  let mark = getchar()
  let mark = (type(char) == type(0))? nr2char(char): char
  return (mark =~ '^\a$')? char: 0
endfunction

function! quickmark#mark()
  let mark = s:get_mark_from_input()
  if mark == 0
    return
  endif
  let path = expand('%:p')
  call setreg(mark, path)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
