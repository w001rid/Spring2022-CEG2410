# Project 3

- [Set Up HTTP](#Set-Up-HTTP)
- [Get Certified](#Get-Certified)
- [Set Up HTTPS](#Set-Up-HTTPS)
- [Submission](#Submission)
- [Rubric](Rubric.md)

For this project you need access to your AWS console. [Return to here and click "Start Lab"](https://awsacademy.instructure.com/courses/13276/modules/items/1137826). **Once the icon next to "AWS" is green, click "AWS" to open the console.**

In the `Linux` folder, create a file named `HTTPS.md` in your GitHub Classrooms repo. This project is mostly documentation of what you are implementing, so you are welcome to work wherever you are comfortable. I would float towards VSCode myself.

Don't forget to cite your sources at the end. Links to sites you used is sufficient.

## Part 1 - Set Up HTTP

1. Pick a service that serves content over HTTP on install it on your AWS instance. Recommended:

   - Apache
   - NGINX

2. Replace the default content with content of your own.

   - website you made in another class
   - scrap HTML page. Not looking for special here

3. Document:

   - what service you installed & how
      - I installed apache with `sudo apt install apache2`
   - what port it serves content over
      - It should server content over port 8 since it is serving content over http
   - where site content exists
     - any special configurations you did
       - changed permissions?
         - I did not
       - changed default locations for where content is served?
         - I also did not need to change defult locations. I replaced the index file in /var/www/html/ with my own custom file
   - **screenshot** of your content being served (default content will not get credit)
   ![image](https://user-images.githubusercontent.com/77516657/159597197-b13f3ba1-2b53-4a41-9753-d73f8171d574.png)


## Part 2 - Get Certified

1. Generate a certificate. Recommended:
   - OpenSSL
   - Let's Encrypt / Certbot (this option might not work since we don't have a domain name)
2. Place the certificate on your HTTP content server
   - You may need to "read ahead" of your documentation for using HTTPS with your HTTP content service
3. Document:
   - How to generate a certificate
   - Location for certs on system
   - Any file permissions that need to be noted for the cert

## Part 3 - Set Up HTTPS

- ~~Paint the rest of the horse~~

1. Enable the service to use HTTPS
   - this is more of an apache note, but may apply to nginx
2. Use your service's configuration files to configure:

   - the location of the public and private files of the certificate
   - serving content over HTTPS
   - redirect HTTP requests to HTTPS

3. Document:
   - Enabling the service to use HTTPS
   - Configuration changes to set:
     - the location of the public and private files of the certificate
     - serving content over HTTPS
     - redirect HTTP requests to HTTPS
   - Restarting the service after the config changes
   - Proving that the changes work
     - Think, "What are you doing to test?"
   - **screenshot** of site working with HTTPS

## Submission

- In the Pilot Dropbox, paste the URL to your submission
  - URL should look like: https://github.com/WSU-kduncan/ceg2410-YOURGITHUBUSERNAME/blob/main/Linux/HTTPS.md

## Things to Check

- Check your Security Group rules
  - make sure the right ports are open from the right places
