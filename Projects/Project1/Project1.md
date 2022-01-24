# Project 1

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
