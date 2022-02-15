# houseRantingSystemWebprojectWithJSP
There are three users in this system- Owner, Admin, and Customer. The owner is the user who owns the house and wants it to give it for rent. The owner will upload all the details of the house, including the number of rooms, locality, rent. Admin manages all the users of the system. The customer is the one who is looking for a rental house. He can search the house according to the requirements and get the results accordingly.

NAME: DEVENDRA MAHARSHI
CIA 2 PROJECT SEM-4: OOP USING JAVA (Technology used - { JSP, APACHE NETBEANS IDE, HTML, Apache Tomcat webserver } 
DUE DATE: THU JUN 24 2021 EXTENDED TO 27 JUN


new update released: Fri Jun 25 ©Devendra Maharshi

ISSUE SOLVED------------------------------------------

1)previously file path of CustomerLogin.txt and OwnerLogin.txt was taken absolue ( operating system dependent ) in following jsp files:
@Signup.jsp
@LoginCheck_customer.jsp
@LoginCheck_owner.jsp
@Adminlogin.jsp

/* 	now file path of CustomerLogin.txt and OwnerLogin.txt is only depends upon rootfolder of project Rsystem.
	readability increased by adding "mydatabase" Folder.
*/


2) remove user functionality is now availabe for Admin.


------------------------------------------------------------------



************************************************** README FOR HOUSE RENTING SYSTEM PROJECT ********************************************

//A java web project on House renting system

ABOUT THE PROJECT
//this is just a begineer level classroom project uses basic understanding of java, jsp, file handling with java, no database knowledge is required.

/* default password for ADMIN login:
USERNAME="admin" PASSWORD="Myhome"

answer of the additional secutiry questions for login to ADMINPAGE:
what is your enrolment number ="2019btcse005"
Name of your java teacher="tarun"
last 5-digits of your mobile number="67890"
answer for security Que 4 ="ice-cream"
*/

A brief about working.
---------------------------------------------------------------------------------------------

there are four hyperlink on index page.
1) 3- for three users customer,Owner,Admin
2) signup: for new users customer and owner (* not for Admin)// admin default username -password and security question are provied [see above].

after sign-in with the username and password  customer and owner login page occurs and it provides a form to enter owner and customer information.


---------------------------------------------------------------------------------------------
/*NOTE:
-> I created signup and sign-in and it is working well.
-> I created Admin login and Admin page where all the customer usernames and passwords are shown from system database ( made up by using two different text file one for customer and one for owner)/* files are shifted to "mydatabase" Folder.

---------------------------------
	missing from this project and may be updated soon.
	/*Fixed On Fri Jun 25->  delete user functionality of Admin page ( some error was occured while creating a temprary file.) */
	
	-> currently studying about the searching functionality in ownerdata files based on customer request ( ownerdata files may be a text or html file. // not created yet )
	    



