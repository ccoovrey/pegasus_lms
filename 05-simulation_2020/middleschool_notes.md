# Middle School list of simulation vulnerabilities

## Mid-August 2020 

For this first set of vulnerabilities we have a windows and a linux
vagrant. Middle school will look at these vagrants. In this sprint, we have two vagrants:

* [mid-aug 2020 linux vagrant: found in mid-aug-2020/middleschool/mid_lnx_midaug_vagrant](mid-aug-2020/middleschool/mid_lnx_midaug_vagrant)
* [mid-aug 2020 windows vagrant: found in mid-aug-2020/middleschool/mid_win_midaug_vagrant](mid-aug-2020/middleschool/mid_win_midaug_vagrant)

### Scenario
User vagrant (password vagrant) is a user account to be able to interface
with each vagrant. Each of the vagrants have the following users and group that 
are valid:

* user odin is root or admin
* user thor is non-root or non-admin
* group valhalla is a valid group

The following types of vulnerabilities are in these vagrants:

* user auditing
* policy violation: malware

## Sep 2020
In this sprint, we have one windows vagrant:

* [sep 2020 windows vagrant: found in fh-sep-2020/win_sep_vagrant](fh-sep-2020/win_sep_vagrant)

### Scenario
You are now the new IT Security Cadet on the USS Enterprise. There is reason to believe this computer does not have the standard configuration and security settings and it is your job to review the system and fix.
For security reasons, only Cpt Kirk, Science Officer Spock, and the local admin account should have permissions on this computer above a normal user. All passwords and security requirements should match established standards you learned in training.

A recent security bulletin forbid:

* Star Fleet personnel from using SSH and Telnet clients on workstations.
* running websites FTP servers from local workstations. Ensure no
websites or FTP servers are hosted from Windows 10 computers
* Remote Access to workstations

