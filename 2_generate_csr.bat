@echo off
setlocal

:: デフォルトの鍵ファイル名とCSRファイル名
set "DEFAULT_KEY_NAME=ios_app"
set "DEFAULT_CSR_NAME=ios_app"

:: 鍵ファイル名を入力させる
set /p KEY_NAME=入力する鍵ファイル（.key）名を入力してください（Enterで既定名: %DEFAULT_KEY_NAME%.key）:

:: 空ならデフォルトを使用
if "%KEY_NAME%"=="" (
    set "KEY_NAME=%DEFAULT_KEY_NAME%"
)

:: CSRファイル名を入力させる
set /p CSR_NAME=出力するファイル（.csr）名を入力してください（Enterで既定名: %DEFAULT_CSR_NAME%.csr）:

:: 空ならデフォルトを使用
if "%CSR_NAME%"=="" (
    set "CSR_NAME=%DEFAULT_CSR_NAME%"
)

:: CSR 生成
openssl req -new -key "%KEY_NAME%.key" -out "%CSR_NAME%.csr"

:: 完了メッセージ
echo CSRファイル "%CSR_NAME%.csr" を "%KEY_NAME%.key" から生成しました。

pause
exit /b