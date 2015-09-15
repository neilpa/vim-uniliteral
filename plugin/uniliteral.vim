" Replace unicode escape sequences with literal equivalents
command! Uniliteral :%s/\\u\(\x\{4\}\)/\=nr2char('0x'.submatch(1),1)/g
