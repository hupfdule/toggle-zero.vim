""
" Toggle between the functionality of '0' and '^' depending on the cursor
" position.
" This function is intended to be used in an expression mapping.
"
" @return either '0' or '^' to for the corresponding action to execute
function! toggle_zero#toggle_zero() abort
  let l:line = getline('.')
  let l:leading_text = l:line[0 : col('.') - 2]
  if l:leading_text =~# '^\s\+$'
    return '0'
  else
    return '^'
  end
endfunction


""
" Toggle between the functionality of '$' and 'g_' depending on the cursor
" position.
" This function is intended to be used in an expression mapping.
"
" @return either '$' or 'g_' to for the corresponding action to execute
function! toggle_zero#toggle_dollar() abort
  let l:line = getline('.')
  let l:trailing_text = l:line[col('.') : len(l:line)]
  if l:trailing_text =~# '^\s\+$'
    return '$'
  else
    return 'g_'
  end
endfunction

