@echo off
setlocal

:: �f�t�H���g�t�@�C�����i�g���q�Ȃ��j
set "DEFAULT_KEY_NAME=ios_app"
set "DEFAULT_CRT_NAME=ios_app"
set "DEFAULT_P12_NAME=ios_app"
set "DEFAULT_PASSWORD=hogehoge"

:: ����: .key �t�@�C����
set /p KEY_NAME=�閧���t�@�C���i.key�j�̖��O����͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_KEY_NAME%.key�j:
if "%KEY_NAME%"=="" (
    set "KEY_NAME=%DEFAULT_KEY_NAME%"
)

:: ����: .crt �t�@�C����
set /p CRT_NAME=�ؖ����t�@�C���i.crt�j�̖��O����͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_CRT_NAME%.crt�j:
if "%CRT_NAME%"=="" (
    set "CRT_NAME=%DEFAULT_CRT_NAME%"
)

:: ����: .p12 �o�̓t�@�C����
set /p P12_NAME=p12 �o�̓t�@�C��������͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_P12_NAME%.p12�j:
if "%P12_NAME%"=="" (
    set "P12_NAME=%DEFAULT_P12_NAME%"
)

:: ����: �p�X���[�h�i�\������܂��j
set /p PASSWORD=p12 �̃G�N�X�|�[�g�p�X���[�h����͂��Ă��������iEnter�Ŋ���l: %DEFAULT_PASSWORD%�j:
if "%PASSWORD%"=="" (
    set "PASSWORD=%DEFAULT_PASSWORD%"
)

:: p12 ����
openssl pkcs12 -export -inkey "%KEY_NAME%.key" -in "%CRT_NAME%.crt" -out "%P12_NAME%.p12" -passout pass:%PASSWORD%

:: �������b�Z�[�W
echo "%KEY_NAME%.key" �� "%CRT_NAME%.crt" ���� "%P12_NAME%.p12" �𐶐����܂����B�ݒ肵���p�X���[�h�͊o���Ă����Ă��������B

pause
exit /b
