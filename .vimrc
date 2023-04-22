call plug#begin('~/.vim/plugged')
" ### VIM TREE
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ### AIRLINE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"colorschemaes
Plug 'tomasiser/vim-code-dark'


""syntax higilight
"Plug 'pangloss/vim-javascript'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'leafgarland/typescript-vim'
"Plug 'Quramy/tsuquyomi'
"Plug 'ianks/vim-tsx'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'ianks/vim-tsx'
"Plug 'peitalin/vim-jsx-typescript'
"" git
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
"
"" fuzzy search
"Plug 'ctrlpvim/ctrlp.vim'
"
"" motion across text
"Plug 'easymotion/vim-easymotion'
"Plug 'justinmk/vim-sneak'


"
"Plug 'tpope/vim-surround'
"
"
"" eslint
""Plug 'dense-analysis/ale'
"Plug 'eslint/eslint'
""Plug 'w0rp/ale'
"
"" post install (yarn install | npm install) then load plugin only for editing supported files
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
"
""Plug 'HerringtonDarkholme/yats.vim'
""Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"" For async completion
""Plug 'Shougo/deoplete.nvim'
" " For Denite features
"Plug 'Shougo/denite.nvim'
"
"" search
"Plug 'mileszs/ack.vim'
"
call plug#end()

" ### MAPPING
let mapleader=','

imap ii <esc>
imap jj <esc>
imap kk <esc>

map <C-n> ;NERDTreeToggle<CR>

map <Leader><Leader>e ;e $MYVIMRC<CR>
map <s-L> <s-L>zz
map <s-H> <s-H>zz

map <leader>d ;bdelete<Cr>
map <C-l> ;bn<Cr>
map <C-h> ;bp<Cr>

nnoremap ; :
nnoremap : ;

"""" ###AIRLINE###
"""" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_y = '%{strftime("%c")}'
colorscheme codedark

"autocmd FileType typescript setlocal completeopt-=menu
"let g:tsuquyomi_completion_detail = 1
"let g:tsuquyomi_disable_quickfix = 1
"let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
"autocmd FileType typescript nmap <buffer> <Leader>e <Plug>(TsuquyomiRenameSymbol)
"autocmd FileType typescript nmap <buffer> <Leader>E <Plug>(TsuquyomiRenameSymbolC)
"set ballooneval
"autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
"autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
"" set filetypes as typescript.tsx
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

"" Enable deoplete at startup
""let g:deoplete#enable_at_startup = 1
"map <leader>v ;vsplit<space>
"" splits
"map <A-j> <c-W>j
"map <A-Down> <c-W>j
"map <A-k> <c-W>k
"map <A-Up> <c-W>k
"map <A-h> <c-W>h
"map <A-Left> <c-W>h
"map <A-l> <c-W>l
"map <A-Right> <c-W>l
"map <A-H> <c-w>H
"map <A-L> <c-w>L
"map <A-J> <c-w>J
"map <A-K> <c-w>K
"" resize horzontal split window
"nmap <C-Up> <C-W>-<C-W>-
"nmap <C-Down> <C-W>+<C-W>+
"" resize vertical split window
"nmap <C-Right> <C-W>><C-W>>
"nmap <C-Left> <C-W><<C-W><
"map <leader><tab> ;CtrlPBuffer<Cr>
"map <A-S> ;ALEFix prettier<CR>
"map <C-\> ;vert bel sp<bar>terminal<CR>
"
"
""searching
"let g:ackprg = 'ag --nogroup --nocolor --ignore package-lock.json'
"map <leader>f ;Ack!<space>
"
"set termguicolors
"set clipboard=unnamedplus
"set shell=\"C:/Program\ Files/Git/bin/sh.exe\"
"tnoremap <Esc> <C-\><C-n>
"tnoremap ii <C-\><C-n>
"
"" Prettier or eslint
"" Fix files with prettier, and then ESLint.
""let b:ale_fixers = ['prettier', 'eslint']
""let g:ale_fix_on_save = 1

"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
"let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
"let g:ale_keep_list_window_open = 1
"
"" icons
""let g:ale_sign_error = 'X'
""let g:ale_sign_warning = '??'
"
""ctrlp
"let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
"let g:ctrlp_cmd='CtrlP :pwd'
"
"" sneak
"let g:sneak#label = 1
"

" tabs
set number
set expandtab
set tabstop=2
set shiftwidth=2

set hlsearch
set incsearch

set encoding=UTF-8


