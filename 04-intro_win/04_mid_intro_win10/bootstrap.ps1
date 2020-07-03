# configure vulnerabilities
New-LocalGroup -Name "hacking-group"
New-LocalUser -Name "cyberfool" -NoPassword
New-LocalUser -Name "thehacker" -NoPassword
Add-LocalGroupMember -Group "hacking-group" -Member "thehacker"

# unzip cyber scoring engine
Expand-Archive -LiteralPath C:\vagrant\test.zip -DestinationPath C:\Users\vagrant\Documents 

attrib +h C:\Users\vagrant\Documents\*.mxd

Write-Host "Finished updating"
