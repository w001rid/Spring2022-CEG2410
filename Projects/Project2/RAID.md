# Project 2

## Project Setup

For this project you need access to your AWS console. [Return to here and click "Start Lab"](https://awsacademy.instructure.com/courses/13276/modules/items/1137826). **Once the icon next to "AWS" is green, click "AWS" to open the console.**

Create volumes in AWS as dicussed in class. 3 volumes of 4GB each is a good starting point - modify based on the type of RAID array you implement for the project.

In the Linux folder, a file named `RAID.md` in your GitHub Classrooms repo. This project is mostly documentation, so you are welcome to work wherever you are comfortable. I would float towards VSCode myself.

## Part 1 - craft a RAID

Craft a RAID that can recover from a minimum of one disk failure.

In `RAID.md` document:

- RAID type choosen
Raid0
- Summary of pros and cons for type chosen
Pros: Data replicationand access is faster because data is split between both drives
Cons: There is no redundancy so if one drive fails the whole raid fails
- Command to build array
sudo mdadm --create --verbose /dev/md/raid0 --level=0 --raid-devices=3 /dev/xvdh  /dev/xvdi  /dev/xvdj

## Part 2 - get info

Verify that your RAID is created and all disks are healthy

In `RAID.md` document:

- command(s) to check RAID status
sudo mdadm --query --detail /dev/md/raid0
- screenshot of what it looks like
- How to read the output of the command(s)

## Part 3 - mount to directory

Mount your RAID to a logical folder. For example, in class we discussed `/mnt` or creating a `/share` directory

In `RAID.md` document:

- command(s) to create a filesystem and `mount` RAID device to a folder
- verifying the RAID device is mounted
  - what commands can prove it

## Part 4 - break it

Pretend that one of the disks has been behaving oddly, so needs to be replaced. Mark the disk of your choosing as `fail`ing and safely `remove` it from the RAID device configuration.

In `RAID.md` document:

- command to mark a disk as failing
- command to remove failing disk with mdadm
- effect on RAID device

## Part 5 - rebuild it

In `AWS` in the `Volume` management menu, create a new volume (4 GB) and attach it to your instance.

Repair the RAID array using the new device.

In `RAID.md` document:

- command to `add` new device to RAID
- verifying that the RAID device is being rebuilt
  - what commands can prove it
- screenshot result of rebuilt RAID array

## Submission

- In the Pilot Dropbox, paste the URL to your submission
  - URL should look like: https://github.com/WSU-kduncan/ceg2410-YOURGITHUBUSERNAME/blob/main/Linux/RAID.md

## Rubric

[Rubric](Rubric.md)

## Resources

If you guys share resources via Discord, I'll try to remmeber to add them here. Here's one to get started:

- [digitalocean - how to manage RAID arrays with mdadm](https://www.digitalocean.com/community/tutorials/how-to-manage-raid-arrays-with-mdadm-on-ubuntu-16-04)

## Common Problems:

- Where did `/dev/md0` go?
  - After a reboot, the array may now be called `md127` It still works, all is still well.
