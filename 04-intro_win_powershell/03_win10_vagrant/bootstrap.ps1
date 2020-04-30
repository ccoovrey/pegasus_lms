# configure vulnerabilities
New-LocalGroup -Name "hacking-group"
New-LocalUser -Name "cyberfool" -NoPassword
New-LocalUser -Name "thehacker" -NoPassword
Add-LocalGroupMember -Group "hacking-group" -Member "thehacker"

Write-Host "Finished updating"
