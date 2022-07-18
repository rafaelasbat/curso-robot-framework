set datetime=%date:~0,2%-%date:~3,2%-%date:~6,4%
; %time:~0,2%h%time:~3,2%m
cls
@echo off
set "tags="
echo Insira as tags que serao executadas separadas por um (1) espaco em branco.
set /P tags="Caso nao queira utilizar o sistema de tags, apenas passe o campo vazio: "
echo.
if [%tags%]==[] GOTO NOTUSINGTAGS

:USINGTAGS
echo Executando com as seguintes Tags: %tags%
echo.
set command=python -m robot -T -N "Log Cenarios Amazon" --include %tags% -d ./reports/frontend_%datetime%  tests\*.robot
goto :EXECUTE

:NOTUSINGTAGS
echo Executando sem o uso de Tags.
echo.
set command=python -m robot -T -N "Log Cenarios Amazon" -d ./reports/frontend_%datetime%  tests\*.robot
goto :EXECUTE

:EXECUTE
set local=%~dp0
echo Iniciando os testes automatizados em RobotFramework - FRONTEND
echo -------------------------------------------------------------
cd ..
cd %cd%
call %command%

echo -------------------------------------------------------------
echo Finalizado casos de testes
cd %local%
goto :done

:done
pause