if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

exec 'set rtp+='.s:home
set rtp+=~/.vim

runtime ftplugin/man.vim
runtime macros/matchit.vim

LoadScript basic.vim
LoadScript plugin.vim
LoadScript keymap.vim
LoadScript misc.vim
