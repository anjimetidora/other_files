set diffexpr=MyDiff()
colorscheme slate
set nocompatible
set number
set guifont=Consolas:h11:cDEFAULT
set colorcolumn=80
set spell
set secure
set textwidth=80
syntax enable
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set ic
set nobackup
filetype indent on
set smartindent
set autoindent
set wildmenu
set lazyredraw
set showmatch
set smartcase
set incsearch
set hlsearch
set backspace=indent,eol,start
set visualbell
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set autochdir


au BufNewFile,BufRead *.sv*,*.svh,.vh,*.v,*.log*,*.out,*.fail,*.txt,*.hex,*.opt,*.mem,*.rc,*.debug,*.cfg,*.list so D:\EDA_Installations\Vim\vimfiles\syntax\systemverilog.vim


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h10
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
function ReturnToNewLine()
    let previous_char = getline(".")[col(".")-2]
    " if there's a space before our current position, get rid of it first
    if previous_char == ' '
      execute "normal! \<bs>\<esc>"
autocmd bufnewfile *.v exe "1," . 6 . "g/Author :.*/s//Author : Dorababu"
    endif
    execute "normal! i\<cr>\<esc>"
endfunction





autocmd bufnewfile *.c so D:\EDA_Installations\Vim\vimfiles\header_files\cheader.vim
autocmd bufnewfile *.c exe "1," . 6 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 6 . "g/File Type :.*/s//File Type : c_type"
autocmd bufnewfile *.c exe "1," . 6 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd bufnewfile *.c exe "1," . 6 . "g/Author :.*/s//Author : Dorababu"
autocmd Bufwritepre,filewritepre *.c execute "normal ma"

autocmd bufnewfile *.v so D:\EDA_Installations\Vim\vimfiles\header_files\verilog.vim
autocmd bufnewfile *.v exe "1," . 6 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.v exe "1," . 6 . "g/File Type :.*/s//File Type : verilog"
autocmd bufnewfile *.v exe "1," . 6 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd bufnewfile *.v exe "1," . 6 . "g/Author :.*/s//Author : Dorababu"
autocmd bufwritepost,filewritepost *.v execute "normal ma"


autocmd bufnewfile *.sv so D:\EDA_Installations\Vim\vimfiles\header_files\system_verilog.vim
autocmd bufnewfile *.sv exe "1," . 6 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.sv exe "1," . 6 . "g/File Type :.*/s//File Type : system_verilog"
autocmd bufnewfile *.sv exe "1," . 6 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd bufnewfile *.sv exe "1," . 7 . "g/Author :.*/s//Author : Dorababu"
autocmd bufwritepost,filewritepost *.sv execute "normal ma"
