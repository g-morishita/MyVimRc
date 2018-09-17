" quickfix window setting
let leader = ","
let mapleader = ","

let s:quickfixWindow = "close"
function! OpenCloseQuickfix()
  if "open" ==? s:quickfixWindow
    let s:quickfixWindow = "close"
    cclose
  else
    let s:quickfixWindow = "open"
    copen
  end
  echo s:quickfixWindow
endfunction

nnoremap <C-j> :call OpenCloseQuickfix()<CR>
