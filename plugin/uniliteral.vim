" vim-uniliteral - Convert Unicode escape sequences to literals
" Maintainer:   Neil Pankey <http://github.com/neilpa>
" Version:      0.0.1

command! Uniliteral :%s/\\u\(\x\{4\}\)/\=nr2char('0x'.submatch(1),1)/g
