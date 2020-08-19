|[Return to TOC](00-Table-of-Contents.md)|
|---|

---

# Introduction to Windows Operating System

In this section, using the windows 10 vagrant, we will explore the Windows Operating
System. If you want to look at a windows 10 vagrant without any vulnerabilities 
and look at [the directory: normal_win10_vagrant](normal_win10_vagrant). This 
is a useful thing to do because you can look at files and configurations that 
don't have vulnerabilities and learn about an OS that is normal. Using SANS 
Cyber Aces tutorials we will explore Windows, using different vagrants 
for the exercises below. Specifically:

## 1.0 Command Line Basics
[SANS Cyber Aces Command Line Basics Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-2-3.html).

### 1.1 Other Information
**1.1.1:**
How do you read a file on the command line with powershell? In linux this
is an easy task just pick your application (vim, nano, ...). Lets try
to use a powershell command lit for this task. 
```
$TextFile = "C:\Users\vagrant\hello.txt"

Get-Content -Path $TextFile

$a = Get-Content -Path $TextFile

# now an array of strings, can manipulate
$a -is [array]

# pipe operation
$a | Get-Member

$a.Count

$a[3]
```

This is good for doing scripts (having a variable and using this in a 
script that you have programmed). Seems a bit clunky. Is there a better
way? Why not use nano or vim in powershell? If you try:
```
vim --help

nano --help
```
You get an error. To install these in powershell do the following for nano:
```
choco install nano
```
If you're brave you could use vim:
```
choco install vim 
```

**1.1.2:**
How do you pipe? Lets look at a simple example. In this example we are going
to use a > symbol which is like a funnel that moves text into a file.
```
ls > hello1.txt

```

### 1.2 Windows Exercises
Using [the directory: 01_win10_vagrant](01_win10_vagrant), go to the
directory and vagrant up:
```
cd 01_win10_vagrant
vagrant up
```
answer the following questions:

**1.2.1:**
Open a terminal using powershell. How do you find out about different commands 
(help)? Investigate into the options you can use for pwd, ls and cd. Are 
the options different for dir and ls? How do you use help for vim or nano? How
do you read and scroll up/down in the terminal?

**1.2.2:**
How do you go up and down different directories?

**1.2.3:**
Somewhere in the vagrant home directory are bad file(s) (easy to find
based on how they are named). What are the names of the files?

**1.2.4:**
What pipe sentence would you use to list files in directory in Documents and 
pipe to a text file?  What are/is the name(s) of these files and where located? 

Next delete the file(s) on the command line. 

## 2.0 File System
[SANS Cyber Aces File System Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-2-4.html).

### 2.1 Windows Exercises
Using [the directory 02_win10_vagrant](02_win10_vagrant). Answer the 
directory and vagrant up:
```
cd 02_win10_vagrant
vagrant up
```
answer the following questions:

**2.1.1:**
In Windows what is the root folder (highest directory)? What would the file 
path be of vagrant users home directory?

**2.1.2:**
What is the file path of the 64-bit applications directory? If we had 32-bit 
applications what would be the file path? Where are application configurations
(like linux /etc directory) - file path? Go to this file path in powershell.

**2.3:**
Find pegasus squadron picture. Save this to your desktop using powershell.
What is the file size of hello.txt?

**2.3:**
List out the files in the Documents directory and redirect the output into
a file named cyber_info.txt

## 3.0 Users and Groups 
[SANS Cyber Aces Users and Groups Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-2-5.html)

### 3.1 Windows Exercises
Using [the directory 03_win10_vagrant](03_win10_vagrant). Answer the 
directory and vagrant up:
```
cd 03_win10_vagrant
vagrant up
```
answer the following questions:

**3.1.1:**
Get a list of the local users and also get their attributes:

**3.1.2:**
Get a list of the groups, zero in on some suspicious ones and
get their attributes:

## 4.0 Windows OS Mid Term
Using [the directory: 04_mid_intro_win10](04_mid_intro_win10) , go to the
directory and vagrant up:
```
cd 04_mid_intro_win10
vagrant up
```
There are vulnerabilities write down how many you get.

## 5.0 Windows Policies and Credential Storage
[SANS Cyber Aces Policies and Credential Storage](https://tutorials.cyberaces.org/tutorials/view/1-2-6.html)

Using [the directory: normal_win10_vagrant](normal_win10_vagrant) , go to the
directory and vagrant up:
```
cd normal_win10_vagrant 
vagrant up
```

### 5.1 Windows Tutorial on reg commands in powershell
This is a tutorial on the "reg" command in powershell. To get the values of 
all the registry keys on a local machine, we first have to find the path to 
the registry. Let’s get a list of all the local drives:
```
get-psdrive
```

Lets inspect and understand the HKLM directory (HKEY_LOCAL_MACHINE). The 
HKLM\SYSTEM is a key directory and it has some very useful information. We
can use the "reg" command specifically query to understand this info
further. Try out these commands:
```
reg query HKLM\SYSTEM

reg query HKLM\SYSTEM\CurrentControlSet\Control\Windows

# useful - list the mounted devices on the machine
reg query HKLM\SYSTEM\MountedDevices

# good way to see software on the machine
reg query HKLM\Software\Microsoft
```

## 6.0 List of Commands
Here is a list of commands that are being used in the above exercises:

|	command	|	options	|	use cases |	examples |
|-------|-------|-----|-------|
| cd |   | change directory | cd ../ , some_dir |
| pwd | | print work dir | pwd |
| ls | | list files and directory | ls -a, ls -Ra |
|    | -depth | depth of subdirectory ls | ls -depth 2 |
|    | -hidden | show hidden files and directories | ls -hidden |
| rm | -f | remove force | |
|    | -R | recursive remove | |
| cat |   | concatenate (print) | |
| mv |    | move file | mv some.txt ..\hello\some.txt |
| get-localuser | | | get list of local users | get-localuser |
| get-localgroup | | get local groups | get-localgroup |
| | -name | get local groups by name | get-localgroup -name |

---

|---|
|---|
