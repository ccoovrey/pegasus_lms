# configure vulnerabilities
New-LocalUser -Name "cyberfool" -NoPassword

# unzip cyber scoring engine
Expand-Archive -LiteralPath C:\vagrant\test.zip -DestinationPath C:\Users\vagrant\Documents 

attrib +h C:\Users\vagrant\*.mxd

Write-Host "Finished updating"
