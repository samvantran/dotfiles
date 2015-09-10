call pathogen#infect()
call pathogen#helptags()

" Vim Configs
colorscheme solarized
filetype plugin indent on	" enable filetypes
set autoindent
set background=dark
set backspace=2				" powerful backspacing
set cmdheight=1 			" more space for command line
set display=lastline 		" display last line amap
set guifont=Menlo
set hlsearch				" highlight matches
set ignorecase				" case-insensitive searching 
set incsearch				" incremental searching
set laststatus=2			" always show status line
set linebreak 			
set linespace=3				" slightly higher line height
set mouse=nvi 				" enable mouse in every mode
set mousemodel=popup
set nocompatible 			" forget vi
set noexpandtab 			" don't expand tabs into spaces
set number					" line numbers
set ruler					" display cursor at bottom
set shiftwidth=4 			" reduce indent spacing (default:8)
set showcmd 				" show command at bottom
set showmatch 				" show matching parens
set showmode				" show mode on bottom
set softtabstop=0 			" don't use tab/space combo
set smartcase
set smartindent
set smarttab
set t_Co=256
set tabstop=4 				" reduce tab spacing (default: 8)
set textwidth=79
set wildmenu				" useful command-line completion
set wildmode=list:longest	" auto-complete menu
set wrap
syntax on

" Key Mappings
:imap ;; <Esc>

" Quicker window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch off highlighting after successful search
nnoremap <silent> <CR> :noh<CR>

" Status line settings
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'

" ----------------------------- " 
"  	NERDTREE SETTINGS	"
" ----------------------------- "

let NERDTreeShowHidden=1		" show hidden files
nmap <leader>nt :NERDTreeToggle <CR> 	" shortcut for nerdtree

" Nerdtree file highlighting 
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" Auto-reload .vimrc config on save
augroup vimautosave
	au!
	autocmd bufwritepost .vimrc source ~/.vimrc
augroup END


