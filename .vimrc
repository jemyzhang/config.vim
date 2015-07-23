
" Vundle
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif


filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles
Bundle 'peaksea'
Bundle 'stlrefvim'
Bundle 'a.vim'
Bundle 'c.vim'
Bundle 'OmniCppComplete'
Bundle 'grep.vim'
Bundle 'taglist.vim'
Bundle 'winmanager'
"Bundle 'minibufexpl.vim'
Bundle 'genutils'
"Bundle 'lookupfile'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'echofunc.vim'
Bundle 'DoxygenToolkit.vim'
"fugitive: required by powerline
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Mark'
Bundle 'airblade/vim-gitgutter'
"Bundle 'motemen/git-vim'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'plasticboy/vim-markdown'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'DrawIt'

" Installing plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set helplang=cn            "ʹ�����İ����ĵ�
"set fileencoding=gbk       "�鿴utf-8��ʽ�İ����ĵ�
set fileencodings=utf8,gbk    "֧�ִ�gbk��ʽ���ļ�

colorscheme peaksea        "���ô�����ɫ
set background=dark
hi Normal ctermbg=none
"��������ΪBitstream Vera Sans Mono 12��С
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10    
"set guifont=Consolas:h12:cANSI
set expandtab "ʹ��SPACE����Tab
set tabstop=4            "����tab������
set shiftwidth=4 "�Զ��������
set backspace=2            "�����˸������

augroup filetype
    autocmd BufNewFile,BufRead Makefile set filetype=make
    autocmd BufNewFile,BufRead makefile.inc set filetype=make
    autocmd BufNewFile,BufRead *.make set filetype=make
    autocmd BufNewFile,BufRead *.mk set filetype=make
augroup END

autocmd FileType make setlocal noexpendtab "Makefile��ʹ��Space����Tab
set nu!                    "������ʾ�к�
set wrap                "�����Զ�����
"set nowrap                "���ò��Զ�����
set linebreak            "���ʻ���,���Զ����д���ʹ��,Ч���ܺ�
set whichwrap=b,s,<,>,[,]    "�����Դ����׺���β������һ��ȥ
"set list                "��ʾ�Ʊ��
"set listchars=tab:.\ ,trail:.    "���Ʊ����ʾΪ'.   '
set autochdir            "�Զ����õ�ǰĿ¼Ϊ���ڱ༭��Ŀ¼
set hidden                "�Զ�����û�б���Ļ�����,�л�bufferʱ���������浱ǰbuffer����ʾ
set scrolloff=5            "�ڹ��ӽ��׶˻򶥶�ʱ,�Զ��¹����Ϲ�. 
"�����ޱ����ļ�
set nobackup
set nowritebackup
"Toggle Menu and Toolbar ���ز˵����͹�����
set guioptions-=m
set guioptions-=T
"map <silent> <F2> :    if &guioptions =~# 'T' <bar>
"                         \set guioptions-=T <bar>
"                         \set guioptions-=m <bar>
"                         \else <Bar>
"                           \set guioptions+=T <bar>
"                           \set guioptions+=m <bar>
"                       \endif<CR>
let g:load_doxygen_syntax=1
"========================================================================================================
"����/�滻��ص�����
"========================================================================================================
set hlsearch            "������ʾ���ҽ��
set incsearch            "��������
set gdefault            "�滻ʱ,ʹ��g��ǩ��ΪĬ������. ���滻ʱ,�滻�������з��ϵ�ƥ��
"========================================================================================================
"״̬��������
"========================================================================================================
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]    "��ʾ�ļ���: ������, �ܵ��ַ���
set ruler                "�ڱ༭������, �����½���ʾ���λ�õ�״̬��
"========================================================================================================
"����C++��������
"========================================================================================================
syntax enable            "���﷨����
syntax on                "���﷨����
                        "��.vim/syntax/c.vim�ļ��������������,�������ȸ���
set showmatch            "����ƥ��ģʽ, �൱������ƥ��
set smartindent            "���ܶ���
set shiftwidth=4        "����ʱ,����ʹ��4���ո�
set autoindent            "�����Զ�����
set ai!                    "�����Զ�����

"--------------------------------------------------------------------------------------------------------
"�����۵�
"--------------------------------------------------------------------------------------------------------

"--------------------------------------------------------------------------------------------------------
"���ڲ����Ŀ�ݼ�
"--------------------------------------------------------------------------------------------------------
nmap wv        <C-w>v        "��ֱ�ָǰ����
nmap wc     <C-w>c        "�رյ�ǰ����
nmap ws        <C-w>s        "ˮƽ�ָǰ����
nmap ww    <C-w>w "�л�����
"nmap mru  :MRU<CR> "������ļ�

"--------------------------------------------------------------------------------------------------------
"�������
"--------------------------------------------------------------------------------------------------------
"powerline
let g:Powerline_symbols = 'fancy'

"TList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1    "����Tlist

"winmannger
let g:winManagerWindowLayout='FileExplorer|TagList'     "��winmanager���ó��������TagList�����
nmap wm :WMToggle<cr>         "ӳ��winmanager�Ŀ�ݼ�

