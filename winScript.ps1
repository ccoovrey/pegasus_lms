"
#######################################
### PEGASUS Middle PS Script        ###
### MIT License                     ###
### Copyright (c) Cadet Ryan Holmes ###
#######################################
"

do {
Write-Host "
Type 'exit' to leave script.
0   List all services
1   Search unauthorized files
2   Users and Groups
"

$input = Read-host

if ($input -eq "0") {
    Write-host "All services:"
    Get-Service

}

# search unauthorized files
elseif ($input -eq "1") {
	$path2=Split-Path -parent $MyInvocation.MyCommand.Definition
	$path=Get-Content $path2\path.txt

	Write-host "Searching for unauthorized files..."
	$extensions =@("aac","ac3","avi","aiff","bat","bmp","exe","flac","gif","jpeg","jpg","mov","m3u","m4p",
	"mp2","mp3","mp4","mpeg4","midi","msi","ogg","png","txt","sh","wav","wma","vqf")
	$tools =@("Cain","nmap","keylogger","Armitage","Wireshark","Metasploit","netcat")
	Write-host "Checking $extensions"
	foreach($ext in $extensions){
		Write-host "Checking for .$ext files"
		if(Test-path "$path\checkFilesOutput\$ext.txt"){Clear-content "$path\checkFilesOutput\$ext.txt"}
		C:\Windows\System32\cmd.exe /C dir C:\*.$ext /s /b | Out-File "$path\checkFilesOutput\$ext.txt"
	}
	Write-host "Finished searching by extension"
	Write-host "Checking for $tools"
	foreach($tool in $tools){
		Write-host "Checking for $tool"
		if(Test-path $path\checkFilesOutput\$tool.txt){Clear-content "$path\checkFilesOutput\$tool.txt"}
		C:\Windows\System32\cmd.exe /C dir C:\*$tool* /s /b | Out-File "$path\checkFilesOutput\$tool.txt"
	}
	Write-host "Finished searching for tools"
}

# users and groups
elseif ($input -eq "2") {
    Write-host "Users and Groups..."
}

} until ($input -eq "exit")

