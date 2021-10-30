call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'xyrh/global.vim'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'maralla/completor.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-mark'
call plug#end()

" delimitMate
let delimitMate_expand_cr = 1

" easymotion
let g:EasyMotion_do_mapping = 1
let g:EasyMotion_leader_key = '<leader>'

" completor.vim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" gruvbox
let g:gitgutter_override_sign_column_highlight = 1
colorscheme gruvbox

" lightline
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ }
      \ }
function! LightlineFilename()
  return fnamemodify(resolve(expand('%:~')), ':.')
endfunction

" Man
let g:ft_man_open_mode = 'vert'

" vim-mark
let g:mw_no_mappings = 1
