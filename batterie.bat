@echo off
title Batterie

echo Quel mode de batterie veux tu ?
echo 1 - Performances maximum
echo 2 - Economiseur de batterie maximum
set /p choice="Choix (1 ou 2): "

IF "%choice%" == "1" (
	goto perf
) ELSE (
	IF "%choice%" == "2" (
		goto eco
	) ELSE (
		echo Mauvais choix
		goto commonexit
	)
)

:perf
echo Performances maximum choisi
Powercfg /SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
goto commonexit

:eco
echo Economiseur de batterie maximum choisi
Powercfg /SETACTIVE a1841308-3541-4fab-bc81-f71556f20b4a
goto commonexit

:commonexit
pause