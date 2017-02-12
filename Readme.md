## vim4exec

## Installing using Vim Plugin Manager


1. Add this line to your `.vimrc`:

  ```vim
Plug 'josudoey/vim4exec'
  ```

2. Call `PlugInstall()` inside vim:

  ```vim
:PlugInstall
  ```

## Usage

```vim
".vimrc
nnoremap <LEADER><F9> :call SetExec()<CR>
nnoremap <F9> :call Run()<CR>
nnoremap <LEADER><F10> :call SetArgs()<CR>
```
