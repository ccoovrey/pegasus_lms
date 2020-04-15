|[Return to TOC](00-Table-of-Contents.md)|
|---|

---

# Introduction to Windows Operating System

In this section, using the windows 10 vagrant, we will explore the Windows Operating
System. Using SANS Cyber Aces tutorials we will explore Windows. Specifically:

## 1.0 Command Line Basics
[SANS Cyber Aces Command Line Basics Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-2-3.html).

### 1.0 Windows Exercises
Using [First set of Windows vulnerabilities](01_win10_vagrant). Answer the 
following questions:

**1.1:**
Open a terminal using powershell. How do you do this? Once in powershell
navigate around, what commands are useful for this? How do you use: pwd, 
ls and cd ? Is ls and dir the same? How do you go up and down different
directories?

**1.2:**
Using --help or -h , investigate into the options you can use for pwd, ls
and cd. Are the options different for dir and ls ?

**1.3:**
How do you read a file on the command line with powershell? In linux this
is an easy task just pick your application (vim, nano, cat, ...). Lets try
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

First attempt to look at this, in further lessons we will look more into
this.

**1.4:**
Somewhere in the vagrant home directory are bad file(s) (based on how its
named). First what pipe sentence would you use to list files in vagrant
home directory and pipe to a text file? What are/is the name(s) of these
files and where located? Next search and delete the file(s) on the 
command line. 

## 2.0 File System
[SANS Cyber Aces File System Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-2-4.html).

### 2.0 Windows Exercises
Using [Next Windows vulnerabilities](02_win10_vagrant). Answer the 
following questions:

**2.1:**
In Windows what is the root folder (highest directory)? What would the file 
path be of vagrant users home directory?

**2.2:**
What is the file path of the 64-bit applications directory? If we had 32-bit 
applications what would be the file path? Where are application configurations
(like linux /etc directory) - file path? Go to this file path in powershell.

**2.3:**
Find pegasus squadron picture. Save this to your desktop using powershell.
What is the file size of hello.txt?

**2.3:**
List out the files in the Documents directory and redirect the output into
a file named cyber_info.txt

## Other lessons
Each one of these is going to have exercises associated with them:

* [Users and Groups](https://tutorials.cyberaces.org/tutorials/view/1-2-5.html)
* [Policies and Credential Storage](https://tutorials.cyberaces.org/tutorials/view/1-2-6.html)
* [Registry](https://tutorials.cyberaces.org/tutorials/view/1-2-7.html)
* [Networking and Sharing](https://tutorials.cyberaces.org/tutorials/view/1-2-8.html)
* [Services and Processes](https://tutorials.cyberaces.org/tutorials/view/1-2-9.html)

---

|[Next Topic](03_powershell.md)|
|---|
