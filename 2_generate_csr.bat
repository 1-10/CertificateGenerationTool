@echo off
setlocal

:: �f�t�H���g�̌��t�@�C������CSR�t�@�C����
set "DEFAULT_KEY_NAME=ios_app"
set "DEFAULT_CSR_NAME=ios_app"

:: ���t�@�C��������͂�����
set /p KEY_NAME=���͂��錮�t�@�C���i.key�j������͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_KEY_NAME%.key�j:

:: ��Ȃ�f�t�H���g���g�p
if "%KEY_NAME%"=="" (
    set "KEY_NAME=%DEFAULT_KEY_NAME%"
)

:: CSR�t�@�C��������͂�����
set /p CSR_NAME=�o�͂���t�@�C���i.csr�j������͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_CSR_NAME%.csr�j:

:: ��Ȃ�f�t�H���g���g�p
if "%CSR_NAME%"=="" (
    set "CSR_NAME=%DEFAULT_CSR_NAME%"
)

:: CSR ����
openssl req -new -key "%KEY_NAME%.key" -out "%CSR_NAME%.csr"

:: �������b�Z�[�W
echo CSR�t�@�C�� "%CSR_NAME%.csr" �� "%KEY_NAME%.key" ���琶�����܂����B

pause
exit /b