@echo off

::encrypt stuff for jasypt
::0) input string to encrypt
::1) input encryption-key


set /p inp="please enter string to encrypt:"

set /p pw="please enter encryption-key:"

java -cp C:/Users/llhoc/.m2/repository/org/jasypt/jasypt/1.9.3/jasypt-1.9.3.jar org.jasypt.intf.cli.JasyptPBEStringEncryptionCLI input=%inp% password=%pw% algorithm=PBEWITHMD5ANDDES



