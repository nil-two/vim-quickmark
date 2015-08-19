let s:save_cpo = &cpo
set cpo&vim

function! s:get_mark_from_input()
  echon 'mark: '
  let mark = getchar()
  let mark = (type(char) == type(0))? nr2char(char): char
  return (mark =~ '^\a$')? char: 0
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
