<#
=====================================
Script Created by - Binu Balan      
Script Created on - 12/30/2016
Script Updated on - ----------

Version - V 1.0

Requirement *
PowerShell Version = 2.0 or above
	 .__.
     (oo)____
     (__)    )\
        ll--ll '

=====================================
#>
cls
Write-Host "///////////////////////////////////////////////////" -ForegroundColor Red
Write-Host " "
Write-Host "          ##     ####     ####    #   #" -ForegroundColor Green
Write-Host "         #  #    #   #    #   #   #   #" -ForegroundColor Green
Write-Host "        #####    ####     ####    #   #" -ForegroundColor Green
Write-host "       #     #   #        #        ###" -ForegroundColor Green
Write-Host " " 
Write-Host "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\" -ForegroundColor Red
Write-Host " " 
Write-host "	           .__." -ForegroundColor Green
Write-host "                   (oo)____" -ForegroundColor Green
Write-host "                   (__)    )\" -ForegroundColor Green
Write-host "                      ll--ll '" -ForegroundColor Green
Write-Host "               SCRIPT BY BINU BALAN               " -ForegroundColor DarkYellow -BackgroundColor DarkBlue 
Write-Host "///////////////////////////////////////////////////" -ForegroundColor Red
Start-Sleep -Seconds 1
Write-Host " "
Write-Host " " 

$UAlpha = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
$LAlpha = "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"
$Num = "1","2","3","4","5","6","7","8","9","0"
$Special = "!","$","%","&","(",")","*","+","-","/",":",";","<","=",">","?","@","[","\","]","^","_","{","}","~"

$passlenght = 10..16
# $ReqPassLenght = Get-Random $passlenght
$ReqPassLenght = Read-Host (" Enter the password lenght ")

# Write-Host "$ReqPassLenght"

$x = 0
do
{


$U = $null
if ($x -ne $ReqPassLenght){
$Us = $UAlpha | Sort-Object {Get-Random} -Unique         
$U = Get-Random $Us -Minimum $passlenght
[array]$Pass1 = $Pass1 + $U
$x = $x + 1
}



$L = $null
if ($x -ne $ReqPassLenght){ 
$Ls = $LAlpha | Sort-Object {Get-Random} -Unique
$L = Get-Random $Ls -Minimum $passlenght
[array]$Pass2 = $Pass2 + $L
$x = $x + 1
}



$N = $null
if ($x -ne $ReqPassLenght){
$Ns = $Num | Sort-Object {Get-Random} -Unique
$N = Get-Random $Ns -Minimum $passlenght
[array]$Pass3 = $Pass3 + $N
$x = $x + 1
}


$S = $null
if ($x -ne $ReqPassLenght){
$Ss = $Special | Sort-Object {Get-Random} -Unique
$S = Get-Random $Ss -Minimum $passlenght
[array]$Pass4 = $Pass4 + $S
$x = $x + 1
}


}
until ($x -eq $ReqPassLenght)

$PassOut = $Pass1 + $Pass2 + $Pass3 + $Pass4

[string]$Shuffle = $PassOut | Sort-Object {Get-Random} -Unique
# Write-Host "AppuPass = $PassOut"
$JoiningPwd = $Shuffle -split " "

ForEach ($Pwd in $JoiningPwd) {
$OutputPassword = $OutputPassword + $Pwd 
}

Write-Host " ================================================================================ "
Write-Host " Here is your Random Password - " -NoNewline
Write-Host "$OutputPassword" -ForegroundColor Green -BackgroundColor Black
Write-Host " ================================================================================ "
Write-Host ""
