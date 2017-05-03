
@ECHO "OS SQLS DEVEM ESTAR NA MESMA PASTA QUE ESTE BAT"
setlocal enableDelayedExpansion
@echo off
TIMEOUT /t 3
ECHO. > "Execucao.log"
 
for %%G in (*.sql) do (
 
    ECHO -------------------------------------------------------- >> "Execucao.log"
    ECHO !DATE! !TIME! Executando o script "%%G"... >> "Execucao.log"
    ECHO -------------------------------------------------------- >> "Execucao.log"
    ECHO. >> "Execucao.log"
    
    sqlcmd /S server /d banco -U Usuario -P Senha -e -i"%%G" >> "Execucao.log"
    
    ECHO. >> "Execucao.log"
    ECHO Fim da execucao: !DATE! !TIME! >> "Execucao.log"
    ECHO -------------------------------------------------------- >> "Execucao.log"
    ECHO. >> "Execucao.log"
    ECHO. >> "Execucao.log"
    
)
 
PAUSE