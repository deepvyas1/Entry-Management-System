<?php
require_once("config.php");
$conn=mysqli_connect($a,$b,$c,$d);
$gname=$_POST["Name"];
$gmail=$_POST["Email"];
$gphone=$_POST["phone"];
$hname=$_POST["hname"];
$hemail=$_POST["hemail"];
$hphone=$_POST["hphone"];
$status=1;
$time=time();
$query=$conn->prepare("SELECT * from entered WHERE email=? and status=?");
$query->bind_param("si",$gmail,$status);
$query->execute();
$result=$query->get_result();
if($result->num_rows==0)
{
	$query=$conn->prepare("INSERT into entered(Name,Email,Phone,Host_name,Host_email,Host_phone,Check_in,status) values(?,?,?,?,?,?,?,?)");
	$query->bind_param("ssissiii",$gname,$gmail,$gphone,$hname,$hemail,$hphone,$time,$status);
	$query->execute();
	$cookie="user";
	SETCOOKIE($cookie,$gmail);
	
	 $to = $hemail;
          $subject = "Acknowledgement";
          $text = "User Name:".$gname."Email".$gmail."Phone:".$gphone."has entred in the campus";
          $headers = "MIME-Version: 1.0" . "\r\n";
          $headers = "Content-type:text/html;charset=UTF-8" . "\r\n";
          $headers = "From: deepvyas2016@gmail.com" . "\r\n";
          if(mail($to,$subject,$text,$headers))
            {
			   echo "<script>"."window.alert('Thank you for applying.');"."</script>";
	           echo"Enjoy the visit.";
            }
			header("Resfresh:1,url=Entry Management System.html"); 
}
else
{
	echo "<script>"."window.alert('You are already checked in');"."</script>";
}
?>
