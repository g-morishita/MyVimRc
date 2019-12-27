" auto compliation 
nnoremap <C-b> :w<CR>:!g++ -std=c++14 % -o %:p:h/a.out<CR>
" }}

" atcoder用 {{
function! AtCoderSetURL()
  call inputsave()
  let g:atCoderURL = input('ENTER URL: ')
  call inputrestore()
endfunction

function! AtCoderDownload()
  call AtCoderCleanTest()
  if !exists("g:atCoderURL")
    call AtCoderSetURL()
  endif
  execute "!oj download " . g:atCoderURL
endfunction

function! AtCoderTest()
  execute "!oj test -c " . expand('%:p:h') . "/a.out"
endfunction

function! AtCoderSubmit()
  if !exists("g:atCoderURL")
    call AtCoderSetURL()
  endif

  execute "!oj submit " . g:atCoderURL . " " . expand('%:p')
endfunction

function! AtCoderCleanTest()
  execute "!rm -r test"
endfunction

nnoremap <leader>u :call AtCoderSetURL()<CR>
nnoremap <leader>t :w<CR>:call AtCoderTest()<CR>
nnoremap <leader>d :call AtCoderDownload()<CR>
nnoremap <leader>s :w<CR>:call AtCoderSubmit()<CR>
"}}
