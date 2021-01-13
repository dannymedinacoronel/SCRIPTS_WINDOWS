@echo off

echo **********************************************************************************************************
echo	Realizar la copia de todos los ficheros existentes en la carpeta USERS de la red. Si dichos ficheros
echo	ya existen en la carpeta destino deberemos sobreescribirlos
echo **********************************************************************************************************
pause

IF EXIST \\Win-i0609kmb3h2\searsservidor\COPIADESEGURIDAD
    xcopy \\Win-i0609kmb3h2\searsservidor\DEPT_VENDAS \\Win-i0609kmb3h2\searsservidor\COPIADESEGURIDAD /i /y /e /s
)ELSE (
MD \\SEARSSERVIDOR\COPIADESEGURIDAD
    copy \\Win-i0609kmb3h2\searsservidor\DEPT_VENDAS \\Win-i0609kmb3h2\searsservidor\COPIADESEGURIDAD /i /y /e /s
)