""coc-config
"let g:coc_global_extensions = [
"  \ 'coc-pairs',
"  \ 'coc-tsserver',
"  \ 'coc-prettier',
"  \ 'coc-json',
"  \ ]
"
"" if hidden is not set, TextEdit might fail.
"set hidden
"
"" Some servers have issues with backup files, see #649
"set nobackup
"set nowritebackup
"
"" Better display for messages
"set cmdheight=2
"
"" You will have bad experience for diagnostic messages when it's default 4000.
"set updatetime=300
"
"" don't give |ins-completion-menu| messages.
"set shortmess+=c
"
"" always show signcolumns
"set signcolumn=yes
"
"" Remap for rename current word
"" nmap <leader>r <Plug>(coc-rename)
"
"" Use tab for trigger completion with characters ahead and navigate.
"" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"" inoremap <silent><expr> <TAB>
""      \ pumvisible() ? "\<C-n>" :
""      \ <SID>check_back_space() ? "\<TAB>" :
""      \ coc#refresh()
""inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
""function! s:check_back_space() abort
""  let col = col('.') - 1
""  return !col || getline('.')[col - 1]  =~# '\s'
""endfunction
"
"" Use <c-space> to trigger completion.
""inoremap <silent><expr> <c-space> coc#refresh()
"
"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
"" Coc only does snippet and additional edit on confirm.
""inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"" Or use `complete_info` if your vim support it, like:
"" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"
"" Use `[g` and `]g` to navigate diagnostics
""nmap <silent> [g <Plug>(coc-diagnostic-prev)
""nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" Remap keys for gotos
""nmap <silent> gd <Plug>(coc-definition)
""nmap <silent> gy <Plug>(coc-type-definition)
""nmap <silent> gi <Plug>(coc-implementation)
""nmap <silent> gr <Plug>(coc-references)
"
"" Use K to show documentation in preview window
""nnoremap <silent> K :call <SID>show_documentation()<CR>
""
""function! s:show_documentation()
""  if (index(['vim','help'], &filetype) >= 0)
""    execute 'h '.expand('<cword>')
""  else
""    call CocAction('doHover')
""  endif
""endfunction
"
"" Highlight symbol under cursor on CursorHold
""autocmd CursorHold * silent call CocActionAsync('highlight')
"
"" Remap for format selected region
""xmap <leader>f  <Plug>(coc-format-selected)
""nmap <leader>f  <Plug>(coc-format-selected)
"" not founded usage
"
""augroup mygroup
""  autocmd!
""  " Setup formatexpr specified filetype(s).
""  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
""  " Update signature help on jump placeholder
""  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
""augroup end
"
"" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
""xmap <leader>a  <Plug>(coc-codeaction-selected)
""nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap for do codeAction of current line
""nmap <leader>ac  <Plug>(coc-codeaction)
"" Fix autofix problem of current line
""nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Create mappings for function text object, requires document symbols feature of languageserver.
""xmap if <Plug>(coc-funcobj-i)
""xmap af <Plug>(coc-funcobj-a)
""omap if <Plug>(coc-funcobj-i)
""omap af <Plug>(coc-funcobj-a)
"
"" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
""nmap <silent> <TAB> <Plug>(coc-range-select)
""xmap <silent> <TAB> <Plug>(coc-range-select)
"
"" Use `:Format` to format current buffer
""command! -nargs=0 Format :call CocAction('format')
"
"" Use `:Fold` to fold current buffer
""command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" use `:OR` for organize import of current buffer
""command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
"" Add status line support, for integration with other plugin, checkout `:h coc-status`
""set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Using CocList
"" Show all diagnostics
""nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions
""nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
"" Show commands
""nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document
""nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols
""nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
""nnoremap <silent> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
""nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list
""nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
"" *******
" let g:typescript_indent_disable = 1

" set filetypes as typescript.tsx
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" dark red
"hi tsxTagName guifg=#7fffd4
"
"" orange
"hi tsxCloseString guifg=#F99575
"hi tsxCloseTag guifg=#7fffd4
"hi tsxCloseTagName guifg=#7fffd4
"hi tsxAttributeBraces guifg=#F99575
"hi tsxEqual guifg=#F99575
"
"" yellow
"hi tsxAttrib guifg=#00adca cterm=italic
"
"" light-grey
"hi tsxTypeBraces guifg=#999999
"" dark-grey
"hi tsxTypes guifg=#666666
"
""set runtimepath^=~/.vim runtimepath+=~/.vim/after
""let &packpath = &runtimepath
""source ~/.vimrc
"
"" higilight insert mode GUICURSOR
"autocmd InsertEnter,InsertLeave * set cul!
"let g:loaded_togglecursor = 1
"
""set guicursor=v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
""  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
""  \,n:blinkoff0



" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes




" COCOCOCOCOCOCOCOC
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
