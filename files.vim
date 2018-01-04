" Cameron Rossington File definition vimscript
" created 170605

" ##### Python #####
augroup filetype_python
	autocmd!
	autocmd BufNewFile,BufRead *.py,*.pyw  "PEP8 style settings
	  \ set tabstop=4       |
	  \ set softtabstop=4   |
	  \ set shiftwidth=4    |
	  \ set expandtab       |
	  \ set autoindent      |
	  \ set fileformat=unix |
	  \ setlocal colorcolumn=100
augroup END


" ##### Web Files #####
augroup filetype_web
	autocmd!
	autocmd BufNewFile,BufRead *.js,*.css,*.htm,*.html,*.php
	  \ set tabstop=2     |
	  \ set softtabstop=2 |
	  \ set shiftwidth=2  |
	  \ set noexpandtab   |
	  \ set autoindent    |
	  \ set fileformat=unix
augroup END


" ##### C files #####
augroup filetype_c
	autocmd!
	autocmd BufNewFile,BufRead *.c,*.h
	  \ set tabstop=4     |
	  \ set softtabstop=4 |
	  \ set shiftwidth=4  |
	  \ set noexpandtab   |
	  \ set filetype=c    |
	  \ set colorcolumn=110
augroup END


" ##### journal files #####
augroup filetype_journal
	autocmd!
	autocmd BufNewFile,BufRead *.jo
	  \ set wrap |
	  \ set cc=0 |
	  \ set spell
augroup END


" ##### text/status files #####
augroup filetype_text_status
	autocmd!
	autocmd BufNewFile,BufRead *.txt
	  \ set cc=0     |
	  \ set autoread |
	  \ set wrap
	"  \ if @% =~ "status" | cd %:p:h | endif " changes cwd to current file
augroup END


" ##### logfiles #####
augroup filetype_log
	autocmd!
	autocmd BufNewFile,BufRead *.log
	  \ set cc=0 |
	  \ cd %:p:h
augroup END


" ##### Markdown #####
augroup filetype_markdown
	autocmd!
	autocmd BufNewFile,BufRead *.md
	  \ set cc=0       |
	  \ setlocal spell |
	  \ setlocal textwidth=80
augroup END

" ##### gitcommit #####
augroup filetype_gitcommit
	autocmd!
	autocmd BufNewFile,BufRead COMMIT_EDITMSG
	  \ setlocal spell |
	  \ setlocal cc=72 |
	  \  colo industry
augroup END


" ##### special cases #####
augroup filetype_special
	autocmd!
	autocmd BufNewFile,BufRead !status*
	  \ cd %:p:h |
	  \ setlocal spell
augroup END


