|[Return to TOC](00-Table-of-Contents.md)|
|---|

---

# Introduction to Linux Operating System

In this section, using the ubuntu 16 vagrant, we will explore the Linux Operating
System. If you want to look at an ubuntu 16 vagrant without any vulnerabilities 
and look at [the directory: normal_ubu16_vagrant](normal_ubu16_vagrant). This 
is a useful thing to do because you can look at files and configurations that 
don't have vulnerabilities and learn about an OS that is normal. Using SANS 
Cyber Aces tutorials we will explore Linux, using different vagrants for the 
exercises below. Specifically:

## 1.0 Core Commands
[SANS Cyber Aces Core Commands Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-1-3.html)

### 1.0 Linux Exercises
Using [the directory: 01_ubu16_vagrant](01_ubu16_vagrant) , go to the
directory and vagrant up:
```
cd 01_ubu16_vagrant
vagrant up
```
Answer the following questions:

**1.0.1:**
Open a terminal and navigate around, what commands are useful for this?
How do you go up and down different directories?

**1.0.2:**
Using --help, investigate into the options you can use for pwd, ls
and cd. Also use man.

**1.0.3:**
How do you read a file on the command line? You can use vim, nano or 
simply use cat. Investigate what these are and how do use one of them. Get
familiar on its operation such as: read, change text, write and save.

**1.0.4:**
Somewhere in the vagrant home directory are bad file(s) (based on how its
named). First what pipe sentence would you use to list files in vagrant
home directory and pipe to a text file? What about listing files and 
sub directories with a pipe to a text file? What are/is the name(s) of these
files and where located? Next search and delete the file(s) on the 
command line. 

## 2.0 Users and Groups
[SANS Cyber Aces Users and Groups Commands Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-1-4.html)
```
cd 02_ubu16_vagrant
vagrant up
```

### 2.1 Other Information

**2.1.1:**
There are different types of **grep** (like grep, egrep, fgrep, even
pgrep). Grep is one of the renowned search tool on Unix-like systems which 
can be used to search for anything whether it be a file, or a line or 
multiple lines in file is grep utility. It is very vast in functionality 
which can be attributed to the large number of options it supports like: 

* searching using string pattern
* reg-ex pattern 
* perl based reg-ex 

Try different --help or man to find out further. The different variants are
different types of grep:

* grep: basic grep (global regular expression print)
* egrep: extended grep this can use some other expressions. In egrep, 
+, ?, |, (, and ),  treated as meta characters. Where as in grep, they are 
rather treated as pattern instead of meta characters. By including 
'backslash' followed by meta character can let the grep to treat it 
as meta characters like \?, \+, \{, \|, \(, and \).

A good option is invert -v which would mean to subtract something:
```
hello
goodbye

grep -v hello
goodbye
```

**2.1.2:**
**cut** is a command for cutting out the sections from each line of files and 
writing the result to standard output. It can be used to cut parts of a 
line by **byte position, character and field**. Basically the cut command 
slices a line and extracts the text. It is necessary to specify option with 
command otherwise it gives error. If more than one file name is provided 
then data from each file is not precedes by its file name. 

Here's an example:
```
# say we have a file named names.txt
cat names.txt
Andhra Pradesh
Arunachal Pradesh
Assam
Bihar
Chhattisgarh

# bytes either by comma or by range
cut -b 1,2,3 names.txt
And
Aru
Ass
Bih
Chh

cut -b 1-3,5-7 state.txt
Andra
Aruach
Assm
Bihr
Chhtti

# field with delimiter such as " " or , or :
cut -d " " -f 1 names.txt
Andhra
Arunachal
Assam
Bihar
Chhattisgarh
```

**2.1.3:**
**awk** is a scripting language used for manipulating data and generating 
reports.The awk command programming language requires no compiling, and 
allows the user to use variables, numeric functions, string functions, 
and logical operators.

Awk is a utility that enables a programmer to write tiny but 
effective programs in the form of statements that define text patterns 
that are to be searched for in each line of a document and the action 
that is to be taken when a match is found within a line. Awk is mostly used 
for pattern scanning and processing. It searches one or more files to see 
if they contain lines that matches with the specified patterns and then 
performs the associated actions. Awk is very useful when you want to do
arithmetic operations.

Here's an example:
```
cat > employee.txt
ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
amit manager account 47000
tarun peon sales 15000
deepak clerk sales 23000
sunil peon sales 13000
satvik director purchase 80000

awk '/manager/ {print}'
ajay manager account 45000
varun manager sales 50000
amit manager account 47000

awk -F: '$4 > 45000'
varun manager sales 50000
amit manager account 47000
satvik director purchase 80000
```

### 2.2 Linux Exercises
Using [the directory: 02_ubu16_vagrant](02_ubu16_vagrant) , go to the
directory and vagrant up:
```
cd 02_ubu16_vagrant
vagrant up
```
answer the following questions (some of these would be pipes):

**2.2.2:**
Read text files that have users. Also find out more about the password for 
user cyberfool. If you wanted to change cyberfool password how would you do 
this on the command line? What resource would you do to understand how to 
create a new password that complies with security standards?

**2.2.3:**
Get a list of users that have root privileges?

**2.2.4:**
Get a list of groups (other than defaults)?

**2.2.5:**
delete users that have root privileges. Why wouldn't you use a pipe for this?

**2.2.6:**
delete users that are part of a suspicious group name.

## 3.0 Linux OS Mid Term
Using [the directory: 03_mid_intro_linux](03_mid_intro_linux) , go to the
directory and vagrant up:
```
cd 03_mid_intro_linux
vagrant up
```
There are vulnerabilities with a score engine html in the vagrant user. What
score did you get?

## 4.0 Applications and Services
[SANS Cyber Acers Applications and Services Tutorial](https://tutorials.cyberaces.org/tutorials/view/1-1-5.html)

### 4.1 Linux Exercises
Using [the directory: normal_ubu16_vagrant](normal_ubu16_vagrant) , go to the
directory and vagrant up:
```
cd normal_ubu16_vagrant
vagrant up
```
answer the following questions in the Cyber Aces tutorial.  Run applications and 
services in the "safe" normal ubuntu vagrant.

## Other lessons
Each one of these is going to have exercises associated with them:

* [Files and Permissions](https://tutorials.cyberaces.org/tutorials/view/1-1-6.html)
* [Installing Software](https://tutorials.cyberaces.org/tutorials/view/1-1-7.html) 

## 6.0 List of Commands
Here is a list of commands that are being used in the above exercises:

|	command	|	options	|	use cases |	examples |
|-------|-------|-----|-------|
| cd |   | change directory | cd ../ , some_dir |
| pwd | | print work dir | pwd |
| ls | | list files and directory | ls -a, ls -Ra |
| rm | -f | remove force | |
|    | -R | recursive remove | |
| cat |   | concatenate (print) | |
| head | -n | show front of file | head -n 3 /etc/passwd | 
| tail | -n | show end of file | tail -n 3 /etc/passwd | 
| cut | -d | delimiter | cut -d: /some_dir/file |
|     |    |           | cut -d, /some_dir/file |
|     | -f | get column | cut -f1,3 /some_dir/file |
| grep | -v | get every thing except | grep -v root |
| egrep | ':0$' | get this pattern | egrep ':0$'
| awk | -F: | delimiter | awk -F: |
|     | '$1 > 123' | filter 1st column > integer | awk -F: '$1 > 123' |
|     | && | two filters with and | awk -F: '$1 >12 && $3 < 30' |

---

|[Next Topic](03_bash_scripting.md)|
|---|
