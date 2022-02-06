# Project 1 User Manual Documentation

## Purpose
The purpose of this script is to automate the process of addinng and removing users from an organization for System Administrators.

## How to use the user-admin-script (screenshots included)

- Run the script by typing the following command: sudo bash user-admin-script
- A menu will display and list options to add users or remove users from the organization
  - This screenshot displays the four different options and the results of typing the 'add-single'option
![add-single_working](https://user-images.githubusercontent.com/77516657/152672404-e7c96303-6ca3-48cf-b224-8fd06500e94f.PNG)

  - Running the 'getent group' command shows that the single user has been successfully added to the org group
![image](https://user-images.githubusercontent.com/77516657/152672478-c447a8e0-6de2-4fe1-a3ab-51aa0143e3f8.png)

  - Running 'add-single' will also output the username of and password of the user in a file called account_details.txt
![image](https://user-images.githubusercontent.com/77516657/152672781-25255e72-3125-4982-974c-651710b4ae21.png)

  - Running the 'add-bulk' command will prompt for a txt file that contains multiple usernames
    - Output from typing in a txt file that contains multiple names and pressing enter is shown
![image](https://user-images.githubusercontent.com/77516657/152672801-4425a133-cbd2-45b8-ac8a-72e5fa2eb38c.png)

  - Running the 'getent group' command shows that mutiple users have been added to the org group
![image](https://user-images.githubusercontent.com/77516657/152702493-ecc8e75b-5ad6-4407-8c0a-b71c674235c4.png)

  - Running the 'add-bulk' command will also output the username and password for each user in a file called account_details.txt
![image](https://user-images.githubusercontent.com/77516657/152702739-65cd8a98-1d10-4c9b-8fa6-d9d1de50348d.png)

  - Running 'remove-single' will remove a user from the organization
  - output from running the remove-single is shown here
![image](https://user-images.githubusercontent.com/77516657/152672871-455ac790-7009-4176-97c3-de4362155686.png)

  - Running the 'getent group' command shows that only Joe has been removed from the org group but the other users remain in org 
![image](https://user-images.githubusercontent.com/77516657/152672890-aeddba9c-1e82-4a52-985c-ee18b3f1ddb8.png)

  - Running the 'remove-bulk' command will prompt a name of a txt file to input
    - Output from running 'remove-bulk' is shown here 
![image](https://user-images.githubusercontent.com/77516657/152672927-c3dafdd3-e1fe-4b74-ae8e-eb7176a3f84d.png)

  - Running the 'getent group' command shows that the users are removed from org
![image](https://user-images.githubusercontent.com/77516657/152672942-ec1b095b-eaf6-4f99-b3b1-6b1f5de4fb1f.png)



## Objectives

- script user management for a system
  - adding / removing a single user
  - adding / removing users in bulk

## Scripting and user management

You will be writing four total functions. I have written them in order of ease of completion.  
In your repo, in the `Linux` folder, create a folder named `Project1`.  
**Challenges** are not required.  
Sample bulk files are provided:

- [short list of names](short-names.txt)
- [big list of names](names.txt)

Create a script that performs the following functions:

### add-single

- Prompt user to enter a username
- Create the user an account on the system with a password
  - Challenge (not required): randomly generate the password. `pwgen` has treated me well.
    - https://itsfoss.com/password-generators-linux/
  - Challenge (not required): if username exists, skip
- Add the user to a group `org`, for example
- Give the group permissions to the user's home directory
- Place account details (username and password) in an output file

### remove-single

- Prompt user to enter a username
- Delete the user account
- Remove the user from group

### add-bulk

- Prompt the user to enter a filename containing user names
- For each user in the file:
  - Create the user an account on the system with a password
    - Challenge (not required): randomly generate the password. `pwgen` has treated me well.
      - https://itsfoss.com/password-generators-linux/
    - Challenge (not required): if username exists, skip
  - Add the user to a group `org`, for example
  - Give the group permissions to the user's home directory
  - Place account details (username and password) in an output file

### remove-bulk

- Prompt the user to enter a filename containing user names
- For each user in the file:
  - Delete the user account
  - Remove the user from group

## Documentation

Usage guide for user creation script:

- What script does
- Screenshot demos of your script working
- How to run script
- Expected file contents (for add-bulk & remove-bulk)

## Deliverables

You should have a folder in your repo that contains:

- user administration script
- README.md

## Submission

- In the Pilot Dropbox, paste the URL to your submission
  - URL should look like: https://github.com/WSU-kduncan/ceg2410-YOURGITHUBUSERNAME/blob/main/Linux/Project1

## Resources

- [linuxize - bash functions](https://linuxize.com/post/bash-functions/)
- [Loop Through the Lines of a File: Bash For Loop Explained](https://codefather.tech/blog/bash-loop-through-lines-file/)
