
Summary
-------

Veil helps you ignore your inner editor (can't edit what you can't see!) and hides your prose from prying or innocent eyes.

![image](https://user-images.githubusercontent.com/44929610/48305022-e5fd5100-e523-11e8-997d-c5e733743f84.png)

Installation
------------

Use your favorite plugin manager.

- [vim-plug](https://github.com/junegunn/vim-plug)
  1. Add `Plug 'swordguin/vim-veil'` to .vimrc
  2. Run `:PlugInstall`
  3. Map a key (see below)

Usage
-----

Hit the defined key (see below) while in normal mode to instantly conceal your prose.


Configuration
-------------

Define a key with something like this in your .vimrc:

```vim
nmap <F12> <Plug>Veil
```

Compatibility
-------------

Works with Goyo.vim, vim-markdown. Hides french accented letters.

License
-------

GNU GPLv3
