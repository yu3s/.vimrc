set ttimeout
if $TMUX != ''
	set ttimeoutlen=30
elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
	set ttimeoutlen=80
endif

function! s:key_escape(name, code)
	if has('nvim') == 0 && has('gui_running') == 0
		exec "set ".a:name."=\e".a:code
	endif
endfunc

call s:key_escape('<F1>', 'OP')
call s:key_escape('<F2>', 'OQ')
call s:key_escape('<F3>', 'OR')
call s:key_escape('<F4>', 'OS')

set keywordprg=:Man\ -s2 

function! Tapi_TabDrop(bufnum, arglist)
  if len(a:arglist) == 1
	exec ":$tab drop " . a:arglist[0]
  endif
endfunc

function! JumpFuncName()
  call search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW')
endfunction

function! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfunction

function s:gtags_search(line)
  let l:line = split(a:line)[1]
  let l:file = split(a:line)[2]
  execute 'edit +'.l:line l:file
endfunction
command! -nargs=0 Gtags call fzf#run(fzf#wrap({'source':'global -x .', 'sink':function('<sid>gtags_search'),
		 \ 'options': ['--nth', '1..2', '-m', '--tiebreak=begin', '--prompt', 'Gtags> ']}))

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif
