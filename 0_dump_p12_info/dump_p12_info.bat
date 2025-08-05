@echo off

openssl pkcs12 -in *.p12 -nodes -info

pause
exit