" vim-uniliteral - Convert Unicode escape sequences to literals
" Maintainer:   Neil Pankey <http://github.com/neilpa>
" Version:      0.0.1

" Insprired by http://vi.stackexchange.com/a/2303/4548
"
" :%s/          - start a search/replace command in the complete buffer
" \\u           - Search for the characters \u
" \(...\)       - remember the next chars
" \x\{4\}       - 4 hexadecimal characters - they will be remembered and be available as submatch(1)
" /             - replace each match by
" \=            - evaluate the following to an expression
" nr2char(      - return the character for the number given
" '0x'          - put a '0x' in front of the number to force hexadecimal value
" .             - append
" submatch(1)   - the hexadecimal number remembered above
" )             - closing paren of nr2char()
" /g            - replace for every occurrence in each line
command! -range Uniliteral :<line1>,<line2>s/\\u\(\x\{4\}\)/\=nr2char('0x'.submatch(1),1)/g

