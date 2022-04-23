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
  - dg
- `finance_RW` - users who have Read / Write access to finance share
  - 
- `onboarding_R` - users who have Read access to onboarding documents
- `server_access` - users who can log on to Servers
- `dev_eng_admins` - IT admins to handle Developer and Engineer accounts
- `hr_finance_admins` - IT admins to handle HR and finance accounts
- `remote_workstation` - Group of workstations that allow RDP connections

## OUs & GPOs

### Applying Group Policies

Find guides to create the following Group Policy Objects and specify where they should be applied.

- Lock out Workstations after 15 minutes of inactivity.
- Prevent execution of programs on computers in Secure OU
- Disable Guest account login to computers in Secure OU
- Allow server_access to sign on to Servers
- Set Desktop background for Conference computers to company logo.
- Allow users in `remote_workstation` group to RDP to Workstations

**Extra Credit (10%)** Create and apply one of these policies, and show proof it worked.

- The Windows Server you joined to the domain can serve as a good dummy here

### Managing OUs

More people are joining the IT/ administration side of things. Note: you can promote from within or create some new users

Join at least one person to the `hr_finance_admins` and `eng_dev_admins` groups, respectively. Delegate control of the OUs corresponding to the appropriate admin groups.

Document how to delagate control of an OU to a group, which OUs they now delegate, and what permissions they were given (and why you think the scope is appropriate)

- Resources
- https://theitbros.com/active-directory-organizational-unit-ou/

## Submission

- In the Pilot Dropbox, paste the URL to your submission
  - URL should look like: https://github.com/WSU-kduncan/ceg2410-YOURGITHUBUSERNAME/blob/main/Windows
  - Contents should include:
    - `README.md`
    - csv file(s)
    - PowerShell script(s)
