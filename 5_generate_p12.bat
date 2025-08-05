@echo off
setlocal

:: デフォルトファイル名（拡張子なし）
set "DEFAULT_KEY_NAME=ios_app"
set "DEFAULT_CRT_NAME=ios_app"
set "DEFAULT_P12_NAME=ios_app"
set "DEFAULT_PASSWORD=hogehoge"

:: 入力: .key ファイル名
set /p KEY_NAME=秘密鍵ファイル（.key）の名前を入力してください（Enterで既定名: %DEFAULT_KEY_NAME%.key）:
if "%KEY_NAME%"=="" (
    set "KEY_NAME=%DEFAULT_KEY_NAME%"
)

:: 入力: .crt ファイル名
set /p CRT_NAME=証明書ファイル（.crt）の名前を入力してください（Enterで既定名: %DEFAULT_CRT_NAME%.crt）:
if "%CRT_NAME%"=="" (
    set "CRT_NAME=%DEFAULT_CRT_NAME%"
)

:: 入力: .p12 出力ファイル名
set /p P12_NAME=p12 出力ファイル名を入力してください（Enterで既定名: %DEFAULT_P12_NAME%.p12）:
if "%P12_NAME%"=="" (
    set "P12_NAME=%DEFAULT_P12_NAME%"
)

:: 入力: パスワード（表示されます）
set /p PASSWORD=p12 のエクスポートパスワードを入力してください（Enterで既定値: %DEFAULT_PASSWORD%）:
if "%PASSWORD%"=="" (
    set "PASSWORD=%DEFAULT_PASSWORD%"
)

:: p12 生成
openssl pkcs12 -export -inkey "%KEY_NAME%.key" -in "%CRT_NAME%.crt" -out "%P12_NAME%.p12" -passout pass:%PASSWORD%

:: 完了メッセージ
echo "%KEY_NAME%.key" と "%CRT_NAME%.crt" から "%P12_NAME%.p12" を生成しました。設定したパスワードは覚えておいてください。

pause
exit /b
