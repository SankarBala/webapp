::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCeDJGmL/UwkaBRSDDeDMG6GArAR56jr/eXn
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
 



::First save current pids with the wanted process name

setlocal EnableExtensions EnableDelayedExpansion
set "RETPIDS="
set "OLDPIDS=p"
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='httpd.exe'" get ProcessID ^| findstr [0-9]') do (set "OLDPIDS=!OLDPIDS!%%ap")

echo %OLDPIDS%
pause

start itparlour.com.exe

pause


::Check and find processes missing in the old pid list
for /f "TOKENS=1" %%a in ('wmic PROCESS where "Name='httpd.exe'" get ProcessID ^| findstr [0-9]') do (
if "!OLDPIDS:p%%ap=zz!"=="%OLDPIDS%" (set "RETPIDS=/PID %%a !RETPIDS!")
)

echo %RETPIDS%

pause

