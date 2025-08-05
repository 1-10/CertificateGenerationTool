@echo off
setlocal

:: �f�t�H���g�̓��͂Əo�̓t�@�C����
set "DEFAULT_CER_NAME=ios_distribution"
set "DEFAULT_CRT_NAME=ios_app"

:: .cer�t�@�C���������
set /p CER_NAME=���͂���ؖ����t�@�C���i.cer�j������͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_CER_NAME%.cer�j:

:: ���͂���̏ꍇ�̓f�t�H���g���g��
if "%CER_NAME%"=="" (
    set "CER_NAME=%DEFAULT_CER_NAME%"
)

:: .crt�o�̓t�@�C���������
set /p CRT_NAME=�o�͂���t�@�C���i.crt�j������͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_CRT_NAME%.crt�j:

:: ���͂���̏ꍇ�̓f�t�H���g���g��
if "%CRT_NAME%"=="" (
    set "CRT_NAME=%DEFAULT_CRT_NAME%"
)

:: �ؖ����̕ϊ�����
openssl x509 -in "%CER_NAME%.cer" -inform DER -out "%CRT_NAME%.crt"

:: �������b�Z�[�W
echo "%CER_NAME%.cer" �� "%CRT_NAME%.crt" �ɕϊ����܂����B

pause
exit /b