@echo off
setlocal

:: デフォルトのファイル名を設定
set "DEFAULT_NAME=ios_app"

:: ユーザーに入力を促す
set /p OUTPUT_FILE=出力する鍵ファイル（.key）名を入力してください（Enterで既定名: %DEFAULT_NAME%.key）:

:: 入力が空ならデフォルトにする
if "%OUTPUT_FILE%"=="" (
    set "OUTPUT_FILE=%DEFAULT_NAME%"
)

:: 鍵を生成
openssl genrsa -out "%OUTPUT_FILE%.key" 2048

:: 完了メッセージ
echo 秘密鍵 "%OUTPUT_FILE%.key" を生成しました。

pause
exit /b