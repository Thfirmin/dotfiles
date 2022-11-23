" **************************************************************************** "
"                                                                              "
"                                                   ::::::::::: ::::::::::     "
"    .vimrc                                            :+:     :+:             "
"                                                     +:+     +:+              "
"    By: thfirmin <marvin@42.fr>                     +#+     :#::+::#          "
"                                                   +#+     +#+                "
"    Created: 2022/08/15 23:15:28 by thfirmin      #+#     #+#                 "
"    Updated: 2022/08/23 02:52:33 by Thinotsuki   ###     ###.br               "
"                                                                              "
" **************************************************************************** "

" "Global Settings" {

	" "System" {

		" "Support"{
			set nocompatible	" VI compatibility System
			set encoding=utf-8	" Set VIM's encode character system
			filetype on			" VIM check filetype System
			filetype indent on	" Specific indent based of a filetype System
			filetype plugin on	" Plugin check filetype System
			syntax on			" Syntax highlight System
		" }

		" "Buffer Control" {
			set nobackup		" Create bakcup file
			"set noundofile		" ... 
			set noswapfile		" Create a swapfile
			"set nowritebackup	" write a backup file
			set updatetime=100	" Set Time in miliseconds to consider the changes
			set hidden			" Hides the current buffer when a new file is openned
			"set autoread		" Update vim after file update from outside
			set history=20		" Set how many commands are saved in history
		" }
	" }

	" "Editor" {

		" "Search Tool" {

			set incsearch	" Hilight match search in real time
			set showmatch	" Show compatible words you search
			set hlsearch	" Highlight the result of your search
			set ignorecase	" Case insensitive in search
			set smartcase	" Case analisis to enable ignore case in search
		" }

		" "Tab Settings" {
		
			set tabstop=4		" Set lenght of tab
			set softtabstop=4	" Show existing tab with 4 spaces width
			set shiftwidth=4	" Set shift width spaces
			set noexpandtab		" Insert spaces in place of tab
		" }
		"
		" "Indent" {

			set autoindent	" Indent the code automatcaly
			set smarttab	" Insert tab acording with the filetype
			set smartindent	" Indent code acording with the filetype
		" }

		" "Navigation" {
		"
			set scrolloff=8	" Lines limit to cursos scroll the page
			set wrap		" Single line break in limit
			set mouse=a		" mouse support
		" }

		" "Folder" {
		"
			set foldmethod=marker	" Set the method to make and indentify a folder
			set foldmarker={,}		" Set chars who'll mark the bagin and end of a folder
			set	nofoldenable		" File will open with folder opened
		" }
	" }

	" "Interface" {

		" "External" {
			
			set number	" Number in left sde bar
			set showmode	" Show mode used in VIM
			set showcmd		" Show cmd used in VIM
			set cmdheight=2	" Give space in cmd area
			set splitright	" Create a vertical split to the right
			set splitbelow	" Create a horizontal split below
		" }

		" "Internal" {
		
			set cursorline	" Highlight the line where cursor is
			set nocursorcolumn	" Highlight the column where curor is
			set	colorcolumn=80	" Draw a column in delimited lenght line
			set signcolumn=yes
						
		" }

		" "Highlight" {
			
		" }

		" "Theme" {
			packadd! dracula
			colorscheme dracula
		" }
	" }
" }


" "Remaps Settings" {
	map	<C-h> <C-w>h
	map	<C-j> <C-w>j
	map	<C-k> <C-w>k
	map	<C-l> <C-w>l
	nmap <C-n> :tabp<CR>
	nmap <C-m> :tabn<CR>
" }


" "AutoCmd Settings" {
	autocmd vimenter * hi Type gui=italic
" }


" "Plugins" {

	call plug#begin()
		Plug 'preservim/nerdtree'
	call plug#end()

	" "42 Header" {
		let g:user42 = 'thfirmin'
		let g:mail42 = 'thfirmin@student.42.rio'
	" }
	
	" "TF Header" {
		let g:usertf = 'Thinotsuki'
		let g:mailtf = 'thinotsukimichi@gmail.com'
	" }
" }
