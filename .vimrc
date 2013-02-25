
" Vundle
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
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
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Mark'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set helplang=cn            "ʹ�����İ����ĵ�
"set fileencoding=gbk       "�鿴utf-8��ʽ�İ����ĵ�
set fileencodings=utf8,gbk    "֧�ִ�gbk��ʽ���ļ�

colorscheme peaksea        "���ô�����ɫ
set background=dark
set guifont=Bitstream\ Vera\ Sans\ Mono\ 12    "��������ΪBitstream Vera Sans Mono 12��С
"set guifont=Consolas:h12:cANSI
set expandtab "ʹ��SPACE����Tab
set tabstop=4            "����tab������
set shiftwidth=4 "�Զ��������
set backspace=2            "�����˸������
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

"TList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1    "����Tlist

"winmannger
let g:winManagerWindowLayout='FileExplorer|TagList'     "��winmanager���ó��������TagList�����
nmap wm :WMToggle<cr>         "ӳ��winmanager�Ŀ�ݼ�

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-    "�趨ʹ��quickfix��������ʾcscope�Ľ��
"ӳ��cscope�Ŀ�ݼ�
nmap <F5>s :cs find s <C-R>=expand("<cword>")<CR><CR> "����C���Է��ţ������Һ��������ꡢö��ֵ�ȳ��ֵĵط�
nmap <F5>g :cs find g <C-R>=expand("<cword>")<CR><CR> "���Һ������ꡢö�ٵȶ����λ�ã�����ctags���ṩ�Ĺ���
nmap <F5>c :cs find c <C-R>=expand("<cword>")<CR><CR> "���ҵ��ñ������ĺ���
nmap <F5>t :cs find t <C-R>=expand("<cword>")<CR><CR> "����ָ�����ַ���
nmap <F5>e :cs find e <C-R>=expand("<cword>")<CR><CR> "����egrepģʽ���൱��egrep���ܣ��������ٶȿ����
nmap <F5>f :cs find f <C-R>=expand("<cfile>")<CR><CR> "���Ҳ����ļ�������vim��find����
nmap <F5>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR> "���Ұ������ļ����ļ�
nmap <F5>d :cs find d <C-R>=expand("<cword>")<CR><CR> "���ұ��������õĺ���

"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"ӳ��QuickFix�Ŀ�ݼ�
nmap <F6> :cw<cr>        "��quickfix����
nmap <F8> :cn<cr>        "ǰһ��
nmap <F7> :cp<cr>        "��һ��

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
map <F4>a :DoxAuthor<cr>
map <F4>f :Dox<cr>
"map <F4>b :DoxBlock<cr>
map <F4>v A //!< 
map <F4>c O/** */<Left><Left>


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
nmap <F5>f :FufFile<cr>
nmap <F5>b :FufBuffer<cr>
nmap <F5>T :FufTag<cr>
nmap <F5>t :FufTagWithCursorWord<cr>
