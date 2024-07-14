"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "PLUGINS" {
	call plug#begin('~/.vim/plugged')
		"Plug 'vim-airline/vim-airline'
		"Plug 'ryanoasis/vim-devicons'
		"Plug 'maxmellon/vim-jsx-pretty'
		"Plug 'joom/vim-commentary'
		"Plug 'ThawanCamara/vim-aurora'
		Plug '42Paris/42header'
		Plug 'jiangmiao/auto-pairs'
		Plug 'sheerun/vim-polyglot'
		Plug 'tpope/vim-sensible'
		Plug 'dracula/vim', { 'as': 'dracula' }
	call plug#end()
" }

" "SETTINGS" {
	" "Software Settings" {
		" Desabilita compatibilidade com vi que pode causar problemas inesperados. Para habilitar use "compatible"
		set nocompatible

		" salva arquivos de backup. (Para salvar use "nobackup")
		set nobackup
		set noundofile
		set noswapfile

		set mouse=ni

		set fileencoding=UTF-8

		" Habilita detecção de tipo de arquivo. Vim poderá tentar detectar o tipo do arquivo em uso.
		filetype on

		" Habilita e carrega plugins para os tipos de arquivos detectados.
		filetype plugin on

		" Carrega um arquivo de identação para os tipos de arquivos detectados.
		filetype indent on

		" Define os comandos que são salvos no histórico (o valor padrão é 20).
		set history=1000

		" Ativa a leitura de configurações personalizadas (modelines)
		set modeline

		" Enable auto completion menu after pressing TAB.
		set wildmenu
		
		" Make wildmenu behave like similar to Bash completion.
		set wildmode=list:longest
		
		" There are certain files that we would never want to edit with Vim.  Wildmenu
		" will ignore files with these extensions.
		set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

		" "Search Settings" {
			" Ao pesquisar em um arquivo, realce os caracteres correspondentes à medida que você digita. Para desabilitar use "no" no inicio
			set incsearch

			" Mostra palavras compativeis com a pesquisa. Para desabilitar use "no" no inicio 
			set showmatch

			" Usa realce durante uma busca. Para desabilitar use "no" no inicio
			set hlsearch
			
			" Ignora letras capital durante a busca.
			set noignorecase

			" Habilita a procura especifica por uma palavra e considera a letra capital. Essa opção sobrepõe a configuração ignorecase.
			set nosmartcase
			
			" Show partial command you type in the last line of the screen.
			set showcmd
			
			" Show the mode you are on the last line.
			set showmode
		" }
	" }
	" "Interface Settings" {
		" Liga a syntax highlighting.
		syntax on
		syntax enable

		" Habilita guia de número de linha.
		set number

		" Ilumina o fundo horizontal da linha onde se encontra o cursor.
		set cursorline

		" Ilumina o fundo vertical da coluna onde se encontra o cursor. para desabilitar, use "no" no inicio.
		set nocursorcolumn

		" Ilumina um delimitador na coluna n
		set colorcolumn=80

		" Mostra parte do comando que você digita na ultima linha da tela.
		set showcmd

		" Mostra o modo do vim na última linha.
		set showmode

		" Splita p/ esquerda ao invés de p/ direita
		set splitright

		" Splita p/ baixo ao invés de p/ cima
		set splitbelow

		" Setup Vim's colorscheme
		set termguicolors
		set background=dark
		
		syntax on
		" "Highlight Settings" {
			"Altera estilo de realce do "CursorLine".
			highlight CursorLine term=bold cterm=bold guibg=DarkGrey
			highlight colorcolumn ctermbg=16
		" }
		" "Theme Settings" {
			"packadd! dracula
			colorscheme dracula
			"packadd! dracula
			"colorscheme dracula
		" }
	" }
	" "Editor Settings" {
		" Define o tamanho do tab para [n] colunas.
		set tabstop=4

		" Define o tamanho do shift para [n] espaços.
		set shiftwidth=4

		" Usa o catactere de espaços no lugar de tabs. Para desabilitar use "no" no inicio.
		set noexpandtab

		" Não permite que o cursor role depois ou acima de N numeros de linhas enquanto está rolando.
		set scrolloff=10

		" Desabilita a formatação de quebra de linhas. Permite que a linha se extenda tão longe quanto necessário.
		set nowrap

		" Enables soft wrap
		set wrap linebreak

		" Allows right and left arrows, h and l to move to the next line
		set whichwrap+=<,>,h,l

		" Configura transcrição de caracteres não imprimiveis
		set listchars=space:.,eol:$,tab:>-,trail:~,extends:>,precedes:<
		"set listchars=tab:>.,trail:~,space:~,extends:>,precedes:<

		" "Folder Settings" {

				" Define o metodo de folding como maker
				set foldmethod=marker

				" Define os caracteres de inicio e fim do folder
				set foldmarker={,}
				set nofoldenable
		" }
	" }
	" "42Header Settings" {
		" 42 Header User and Email.
		let g:user42 = 'thfirmin'
		let g:mail42 = 'thfirmin@student.42.fr'
	" }
