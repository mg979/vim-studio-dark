<a href='https://opensource.org/licenses/MIT'><img src='https://img.shields.io/badge/license-MIT-a31f34.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;
<a href='https://github.com/lifepillar/vim-colortemplate'><img src='https://img.shields.io/badge/made%20with-Colortemplate-007f00.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;

Inspired by [codedark](https://github.com/tomasiser/vim-code-dark), with dark and light variants.

![Imgur](https://i.imgur.com/fzildns.png)

Also included, a [Tomorrow Night Eighties](https://github.com/chriskempson/tomorrow-theme) variant:

![Imgur](https://i.imgur.com/KeeOGtF.png)

These schemes can optionally define some new highlight and syntax groups, as you can see in the pictures, but these groups are disabled when the color scheme is unloaded. They also try to set as few non-standard (eg. provided by plugins) highlight groups as possible, to minimize the possibility of syntax breakages on colorscheme switching.

------------

Options:

    let g:VSD = {}

Conservative mode, if you prefer less colors:

    let g:VSD.conservative = 1

Enable new highlight groups for all filetypes:

    let g:VSD.extra_syntax = 1

Enable new highlight groups for certain filetypes:

    let g:VSD.extra_syntax = 0
    let g:VSD.vim = 1
    let g:VSD.python = 1
    let g:VSD.cpp = 1
    let g:VSD.markdown = 1

Disable new highlight groups only certain filetypes:

    let g:VSD.extra_syntax = 0
    let g:VSD.all_syntaxes = 1
    let g:VSD.cpp = 0

![Imgur](https://i.imgur.com/gH8lBAv.png)

![Imgur](https://i.imgur.com/wQ2UfpZ.png)