"cscope
if has("cscope")
    if filereadable("cscope.out")
        cs add cscope.out
    else
        let cscope_file=findfile("cscope.out",".;")
        let cscope_pre=matchstr(cscope_file,".*/")
        if !empty(cscope_file) && filereadable(cscope_file)
            exec "cs add" cscope_file cscope_pre
        endif
    endif
    set cscopequickfix=s-,c-,d-,i-,t-,e-    "�趨ʹ��quickfix��������ʾcscope�Ľ��
    "ӳ��cscope�Ŀ�ݼ�
    if &term == "screen"
        nmap <C-c>s :cs find s <C-R>=expand("<cword>")<CR><CR> "����C���Է��ţ������Һ��������ꡢö��ֵ�ȳ��ֵĵط�
        nmap <C-c>g :cs find g <C-R>=expand("<cword>")<CR><CR> "���Һ������ꡢö�ٵȶ����λ�ã�����ctags���ṩ�Ĺ���
        nmap <C-c>c :cs find c <C-R>=expand("<cword>")<CR><CR> "���ҵ��ñ������ĺ���
        nmap <C-c>t :cs find t <C-R>=expand("<cword>")<CR><CR> "����ָ�����ַ���
        nmap <C-c>e :cs find e <C-R>=expand("<cword>")<CR><CR> "����egrepģʽ���൱��egrep���ܣ��������ٶȿ����
        nmap <C-c>f :cs find f <C-R>=expand("<cfile>")<CR><CR> "���Ҳ����ļ�������vim��find����
        nmap <C-c>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR> "���Ұ������ļ����ļ�
        nmap <C-c>d :cs find d <C-R>=expand("<cword>")<CR><CR> "���ұ��������õĺ���
    else
        nmap <F5>s :cs find s <C-R>=expand("<cword>")<CR><CR> "����C���Է��ţ������Һ��������ꡢö��ֵ�ȳ��ֵĵط�
        nmap <F5>g :cs find g <C-R>=expand("<cword>")<CR><CR> "���Һ������ꡢö�ٵȶ����λ�ã�����ctags���ṩ�Ĺ���
        nmap <F5>c :cs find c <C-R>=expand("<cword>")<CR><CR> "���ҵ��ñ������ĺ���
        nmap <F5>t :cs find t <C-R>=expand("<cword>")<CR><CR> "����ָ�����ַ���
        nmap <F5>e :cs find e <C-R>=expand("<cword>")<CR><CR> "����egrepģʽ���൱��egrep���ܣ��������ٶȿ����
        nmap <F5>f :cs find f <C-R>=expand("<cfile>")<CR><CR> "���Ҳ����ļ�������vim��find����
        nmap <F5>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR> "���Ұ������ļ����ļ�
        nmap <F5>d :cs find d <C-R>=expand("<cword>")<CR><CR> "���ұ��������õĺ���
    endif
endif

"ӳ��QuickFix�Ŀ�ݼ�
if &term == "screen"
    nmap <C-c>w :cw<cr>        "��quickfix����
    nmap <C-c>n :cn<cr>        "ǰһ��
    nmap <C-c>p :cp<cr>        "��һ��
else
    nmap <F5>w :cw<cr>        "��quickfix����
    nmap <F5>n :cn<cr>        "ǰһ��
    nmap <F5>p :cp<cr>        "��һ��
endif

"MiniBufExp
"let g:miniBufExplMapWindowNavVim = 1            "ʹ��<C-h,j,k,l>�ڴ���֮���ƶ�
"let g:miniBufExplMapWindowNavArrows = 1         "ʹ��<C-��ͷ>�ڴ���֮���ƶ�

"BufTab
noremap <C-h> :bprev<CR>                         "ʹ��<C-h>�л�����һ��buffer
noremap <C-l> :bnext<CR>                         "ʹ��<C-l>�л�����һ��buffer
let g:buftabs_only_basename=1                    "ֻ��ʾ�ļ���������·����
set laststatus=2                                 "�����������һ��buffer����ʾ��״̬����
let g:buftabs_in_statusline=1

"A
nnoremap <silent> <F9> :AV<cr>       "��F9���ó�ͷ/Դ�ļ��л��Ŀ�ݼ�,�����ڷ�Ϊ�����������ڣ�����.h/.c�ļ�
let g:alternateSearchPath = 'sfr:./,sfr:../include,sfr:../../include,sfr:../source,sfr:../src,sfr:../inc'

"Grep
"��F3���ó�Grep���ҵĿ�ݼ�
nnoremap <silent> <F3> :Grep<cr>
"���ò�ȫ
filetype plugin indent on
set completeopt=longest,menu
"���ó�����ȫ
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"����Doxygen��ע��
let g:DoxygenToolkit_authorName="JEMYZHANG" 
"let g:DoxygenToolkit_briefTag_funcName = "yes"
if &term == "screen"
    map <leader>xa :DoxAuthor<cr>
    map <leader>xf :Dox<cr>
    "map <leader>xb :DoxBlock<cr>
    map <leader>xv A //!< 
    map <leader>xc O/** */<Left><Left>
else
    map <F4>a :DoxAuthor<cr>
    map <F4>f :Dox<cr>
    "map <F4>b :DoxBlock<cr>
    map <F4>v A //!< 
    map <F4>c O/** */<Left><Left>
endif


"����robix�Ķ�ʱ��ctags��cscope�����ã���ʱ��дһ���ű��Զ����á�
"�ű�˼·�ǽ����й��̶�����/home/aleln/workspace/����ʹ���������Զ��������
"set tags=/home/aleln/workspace/robix3/tags
"cs add /home/aleln/workspace/robix3/cscope.out /home/aleln/workspace/robix3
set tags=tags;
set autochdir

"vimlite
"set nocp
"command -nargs=? W :w !sudo tee % > /dev/null

"fuzzyfind
if &term == "screen"
    nmap <leader>ff :FufFile<cr>
    nmap <leader>fb :FufBuffer<cr>
    nmap <leader>ft :FufTag<cr>
    nmap <leader>fT :FufTagWithCursorWord<cr>
else
    nmap <F5>f :FufFile<cr>
    nmap <F5>b :FufBuffer<cr>
    nmap <F5>t :FufTag<cr>
    nmap <F5>T :FufTagWithCursorWord<cr>
endif

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_global_ycm_extra_conf = '~/workspace/HiviewDtvMagus/.ycm_extra_conf.py'
