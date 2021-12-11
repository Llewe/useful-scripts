@echo off

::decrypt stuff for jasypt
::0) input secret
::1) input string to decrypt


set /p inp="please enter string to decrypt:"

set /p pw="please enter encryption-key:"

java -cp C:/Users/llhoc/.m2/repository/org/jasypt/jasypt/1.9.3/jasypt-1.9.3.jar org.jasypt.intf.cli.JasyptPBEStringDecryptionCLI input=%inp% password=%pw% algorithm=PBEWITHMD5ANDDES



