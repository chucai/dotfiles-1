" Basic
    set nocompatible
    "filetype off
    set directory=~/.vim/temp
    let mapleader = ","
    set rtp+=~/.vim/bundle/vundle
    call vundle#rc()
    Bundle 'gmarik/vundle'

" View
    set guifont=Monaco:h14
    set guioptions-=T " hide toolbar
    set relativenumber numberwidth=2
    set scrolloff=1
    set cursorline
    " status line
        set laststatus=2
        "set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %{fugitive#statusline()}\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)
        Bundle 'Lokaltog/vim-powerline'
            let g:Powerline_stl_path_style = 'relative'
            let g:Powerline_colorscheme = 'solarized256'
    " syntax
        syntax on
        nmap <leader>ft :set filetype=
        Bundle 'Syntastic'
            let g:syntastic_auto_loc_list=1
    " theme
        set t_Co=256
        Bundle 'zhougn/molokai-plus'
            let g:molokai_original = 1
        colorscheme molokai
    " show special chars
        set listchars=tab:▸\ ,trail:█
        set list
    " side bar
        Bundle 'The-NERD-tree'
            let g:NERDTreeShowLineNumbers = 1
            let g:NERDTreeQuitOnOpen = 1
            let g:NERDTreeMinimalUI = 1
            let g:NERDTreeChDirMode = 2
            let g:NERDTreeWinSize = 30
            nmap <leader>ss :NERDTreeToggle<CR>
            nmap <leader>sf :NERDTreeFind<CR>
            nmap <leader>sb :NERDTreeFromBookmark 
            nmap <leader>so :NERDTree 
    " layout
        nmap <C-h> <C-w>h
        nmap <C-j> <C-w>j
        nmap <C-k> <C-w>k
        nmap <C-l> <C-w>l
        Bundle 'ZoomWin'

" Edit
    set encoding=utf-8
    set autowrite
    nmap Y y$
    " find
        set ignorecase
        set smartcase
        set gdefault
        set incsearch
        set hlsearch
        " do not jump when search
        nmap * *<c-o>
        Bundle 'ack.vim'
        Bundle 'NERD_Tree-and-ack'
    " fold
        set foldmethod=indent
        set foldlevel=100 "don't fold by default
    " quick esc
        imap <C-space> <Esc>
        imap <Nul> <Esc>
        cmap <C-space> <Esc>
        cmap <Nul> <Esc>
        map <C-space> <Esc>
        map <Nul> <Esc>
    " format
        set expandtab
        set softtabstop=4
        set tabstop=4
        set shiftwidth=4
        set smartindent
        vmap < <gv
        vmap > >gv
    " moving
        nmap j gj
        nmap k gk
        imap <C-f> <Right>
        imap <C-b> <Left>
        imap <C-e> <End>
        imap <C-a> <Home>
    Bundle 'The-NERD-Commenter'
        vmap <leader>c<space> :call NERDComment(0, "invert")<cr>gv
        nmap <leader>/ :call NERDComment(0, "invert")<cr>
        vmap <leader>/ :call NERDComment(0, "invert")<cr>gv
    Bundle 'surround.vim'
    Bundle 'snipMate'
    Bundle 'YankRing.vim'
        let g:yankring_history_dir = '~/.vim/temp'
        nmap <Leader>p :YRShow<cr>
    Bundle 'neocomplcache'
        let g:neocomplcache_enable_at_startup = 1
        let g:neocomplcache_enable_smart_case = 1
        let g:neocomplcache_enable_camel_case_completion = 1
        let g:neocomplcache_enable_underbar_completion = 1
        let g:neocomplcache_enable_auto_select = 1
        imap <expr><Tab> neocomplcache#start_manual_complete()
        imap <expr><C-e> neocomplcache#cancel_popup()

    Bundle 'Align'
    Bundle 'matchit.zip'
    Bundle 'delimitMate.vim'
        let delimitMate_expand_cr = 1
        let delimitMate_expand_space = 1
        let delimitMate_balance_matchpairs = 1
        imap <C-Tab> <C-R>=delimitMate#JumpAny("\<C-Tab>")<CR>
    Bundle 'repeat.vim'
    Bundle 'Gundo'
        let g:gundo_right = 1
        let g:gundo_close_on_revert = 1
        let g:gundo_preview_height = 20
        nmap <F8> :GundoToggle<CR>

" Goto
    " ctags
        nmap <silent> <C-]> g<C-]>
        vmap <silent> <C-]> g<C-]>
    " Buffer
        " Goto last opened buffer, not working in iTerm and Terminal
        nmap <C-Tab> :b#<cr>
    Bundle 'ctrlp.vim'
        let g:ctrlp_root_markers = ['.git']
        nmap gb :CtrlPBuffer<cr>
        nmap gr :CtrlPMRUFiles<cr>

" VCS
    Bundle 'fugitive.vim'
    Bundle 'vcscommand.vim'
        nmap <F5> :VCSBlame<CR>

" Web
    Bundle 'Simple-Javascript-Indenter'
        let g:SimpleJsIndenter_BriefMode = 1

    Bundle 'ZenCoding.vim'
        let g:user_zen_settings = {
        \  'html' : {
        \    'indentation' : '    '
        \  },
        \}

" Ruby & Rails
    autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
    Bundle 'tpope/vim-rails'
    Bundle 'cucumber.zip'


filetype plugin indent on
"
 " Brief help
 "
 " :BundleInstall  - install bundles (won't update installed)
 " :BundleInstall! - update if installed
 "
 " :Bundles foo    - search for foo
 " :Bundles! foo   - refresh cached list and search for foo
 "
 " :BundleClean    - confirm removal of unused bundles
 " :BundleClean!   - remove without confirmation
 "
 " see :h vundle for more details
 " or wiki for FAQ
 " Note: comments after Bundle command are not allowed..


