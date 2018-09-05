" ==================================================================================
" OS環境などの差によって使い分けする項目
" clipboard 機能は便利なので、linuxでは vim-gnome などGUIを備えたものがよい
" ==================================================================================
" ポータブル環境設定のルートディレクトリ
let $ConfigPath = $HOME. "/vim_config/"
" dein および dein管理プラグインのインストール先
let $WorkingPath = $HOME. "/.cache/"
let $GithubPath = $WorkingPath. "repos/github.com/"
let $ShougoPath = $GithubPath. "Shougo/"
let $DeinPath = $ShougoPath. "dein.vim/"

" Add the dein installation directory into runtimepath
set runtimepath+=$DeinPath
" backup_directory
let $BackupPath = $WorkingPath. "/.backup"
set backupdir =$BackupPath

filetype plugin indent on
syntax enable

" ヤンク内容をクリップボードに転送　linux にも対応
command Pbcopy :let @*=@"  "最後にyank or 削除した内容をクリップボードに入れる
command Pbcopy0 :let @*=@0 "最後にyankした内容をクリップボードに入れる
