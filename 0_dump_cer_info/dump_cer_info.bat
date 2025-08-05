@echo off

openssl x509 -in *.cer -inform DER -noout -subject

pause
exit