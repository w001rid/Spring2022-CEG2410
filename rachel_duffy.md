One of the vulnerabilities I have performed in past coding projects would be CWE-798 the use of hard coded credentials. \
I was in a freshman coding class using the Visual Bssic Programming language. Our task was to make a login screen that \
displays the message 'your account has been locked' if the password is mistyped 3 timess. At that point good prograaming style \
had not been emphasized yet. I don't remember the specific password but I do remember that I had typed a specific combintion of \
letters and numbers and if it wasn't that code the counter for incorrect passwords would increase by one. 

The CWE-798 states that hard coded credentials is a critical weakness. Essentially this means that a program that has a preset username \
and or password is a vulnerability. This is a critical vunlerability because if a bad attacker were to figure out what that preset username \
and password is, they would be able to explloit the software. Expoloiting the software could have multiple negative consequences for a company \
such as money being stolen or trade secrets being lossed and leaked to other compeitros or another country.

I could have fixed this error in my code by instead of setting a preset password, give the user an option to create their \
own credentials. If a user creates their own credentials, that would give the software a unique password for each user. This would be \
much harder for a bad actor to guess or obtain a crendtials due to the variability of credentials. Also if I absolutley needed to have \
credentials hard coded, an option would be to restrict access to only those who need the software. I woud need to code in some checks and \
or validation in my code to confirm that only spedific users have access to this software. 
