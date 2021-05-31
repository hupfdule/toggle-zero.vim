toggle-zero.vim
===============

Improve the behaviour of `0` and `$`.

In vim `0` jumps to the beginning of the line, while `^` jumps to the first
non-whitespace character in the line.

This plugin changes the behaviour of `0` to behave like `^` while anywhere
on the line and like `^` if at the first non-whitespace character of the
line.

While much less often useful (as trailing whitespace on a line is rarely
useful) this plugin provides a corresponding mapping for `$` to jump to the
last non-whitespace character or the end of the line.

Demo
----

![zero](https://user-images.githubusercontent.com/5423775/119746151-be481b80-beca-11eb-86c3-5c4dd9618f0c.gif "zero")

Mappings
--------

This plugin maps the `0` and `$` keys by default in normal and visual mode.

If this is undesired and the behaviour should be mapped to other keys, use
the following `<Plug>`-mappings:

 - `<Plug>(toggle-zero)zero` for toggling between `0` and `^`
 - `<Plug>(toggle-zero)dollar` for toggling between `$` and `g_`

For example to bind this functionality to `^` and `g_` instead:

```vim
nunmap 0
nmap ^ <Plug>(toggle-zero)zero
xunmap 0
xmap ^ <Plug>(toggle-zero)zero

nunmap $
nmap g_ <Plug>(toggle-zero)dollar
xunmap $
xmap g_ <Plug>(toggle-zero)dollar
```

Credits
-------

This plugin was made after the idea in
[yuki-yano/zero.vim](https://github.com/yuki-yano/zero.nvim), but made into
a plugin that works with vim as well with neovim and also provides a
mapping to toggle between `$` and `g_`.

The screencast above is also stolen from there and actually show the
execution of `zero.nvim`. ;-)
