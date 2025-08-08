# CertificateGenerationTool

Unity製のiOSアプリを開発する際にUnity Cloud Buildをする時に必要となる証明書を発行する為のOpenSSLコマンド群をバッチファイルにしました。

[[ラボブログ] Windows環境のみでiOSアプリをビルドしてTestFlightに載せる方法](https://labs.1-10.com/wp-admin/post.php?post=5563&action=edit)

## STEP1  
以下からWindows用のOpenSSLをインストールしてください。  
https://slproweb.com/products/Win32OpenSSL.html
```
・「Win64 OpenSSL v3.x.x Light」版でOK

・インストール中、「The Windows system directory」にインストールを選んでOK

・openssl コマンドを使うために、環境変数 PATH にOpenSSLのパスを追加する。

・Windowsの検索で「環境変数」と入力 → 「環境変数の編集」を開く

・システム環境変数またはユーザー環境変数の「Path」を編集

・OpenSSLの bin フォルダを 新規追加

・OKで閉じて、PowerShellまたはコマンドプロンプトを再起動

・動作確認の為に、下記のコマンドを入力。
  openssl version
  OpenSSLのバージョン（例：OpenSSL 1.1.1w など）が表示されれば成功です！

・環境変数のPathにOpenSSLのbinフォルダまでのパスを通す。
  僕の環境の場合は「C:\Program Files\OpenSSL-Win64\bin」でした。
```
## STEP2  
1_generate_key.batを実行してください。

## STEP3  
**2_generate_csr.bat**を実行してください。

## STEP4  
**3_generate_cer@Apple Developer Certificates**をクリックして、AppleDeveloperセンターで(.cer)ファイルを生成してください。  
生成した(.cer)ファイルはDLしてこのフォルダに入れてください。

## STEP5  
**4_generate_crt.bat**を実行してください。

## STEP6  
**5_generate_p12.bat**を実行してください。

## STEP7  
**6_register_Identifier@Apple Developer Identifiers**をクリックして、アプリに対応するAppIDを生成してください。

## STEP8  
**7_generate_mobileprovision@Apple Developer Profiles**をクリックして、AppleDeveloperセンターで(.mobileprovision)ファイルを生成してください。


以上です。お疲れ様でした。
