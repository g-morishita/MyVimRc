call denite#custom#map('insert', '<esc>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<esc>', '<denite:quit>', 'noremap')
call denite#custom#map('insert', '<C-j>', '<denite:do_action:split>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:do_action:vsplit>', 'noremap')


noremap <C-P> :Denite buffer<CR>
" List the files
noremap <C-N> :Denite -buffer-name=file file<CR>
" List the files opened recently
noremap <C-Z> :Denite file_old<CR>
" List files in the current directory
noremap <C-C> :Denite file_rec<CR>
" List the buffer 
nnoremap sB :<C-u>Denite buffer -buffer-name=file<CR>
