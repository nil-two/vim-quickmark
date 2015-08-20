vim-quickmark
=============

Open marked path at any time.

It's inspired by vimperator's `QuickMarks`

Example of `vimrc`
------------------

```vim
" operator mappings

" mark path
nmap <silent>M <Plug>(quickmark-mark)

" open marked path
nmap <silent>go <Plug>(quickmark-open)

" open marked path with new tab
nmap <silent>gn <Plug>(quickmark-tab)
```

License
-------

MIT License

Author
-------

kusabashira <kusabashira227@gmail.com>
