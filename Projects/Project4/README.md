# Project 4



## Setup AD DC

- Configuring a Windows Server to be a Domain Controller
  - Outline of basic steps, resource(s) used: I used Kel
- Domain Name: ad.duffy.org
- Domain Controller Name: DC01
- Domain DNS IP: 

## AD Structure

### Create OUs

Create the following Organizational Units - Provide screenshot proof:

- `[Domain] Computers` - client / user machines
  - `Conference` - publicly accessible kiosks and presentation devices
  - `Secure` - machines for HR and finance users
  - `Workstations` - machines for devs and engineers
- `[Domain] Servers` - servers for org (data shares, repo hosts, HPCs)
- `[Domain] Users`
  - `Finance` - can log on to Secure computers, managed by hr_finance_admins group
  - `HR` - can log on to Secure computers, managed by hr_finance_admins group
  - `Engineers` - can log on to Workstations, managed by dev_eng_admins
  - `Developers` - can log on to Workstations, managed by dev_eng_admins
  ![image](https://user-images.githubusercontent.com/77516657/164873019-3239d6f8-155b-46d4-b537-f4ceb33dadd4.png)


### Joining Computers

Create another Windows Server instance in AWS on your VPC. Write the steps needed to join the Windows Server to the Domain in the `[Domain] Computers` OU. Provide screenshot proof of success.

![image](https://user-images.githubusercontent.com/77516657/164874129-23603fd9-d3c3-4cda-9290-37cd699b88e0.png)
![image](https://user-images.githubusercontent.com/77516657/164874139-9d7be012-a5ae-4d9b-9c18-ccc56ead67f1.png)
![image](https://user-images.githubusercontent.com/77516657/164874291-08a4f17a-d451-45bc-91d4-0b2ef888c933.png)

I could not get my secondary server to connect to my domain. I used the private IP address of my DNS server\
and confirmed the subnet IDs were the same for both servers but I still could not get the other server to\
connect tothe domain.


### Creating Groups

Create the following Security Groups and define where they should be within the OUs based on their roles:

- `project_repos_RW` - users who have Read / Write access to project repositories
  - Should be in the Developer OU for developers to be able to access the repos they need.
- `finance_RW` - users who have Read / Write access to finance share
  - Should be in the Finance OU so Finance people can view Finance things
- `onboarding_R` - users who have Read access to onboarding documents
  - Onboarding is usuall an HR process, so let HR OU contain this security group
- `server_access` - users who can log on to Servers
  - Traditionally in my experience, only domain admins have server access like the DCs or Exchange Servers and such
- `dev_eng_admins` - IT admins to handle Developer and Engineer accounts
  - I would also out this in domain admins since these are IT admins
- `hr_finance_admins` - IT admins to handle HR and finance accounts
  - I would also out this in domain admins since these are IT admins
- `remote_workstation` - Group of workstations that allow RDP connections
  -  Domain computers OU so you can spefify what computers on the domain can have RDP access

## OUs & GPOs

### Applying Group Policies

Find guides to create the following Group Policy Objects and specify where they should be applied.

- Lock out Workstations after 15 minutes of inactivity.
  - https://social.technet.microsoft.com/Forums/windows/en-US/d76b1123-3ad5-4dec-8bf1-36d8412b51a7/lock-out-screen-after-inactivity-windows-10?forum=win10itprosecurity 
- Prevent execution of programs on computers in Secure OU
  -  https://www.urtech.ca/2019/07/solved-gpo-to-block-software-by-file-name-path-hash-or-certificate/
- Disable Guest account login to computers in Secure OU
  - https://techexpert.tips/windows/gpo-disable-guest-account/
- Allow server_access to sign on to Servers
  - https://www.lepide.com/how-to/assign-permissions-to-files-folders-through-group-policy.html
- Set Desktop background for Conference computers to company logo.
  -  https://www.technig.com/change-desktop-background-with-group-policy/
- Allow users in `remote_workstation` group to RDP to Workstations
  -  https://docs.microsoft.com/en-us/answers/questions/370650/group-policy-entry-to-allow-remote-administration.html


### Managing OUs

Join at least one person to the `hr_finance_admins` and `eng_dev_admins` groups, respectively. Delegate control of the OUs corresponding to the appropriate admin groups.

Document how to delagate control of an OU to a group, which OUs they now delegate, and what permissions they were given (and why you think the scope is appropriate)
- Right click the OU then left click Delegate control.
- Choose the group you want to give permissions to thendesignate the permissions you want to give to that group
- Finance people should have read access to Finance data since it is their department
- Engineering admins should be able to change accesses and groups within their OU So they can manage their own projects and assign people to those projects


Just an FYI I have not completed some of the tasks in this project just because I was involved in a car accident recently.\
Life just got in the way so this was all I could submit.
