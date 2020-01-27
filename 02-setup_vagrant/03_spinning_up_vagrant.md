|[Return to TOC](00-Table-of-Contents.md)|
|---|

---

# Spinning up a Vagrant
We are going to use Vagrant as a way to have a portable instance of an 
OS that has vulnerabilities. These Vagrant files will be used to make a 
virtual OS for practice to idenify and patch vulnerabilities. In this first
lesson we are going to spin up and down two Vagrant images:

* Windows 10 desktop
* Ubuntu 16 desktop

## Vagrant commands
We use vagrant on the terminal. So the first thing to do is to go to 
a terminal on your computer. 

* with Windows you've installed Git, so on your menu find the Git terminal 
application
* with Mac OS in your search find the terminal application
* with Linux find your terminal application (in Ubunutu its Ctrl-Alt-T)

With any application such as vagrant you have certain commands to use in the 
application. 
```
# vagrant help - this will give you a list of commands for use
vagrant -h
vagrant --help

# vagrant version
vagrant -v
vagrant --version

# the main commands are:
# up - this is the most important command, this is how you create a vagrant machine
vagrant up

# suspend - this suspends the vagrant machine rather than shutting down or destroying it
# we will talk more on this below
vagrant suspend

# halt
vagrant halt

# destroy
vagrant destroy
```

## Windows 10 Desktop Using Vagrant
Once your on the terminal you need to change directory to where you put the
Pegasus LMS repository. Once there you need to go to the 02-setup_vagrant
directory. For our first lesson we are going to spin up a Windows 10 virtual 
image using Vagrant. In this directory you need to change directory to the 
win10_vagrant directory. Once there then:
```
vagrant up
```

What does this do? This will create the Windows 10 desktop image in your
virtualbox. You will see a new machine in your virtualbox manager that
will show the name: win10_vagrant_default_16778788 (it will have a list of
numbers at the end of the images name. You will also see in your terminal
a lot of instructions scrolling in the terminal. Once the image is created
you will see a window pop-up and see a windows OS forming inside the
window. Once the image is done, you can go into the window and start using
windows. If you need to login you can use:

* user: vagrant
* password: vagrant

When you are done you can go into Virtualbox and power down the image. You could
also use the command (this will saves the exact point-in-time state of the machine, so that when you resume it later, it begins running immediately from that point, rather than doing a full boot).
```
vagrant suspend
```

Once you are done with the image and want to delete the image you can do this 
one of two ways:

* in the terminal: 'vagrant destroy' (you have to halt or suspend the image first)
* right click in Virtualbox and delete the image. 

Once you have downloaded Vagrant and Vitualbox. We are now going to demonstrate
how to spin up a Windows 10 desktop using Vagrant.

## Ubuntu 16 using vagrant
The procedure is the same to get an Ubuntu 16 image. All you need to do is
in the terminal go to the ubu16_vagrant directory and:
```
vagrant up
```

The same instructions apply to suspend, halt and destory for this image too.

## Next steps
So go and experiment and try to spin up both a Windows and Ubuntu image using
vagrant. Remember that vagant and virtualbox take memory, so only spin up
one image at a time make sure to spin down once your done.

---

|---|
