# Basic skills:

- git & GitHub
  - documentation
  - markdown basics
- using the terminal
- SSH

# Users:

- setting yourself up on a system
- user permissions & access control
- creating a user
- parsing text files
  - regex
  - grep, sed, awk
- creating bulk users & scripting 101
  - variables
  - functions
- directory services
  - LDAP
  - AD
  - joining domains

## In-class

- create customization script
  - wget / curl a custom color package for vim
  - set up vim to use it

## Project

- given messy user list, parse to emails, parse to usernames

### Part A

- from usernames, create an account for each user
  - each user gets a home directory
  - each user is added to group org
  - org is group for each home directory
  - passwords?

## Project

- add functions for:
  - create single user
  - remove single user
  - remove all users

# Networking:

- hostnames
- IP & MAC
- routing
- DNS
- firewalls
- RDP
- DHCP
- SSL certificates & HTTPS
- Exchange? / setup email server
- configuring email from server
- cron to send email
  - plus script to gather import info

## In-Class

- AWS system
- Try sendgrid as smtp server
- script to gather system info (raid status, utilization, etc)
- have cron send script

## Project

- AWS system
- install apache or NGINX
  - "custom" index.html
- configure to use HTTPS
- create self-signed cert OR TLS certificates from Let’s Encrypt

# Storage:

- format disk
- create / manage RAID
- network file sharing
  - NFS
  - samba
  - cloud storage (S3, glacial)
- databases
  - create
  - backup / restore
  - cloud databases (RDS)
- data backups
  - scope
  - rules to play by
  - backing up databases
  - restoration & testing

## In-class

- setup database
- accounts
- backup & restore

## Project

- AWS system
- 3 x 2 GB storage partitions
- setup RAID - up to one drive failure acceptable (2, 3, 5)
- setup NFS OR **samba**
  - https://www.linuxbabe.com/ubuntu/install-samba-server-file-share
  - https://linuxize.com/post/how-to-install-and-configure-an-nfs-server-on-ubuntu-20-04/

# Windows management

- powershell essentials
  - scripting in powershell
- AD essentials
  - domains
  - exchange?
- Windows Server vs not
- group policies
  - managing sudo / admin & groups
  - regedit

## In-class

- setup OU, add user(s) to groups

## Project

- AWS - create an AD server
- join machine(s) to AD domain

# System management

- system builds (hardware) and servers
- cloning
- deployment
  - setting first run / on boot
- logging & audits
- security & patches
  - CVEs
  - getting notified
  - deploying fixes
- dashboards
  - Grafana?

# virtualization, containers, & the cloud

- virtual machines
  - basics
  - pros & cons
- containers
  - basics
- on-prem vs the cloud
