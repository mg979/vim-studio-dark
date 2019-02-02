<a href='https://opensource.org/licenses/MIT'><img src='https://img.shields.io/badge/license-MIT-a31f34.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;
<a href='https://github.com/lifepillar/vim-colortemplate'><img src='https://img.shields.io/badge/made%20with-Colortemplate-007f00.svg?style=flat-square' /></a>
&nbsp;&nbsp;&nbsp;

![Imgur](https://i.imgur.com/yRIgSTC.png)

    vsdark  |   tomorrow_eighties   |   sand

Inspired by [codedark](https://github.com/tomasiser/vim-code-dark), with dark and light
variants.

Also included, a [Tomorrow Night Eighties](https://github.com/chriskempson/tomorrow-theme)
variant, and a `desert` variant called **sand**.

These schemes can optionally define some new highlight and syntax groups, as you can see
in the pictures below, but these groups are disabled when the color scheme is unloaded.
They also try to set as few non-standard (eg. provided by plugins) highlight groups as
possible, to minimize the possibility of clashes on colorscheme switching.

You can also toggle an 'high contrast' mode, with a slightly darker background:

    :VsdToggleContrast

------------

Options:

    let g:Vsd = {}

Enable new highlight groups only for certain filetypes:

    let g:Vsd.extra_syntax = 0
    let g:Vsd.vim = 1
    let g:Vsd.python = 1
    let g:Vsd.cpp = 1
    let g:Vsd.markdown = 1

More pics:

![Imgur](https://i.imgur.com/fzildns.png)

![Imgur](https://i.imgur.com/gH8lBAv.png)

![Imgur](https://i.imgur.com/wQ2UfpZ.png)

![Imgur](https://i.imgur.com/KeeOGtF.png)

