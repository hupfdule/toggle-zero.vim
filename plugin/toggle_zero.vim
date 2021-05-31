" Vim plugin to toggle the funcationality of 0/^ and $/g_       {{{
" Maintainer:   Marco Herrn <marco@mherrn.de>
" Last Changed: 30. May 2021
" URL:          http://github.com/hupfdule/toggle_zero.vim/
" Version:      1.0.0
" License:      MIT

if exists("g:loaded_toggle_zero")
  finish
endif
let g:loaded_compile_on_save = 1

let s:save_cpo = &cpo
set cpo&vim

" End boilerplate }}}


" Mappings ============================================================= {{{

  " Execute 0 or ^ depending on cursor position
  nnoremap <silent> <expr> <Plug>(toggle-zero)zero toggle_zero#toggle_zero()
  map 0 <Plug>(toggle-zero)zero


  " Execute $ or g_ depending on cursor position
  nnoremap <silent> <expr> <Plug>(toggle-zero)dollar toggle_zero#toggle_dollar()
  map $ <Plug>(toggle-zero)dollar

" END Mappings }}}


" More boilerplate ===================================================== {{{

let &cpo = s:save_cpo
let g:loaded_toggle_zero = 1
unlet s:save_cpo

" vim: set foldmethod=marker :
