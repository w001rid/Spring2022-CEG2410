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

## Project 1

- given messy user list, parse to emails, parse to usernames

### Project 2

- from usernames, create an account for each user
  - each user gets a home directory
  - each user is added to group org
  - org is group for each home directory
  - passwords?
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
  - https://sendgrid.com/blog/what-is-an-smtp-server/
  - https://www.hostinger.com/tutorials/how-to-install-and-setup-mail-server-on-ubuntu/
  - https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-20-04
  - https://www.linuxbabe.com/mail-server/setup-basic-postfix-mail-sever-ubuntu
- cron to send email
  - plus script to gather import info

## In-Class

- AWS system
- Try sendgrid as smtp server
- script to gather system info (raid status, utilization, etc)
- have cron send script
- https://docs.sendgrid.com/for-developers/sending-email/getting-started-smtp#before-you-begin
- https://docs.sendgrid.com/for-developers/sending-email/integrating-with-the-smtp-api
- Fall back plan: https://www.techrepublic.com/blog/it-security/use-ssmtp-to-send-e-mail-simply-and-securely/
- Is it this easy? https://serverfault.com/questions/691033/how-to-send-an-e-mail-after-a-cron-job

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
  - https://vettabase.com/blog/a-checklist-for-database-backup-automation/
  - https://www.adyen.com/blog/updating-a-50-terabyte-postgresql-database
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
  - https://www.thelazyadministrator.com/2022/01/11/powershell-game-you-can-compete-with-people-online-feature-update-to-pswordle/
- AD essentials
  - https://theitbros.com/active-directory-organizational-unit-ou/amp/
  - domains
  - exchange?
  - certification management
    - https://www.harmj0y.net/blog/activedirectory/certified-pre-owned/
- Windows Server vs not
- group policies
  - managing sudo / admin & groups
  - regedit
- https://4sysops.com/archives/perform-active-directory-security-assessment-using-powershell/
- Azure
  - https://www.altaro.com/ebook/Azure-IaaS.php?LP=ITProTuesday-Banner-ebook-Azure-IaaS-SE&Cat=Blog&ALP=eBook-ebook-Azure-IaaS-SE-ITProTuesday&utm_source=ITProTuesday&utm_medium=content&utm_campaign=ebook-Azure-IaaS-SE&utm_content=ITProTuesday&utm_contentid=desktop

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
  - https://www.fortinet.com/blog/threat-research/cve-2021-42278-cve-2021-42287-from-user-to-domain-admin-60-seconds
  - https://www.bleepingcomputer.com/news/security/new-sysjoker-backdoor-targets-windows-macos-and-linux/amp/?amp_gsa=1&amp_js_v=a6&usqp=mq331AQIKAGwASCAAgM%3D#amp_tf=From%20%251%24s&aoh=16419621888349&csi=1&referrer=https%3A%2F%2Fwww.google.com&ampshare=https%3A%2F%2Fwww.bleepingcomputer.com%2Fnews%2Fsecurity%2Fnew-sysjoker-backdoor-targets-windows-macos-and-linux%2F
  - https://blogs.vmware.com/security/2021/12/investigating-cve-2021-44228-log4shell-vulnerability.html
- dashboards
  - Grafana?
- reverse telnet - https://www.tek-tips.com/faqs.cfm?fid=1312

# Automation

- terraform
  - https://github.com/cloudposse/terraform-aws-components
  - https://github.com/cogini/multi-env-deploy/tree/master/terraform
- jenkins
- ansible
  - https://github.com/davestephens/ansible-nas

# virtualization, containers, & the cloud

- virtual machines
  - basics
  - pros & cons
- containers
  - basics
- on-prem vs the cloud
  - https://stop.lying.cloud/

# Fun

- https://github.com/mkrl/misbrands
