This is an adaptation of [nova color scheme](https://github.com/trevordmiller/nova-vim), with dark and light variants.

Dark:

![Imgur](https://i.imgur.com/6nGqPoU.png)

Light:

![Imgur](https://i.imgur.com/rLLdFr2.png)

------------

For python, there are some new highlight groups. You must enable them yourself in your vimrc, because they will apply to other color schemes as well. Note that if you change color scheme, you'll have to re-enter the buffer before new highlight will be applied.

```vim
augroup ft-python-vsd
  au!
  au FileType python call s:python()
augroup END

fun! s:python()
  syn keyword pythonSelf self
  syn match pythonOperatorSymbol   '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!='
  syn match pythonBraces           '{\|}\|\[\|\]'
  syn match pythonGlobalVar        '\<[A-Z_]*\>'
  hi link pythonSelf Identifier
  hi link pythonOperatorSymbol Operator
  hi link pythonBraces Special
  hi link pythonGlobalVar Special
endfun
```

![Imgur](https://i.imgur.com/6UGT4cq.png)
