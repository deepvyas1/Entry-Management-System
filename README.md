This is a Web Based Entry Management System.
This system works as follows:
1.First of all, on the landing page named "Entry Management system" will appear 
2. Guest need to enter his/her detials such as : Name,Email and Phone number and then press on "Next".
3.Now the guest need to enter the detials of the host same as guest and click on submit.
4. This will trigger an email to the host with detials of the guest
5 Now when the guest will leave, he/she can click on "Checkout"
6 An email with all the details of the guest such as :-Name,Email,Phone Number,Check in and Check out time will be sent to the guest.

Approach:
1.First of all, the guest will enter the detials in Entry Management System.html and press "Next".
2.After that guest will enter host details and press "Submit" 
3.Now a file named "entry.php" will be called which include all instructions to insert the details in database
4.Database conatin a table named "entered" that has following fields : id(Primary Key),Name,Email,Phone,Host_name,Host_phone,Host_email
  ,Check_in time,Check_out time and status.
5. Currently status of respective user will be "1" which means "Checked in".
6. When the user will checkout status become "0" and Checkout time will be recorded and email will be sent to the guest.

 Files included:
 1.HTML File:Entry Management System.html. 
 2. PHP File:entry.php and checkout.php.
 3. SQL File: entry_management.sql that contains structure of database.
 
 
In this system the technologies used are:-
Frontend Technologies: HTML,CSS,Javascript.
Backend Technologies: PHP and SQL
Server : mySQL
Database : phpmyadmin

In this repository, all the frontend pages ie HTML files are uploaded as well as
the backend files ie PHP files are also uploaded.
There is one SQL file that contain the structure of the database.