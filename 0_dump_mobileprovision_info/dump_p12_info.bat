@echo off

openssl smime -inform der -verify -noverify -in *.mobileprovision -out provision.plist
pause
exit