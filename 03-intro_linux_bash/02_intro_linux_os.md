|[Return to TOC](00-Table-of-Contents.md)|
|---|

---

# Introduction to Linux Operating System

In this section, using the ubuntu 16 vagrant, we will explore the Linux Operating
System. Using SANS Cyber Aces tutorials we will explore Linux. Specifically:

## 1.0 Core Commands
[SANS Cyber Aces Core Commands Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-1-3.html)

### 1.0 Linux Exercises
Using [First set of Ubuntu vulnerabilities](01_ubu16_vagrant) . Answer the
following questions:

**1.1:**
Open a terminal and navigate around, what commands are useful for this? How
do you use: pwd, ls and cd ? How do you go up and down different directories?

**1.2:**
Using --help or -h , investigate into the options you can use for pwd, ls
and cd.

**1.3:**
How do you read a file on the command line? You can use vim, nano or 
simply use cat. Investigate what these are and how do use one of them. Get
familiar on its operation such as: read, change text, write and save.

**1.4:**
Somewhere in the vagrant home directory are bad file(s) (based on how its
named). First what pipe sentence would you use to list files in vagrant
home directory and pipe to a text file? What are/is the name(s) of these
files and where located? Next search and delete the file(s) on the 
command line. 

**1.5:**
Find out about users by looking at the following files shadow, passwd and 
group. You can use cat and grep to inspect the details. There is a user
(other than vagrant) that is not part of default users. What can you find
out about this user and their administrative permissions? You might need
to sudo for some of these files.

**1.6:**
Find out using pipes the list of users on the system, what is the 
command line sentence? 

## 2.0 Users and Groups
[SANS Cyber Aces Users and Groups Commands Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-1-4.html)

### 2.0 Linux Exercises
Using [Next Ubuntu vulnerabilities](02_ubu16_vagrant) . Answer the
following questions:

**2.1:**
Get a list of the users and groups in the vm (other than defaults). What files would have this 
information? What commands would you do to get this list?

**2.2:**
Find users that have root privileges. 

** 2.3:**
Find out more about the password for user cyberfool. If you wanted to change cyberfool
password how would you do this on the command line? What resource would you do to
understand how to create a new password that complies with security standards?

** 2.4:**
Delete users that have root privileges. Delete users that have a suspicious group
name.

## Other lessons
Each one of these is going to have exercises associated with them:

* [Applications and Services](https://tutorials.cyberaces.org/tutorials/view/1-1-5.html)
* [Files and Permissions](https://tutorials.cyberaces.org/tutorials/view/1-1-6.html)
* [Installing Software](https://tutorials.cyberaces.org/tutorials/view/1-1-7.html) 

---

|[Next Topic](03_bash_scripting.md)|
|---|
