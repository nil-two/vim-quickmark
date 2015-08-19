if exists('g:loaded_quickmark')
  finish
endif
let g:loaded_quickmark = 1

let s:save_cpo = &cpo
set cpo&vim

command! -bar QuickMark
\ call quickmark#mark()
command! -bar QuickMarkOpen
\ call quickmark#open_marked()

nnoremap <silent> <Plug>(quickmark-mark) :<C-u>QuickMark<CR>
nnoremap <silent> <Plug>(quickmark-open) :<C-u>QuickMarkOpen<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