"}


" "MAPPING" {
	" "Keycode Remaps" {
		" :help keycodes
		execute "set <A-j>=\ej"
		execute "set <A-k>=\ek"
		execute "set <A-S-j>=\eJ"
		execute "set <A-S-k>=\eK"
	" }
	
	" "Splits" {
		" Navigation
		nnoremap <C-H> <C-W>h
		nnoremap <C-Left> <C-W>h

		nnoremap <C-J> <C-W>j
		nnoremap <C-Down> <C-W>j

		nnoremap <C-K> <C-W>k
		nnoremap <C-Up> <C-W>k

		nnoremap <C-L> <C-W>l
		nnoremap <C-Right> <C-W>l
		
		" Handle Splits
		nnoremap ss :vertical split<CR>
		nnoremap sS :split<CR>
		
		nnoremap se :w<CR>:vertical split +Explore<CR>
		nnoremap sE :w<CR>:split +Explore<CR>
		
		nnoremap sd :vertical terminal<CR>
		nnoremap sD :terminal<CR>
		
		" Resize split vertical
		nnoremap . <C-w>>
		nnoremap , <C-w><lt>
		nnoremap 0 <C-w><Bar>
		
		" Resize split horizontal
		nnoremap + <C-w>+
		nnoremap _ <C-w>-
		nnoremap - <C-w>_
		
		" Resize horizontal/vertical split
		nnoremap ´ <C-w>=
		nnoremap ; <C-w>_<C-w><Bar>
		
	" }
	" "Tabs" {
		" Navigation between tabs
		nnoremap <TAB><PageUp> :tabp<CR>
		nnoremap <TAB><Left> :tabp<CR>
		nnoremap <TAB>h :tabp<CR>
		nnoremap <TAB><PageDown> :tabn<CR>
		nnoremap <TAB><Right> :tabn<CR>
		nnoremap <TAB>l :tabn<CR>
		
		" Move tabs
		nnoremap <S-TAB><PageUp> :tabm-1<CR>
		nnoremap <S-TAB><Left> :tabm-1<CR>
		nnoremap <S-TAB>h :tabm-1<CR>

		nnoremap <S-TAB><PageDown> :tabm+1<CR>
		nnoremap <S-TAB><Right> :tabm+1<CR>
		nnoremap <S-TAB>l :tabm+1<CR>

		" Generate new tab
		nnoremap tt :tabe<CR>
		nnoremap tT :-1tabe<CR>

		nnoremap te :tabe +Explore<CR>
		nnoremap tE :-1tabe +Explore<CR>

		nnoremap td :tabe +terminal<CR><C-w>w:q<CR>echo "Lembre-se de matar essa sessão antes de sair do vim XD"<CR>
		nnoremap tD :-1tabe +terminal<CR><C-w>w:q<CR>echo "Lembre-se de matar essa sessão antes de sair do vim XD"<CR>
	" }
	
	" "Buffer" {
		" Navigate between buffer
		nnoremap <C-N>n :n<CR>
		nnoremap <C-N>N :N<CR>
	" }
	
	" "General Functions" {
		nnoremap <C-S> :w<CR>
		nnoremap <C-Q> <C-W>q
		nnoremap <C-E> :Explore<CR>
	" }
	
	" "Edit Functions" {
		" Move lines around with Alt
		nnoremap <A-j> :m .+1<CR>==
		vnoremap <A-j> :m '>+1<CR>gv=gv
		nnoremap <A-down> :m .+1<CR>==
		vnoremap <A-down> :m '>+1<CR>gv=gv

		nnoremap <A-k> :m .-2<CR>==
		vnoremap <A-k> :m '<-2<CR>gv=gv
		nnoremap <A-up> :m .-2<CR>==
		vnoremap <A-up> :m '<-2<CR>gv=gv
		
		" Yank
		nnoremap <A-S-k> yyP
		nnoremap <A-S-j> yyp
	" }
	
	" "Dynamic Functions" {
		nnoremap F1 :set relativenumber!<CR>
		nnoremap F2 :set list!<CR>
		nnoremap F3 :set number!<CR>
	" }
" }

" "AUTOCMD" {
	" Add *.tpp file as *.cpp syntax
	autocmd BufRead,BufNewFile *.tpp set filetype=cpp
" }

" "COMMANDS" {
	command! Vup so ~/.vimrc
	command! -nargs=* Dterm term <args> ; vertical resize 10
" }

" "VARIABLES" {
	"let g:netrw_browse_split = 4
	"let g:netrw_preview = 1
	"let g:netrw_auto = 1
" }
