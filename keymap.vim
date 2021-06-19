if has('nvim') == 0 && has('gui_running') == 0
    function! s:metacode(key)
	exec "set <M-".a:key.">=\e".a:key
    endfunc
    for i in range(10)
	call s:metacode(nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
	call s:metacode(nr2char(char2nr('a') + i))
	call s:metacode(nr2char(char2nr('A') + i))
    endfor
    for c in [',', '.', '/', ';', '{', '}']
	call s:metacode(c)
    endfor
    for c in ['?', ':', '-', '_', '+', '=', "'"]
	call s:metacode(c)
    endfor
endif

vnoremap < <gv
vnoremap > >gv

set pastetoggle=<F3>

noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>
tnoremap <silent><m-1> <C-L>:tabn 1<CR>
tnoremap <silent><m-2> <C-L>:tabn 2<CR>
tnoremap <silent><m-3> <C-L>:tabn 3<CR>
tnoremap <silent><m-4> <C-L>:tabn 4<CR>
tnoremap <silent><m-5> <C-L>:tabn 5<CR>
tnoremap <silent><m-6> <C-L>:tabn 6<CR>
tnoremap <silent><m-7> <C-L>:tabn 7<CR>
tnoremap <silent><m-8> <C-L>:tabn 8<CR>
tnoremap <silent><m-9> <C-L>:tabn 9<CR>
tnoremap <silent><m-0> <C-L>:tabn 10<CR>

inoremap <silent> <C-e> <END>
inoremap <silent> <C-a> <HOME>
inoremap <silent> <C-f> <Right>
inoremap <silent> <C-b> <Left>

cnoremap <C-e> <END>
cnoremap <C-a> <HOME>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>

nnoremap <C-l> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-l>
nnoremap <C-p> :Files<CR>
nnoremap <C-n> :BLines<CR>
nnoremap <M-n> :BTags<CR>
nnoremap <M-p> :Gtags<CR>
nnoremap <M-f> :call ShowFuncName()<CR>
nnoremap <M-g> :call JumpFuncName()<CR>
nnoremap <M-h> :History<CR>
nmap <M-m> <Plug>MarkSet
nmap <M-l> <Plug>MarkAllClear
nnoremap <nowait> \ :NnnPicker %:p:h<CR>
