# provision windows
mkdir C:\Users\vagrant\test
cp C:\vagrant\test.zip C:\Users\vagrant\test\test.zip
cd C:\Users\vagrant\test
Expand-Archive -LiteralPath C:\Users\vagrant\test\test.zip -DestinationPath C:\Users\vagrant\test\ 

.\bootstrap.ps1

Write-Host "Finished Provisioning"
