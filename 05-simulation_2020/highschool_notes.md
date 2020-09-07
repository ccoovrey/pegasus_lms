# High School list of simulation vulnerabilities

## Mid-August 2020 

For this first set of vulnerabilities we have a windows and a linux
vagrant. High school will look at these vagrants. In this sprint, we have two vagrants:

* [mid-aug 2020 linux vagrant: found in mid-aug-2020/highschool/hs_lnx_midaug_vagrant](mid-aug-2020/highschool/hs_lnx_midaug_vagrant)
* [mid-aug 2020 windows vagrant: found in mid-aug-2020/highschool/hs_win_midaug_vagrant](mid-aug-2020/highschool/hs_win_midaug_vagrant)

### Scenario
User vagrant (password vagrant) is a user account to be able to interface
with each vagrant. Each of the vagrants have the following users and group that 
are valid:

* user r2d2 is root or admin
* user c3p0 is non-root or non-admin
* group yoda is a valid group

The following types of vulnerabilities are in these vagrants:

* user auditing
* policy violation: malware

