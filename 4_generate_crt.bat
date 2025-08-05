@echo off
setlocal

:: デフォルトの入力と出力ファイル名
set "DEFAULT_CER_NAME=ios_distribution"
set "DEFAULT_CRT_NAME=ios_app"

:: .cerファイル名を入力
set /p CER_NAME=入力する証明書ファイル（.cer）名を入力してください（Enterで既定名: %DEFAULT_CER_NAME%.cer）:

:: 入力が空の場合はデフォルトを使う
if "%CER_NAME%"=="" (
    set "CER_NAME=%DEFAULT_CER_NAME%"
)

:: .crt出力ファイル名を入力
set /p CRT_NAME=出力するファイル（.crt）名を入力してください（Enterで既定名: %DEFAULT_CRT_NAME%.crt）:

:: 入力が空の場合はデフォルトを使う
if "%CRT_NAME%"=="" (
    set "CRT_NAME=%DEFAULT_CRT_NAME%"
)

:: 証明書の変換処理
openssl x509 -in "%CER_NAME%.cer" -inform DER -out "%CRT_NAME%.crt"

:: 完了メッセージ
echo "%CER_NAME%.cer" を "%CRT_NAME%.crt" に変換しました。

pause
exit /b