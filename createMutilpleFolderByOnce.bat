


@echo off

rem rem means commet
rem The "@" to check echo state
rem then set echo to off
rem which means that not to show echo message
rem and not type message on cmd like us did


rem setAppTitle
title AppForCreateMultipleDirectoryInCurrentPath

rem declare a variable by "set"
rem /p means that user input and type string to prompt user
set /p filename= what is your directory name? ex. output1,output2...:
set /p limit= what is your limit range?:
set /p start= what is your start index?:
set /p incre= how much does it need to increase ex 1 or 2:

rem /a means switch the value because limit was a string
rem so below line means limit to number
rem I don't know how, but just try 
set /a limit=%limit%
set /a incre=%incre%
set /a start=%start%

echo You enter folder name is %filename%

rem this is a comment
rem not gonna execute

rem the mkdir need "" then variable need %%

rem /l mean number maybe left 1 means from 1. right 1 means increment by 1
for /l %%a in (%start%;%incre%;%limit%) do (
 mkdir "%filename%%%a"
 )


