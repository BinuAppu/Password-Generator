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
# SIG # Begin signature block
# MIIJGAYJKoZIhvcNAQcCoIIJCTCCCQUCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUPQImb8R+IwwK35w7CB6I1ElF
# lnygggaBMIIGfTCCBWWgAwIBAgITLwAAAAVRHPs962JO4gAAAAAABTANBgkqhkiG
# 9w0BAQsFADBJMRMwEQYKCZImiZPyLGQBGRYDY29tMRQwEgYKCZImiZPyLGQBGRYE
# YXBwdTEcMBoGA1UEAxMTQXBwdSBEb21haW4gUm9vdCBDQTAeFw0xNjEyMjIxNjUx
# MDVaFw0xODEyMjIxNzAxMDVaMFcxEzARBgoJkiaJk/IsZAEZFgNjb20xFDASBgoJ
# kiaJk/IsZAEZFgRhcHB1MRMwEQYDVQQLEwpQcm9kdWN0aW9uMRUwEwYDVQQDEwxB
# cHB1IFNjcmlwdHMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDDaHsd
# ZANhKks+cKHjcp7Gi4S39eye5LfgO8S5rfojXyBxFfF0kHx+zKckrszS2zutL3gg
# nDSeD4tTWUgnK6qQNRqBfPJHHMC51IaZtdgEcfMXWWnjtf3OzUBhewI5tLqUyEKT
# zQaNrcAhgDphdiG7KA5wtEJVZV6r90ZoM0/8RWM/DB838G24nfhybWGCN0THQf4j
# LZZo2H0L8z3Bx0VPsbpWGMCpzZcsyOHUZYC/eDpCN44XB5eMs2YQrd5jXdLg5yzj
# xYcsdYtxcni1dHC6mB0y3BQ01//5uL/f0X2vLB/Ap12Inq9hvhj7yXgGcZC+lCnW
# MqpdpZpDTJXt9Bd/AgMBAAGjggNOMIIDSjA8BgkrBgEEAYI3FQcELzAtBiUrBgEE
# AYI3FQiH6+UOhvSjVYXZiTaFr+ZggZCrTz+t9AWE84RdAgFmAgEAMBMGA1UdJQQM
# MAoGCCsGAQUFBwMDMA4GA1UdDwEB/wQEAwIHgDAbBgkrBgEEAYI3FQoEDjAMMAoG
# CCsGAQUFBwMDMB0GA1UdDgQWBBTTHs+v/dvVMVqmVlMRhIueMEMcHjAfBgNVHSME
# GDAWgBQsx2obUB7JbC/k9olwnnHpOdjyVDCCASEGA1UdHwSCARgwggEUMIIBEKCC
# AQygggEIhoHAbGRhcDovLy9DTj1BcHB1JTIwRG9tYWluJTIwUm9vdCUyMENBLENO
# PUFQUFVST09UQ0EsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENO
# PVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9YXBwdSxEQz1jb20/Y2VydGlm
# aWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNlP29iamVjdENsYXNzPWNSTERpc3RyaWJ1
# dGlvblBvaW50hkNodHRwOi8vQVBQVVJPT1RDQS5hcHB1LmNvbS9DZXJ0RW5yb2xs
# L0FwcHUlMjBEb21haW4lMjBSb290JTIwQ0EuY3JsMIIBLwYIKwYBBQUHAQEEggEh
# MIIBHTCBtQYIKwYBBQUHMAKGgahsZGFwOi8vL0NOPUFwcHUlMjBEb21haW4lMjBS
# b290JTIwQ0EsQ049QUlBLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNl
# cnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9YXBwdSxEQz1jb20/Y0FDZXJ0aWZp
# Y2F0ZT9iYXNlP29iamVjdENsYXNzPWNlcnRpZmljYXRpb25BdXRob3JpdHkwYwYI
# KwYBBQUHMAKGV2h0dHA6Ly9BUFBVUk9PVENBLmFwcHUuY29tL0NlcnRFbnJvbGwv
# QVBQVVJPT1RDQS5hcHB1LmNvbV9BcHB1JTIwRG9tYWluJTIwUm9vdCUyMENBLmNy
# dDAwBgNVHREEKTAnoCUGCisGAQQBgjcUAgOgFwwVQXBwdS5TY3JpcHRzQGFwcHUu
# Y29tMA0GCSqGSIb3DQEBCwUAA4IBAQBd4CqXoea8hTaKxpiyUCVc7lQPNUZ2eYHQ
# vqJymqZoO7lwNBvS9ZQO4iVKCo8F62fCyEaZoEnatzyE0idC9qNNxQWTeWkcwAgy
# d3TnJfUwqyDzG+UbS9pfz9FOK9U+KzGp5zbFtdPiIsYKYw5RsPdSEZjVwtGyZjOm
# /kw6td/o1nsv0hiergvxjUzt4kQMV4MBdt3m+1dlkXb124agQmk3uA+vdSSxdzzK
# OtLqiH+iH/oVe5ka2g/PYGX0jvo9iTlFRwe95Bfbcv2pnAhJD1ojKZXYVKA9xqK1
# 1Zradp4/lSE1SC5TvnlwqksJiXojOwv9o52JI1gPIrVvuIjItngaMYICATCCAf0C
# AQEwYDBJMRMwEQYKCZImiZPyLGQBGRYDY29tMRQwEgYKCZImiZPyLGQBGRYEYXBw
# dTEcMBoGA1UEAxMTQXBwdSBEb21haW4gUm9vdCBDQQITLwAAAAVRHPs962JO4gAA
# AAAABTAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkq
# hkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGC
# NwIBFTAjBgkqhkiG9w0BCQQxFgQUOy4tR5vkTg3wkiFFLJaTe8w4NSIwDQYJKoZI
# hvcNAQEBBQAEggEAJlsiHHCUIuGdZWKDP9g3jFhtAFJx4iT4oaaBcm9ljRlEZ3W3
# Ki4TlFFStyiPTY/ApWNNsm39Xg+Ez/ttFSneYXHSgD2EuvtkThUehaRDbu5IEeQ0
# vwHbNXb71mKaC9EwXIPp7PWYdysMAYgD4IqhV6pbs+MIlFVD3suxdSF6M2uUqxVc
# WA1+lH3IkZwFqpA//IkLgmhs/Ptq+RaDEa+KMMThyye0xn8q8LrEk+rM73o6jP+b
# +uPAYTDa1G8NIwjGomdlrDTGIVujZx1JqVEw9FYWa6OOd4mLywm9OymPUBUXYJlQ
# LaMyfIz4gpyV6pL7MKrzPYwml/Fs274Bw9t1Ng==
# SIG # End signature block
