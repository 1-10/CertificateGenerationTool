@echo off
setlocal

:: �f�t�H���g�̃t�@�C������ݒ�
set "DEFAULT_NAME=ios_app"

:: ���[�U�[�ɓ��͂𑣂�
set /p OUTPUT_FILE=�o�͂��錮�t�@�C���i.key�j������͂��Ă��������iEnter�Ŋ��薼: %DEFAULT_NAME%.key�j:

:: ���͂���Ȃ�f�t�H���g�ɂ���
if "%OUTPUT_FILE%"=="" (
    set "OUTPUT_FILE=%DEFAULT_NAME%"
)

:: ���𐶐�
openssl genrsa -out "%OUTPUT_FILE%.key" 2048

:: �������b�Z�[�W
echo �閧�� "%OUTPUT_FILE%.key" �𐶐����܂����B

pause
exit /b