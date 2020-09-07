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

