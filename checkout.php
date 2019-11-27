<?php
require_once("config.php");
$conn = mysqli_connect($a,$b,$c,$d);
$gmail=$_COOKIE["user"];
$status=1;
$time=time();
$query = $conn->prepare("SELECT * from entered WHERE Email=? and status=?");
$query->bind_param("si",$gmail,$status);
$query->execute();
$result=$query->get_result();
if($result->num_rows==0)
{
	echo "<script>"."window.alert('You need to check in first');"."</script>";
	header("Resfresh:1,url=Entry Management System.html"); 
}
else
{
	
	$status=0;
	$query=$conn->prepare("UPDATE entered SET Check_out=?,status=? WHERE Email=?");
	$query->bind_param("iis",$time,$status,$gmail);
	$query->execute();
	$query=$conn->prepare("SELECT * from entered WHERE Email=?");
	$query->bind_param("s",$gmail);
	$query->execute();
	$result=$query->get_result();
	$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
	$checkin=$row["Check_in"];
	$checkout=$row["Check_out"];
	$ci=date('d-m-Y H:i:s', $checkin);
	$co=date('d-m-Y H:i:s', $checkout);
	$host=$row["Host_name"];
	 $to = $gmail;
          $subject = "Acknowledgement";
          $text = "Your details of visit is as follows User Name:".$gname."Host Name".$host."Phone:".$gphone."Checkin".$ci."Checkout".$co;
          $headers = "MIME-Version: 1.0" . "\r\n";
          $headers = "Content-type:text/html;charset=UTF-8" . "\r\n";
          $headers = "From: deepvyas2016@gmail.com" . "\r\n";
          if(mail($to,$subject,$text,$headers))
            {
			   echo "<script>"."window.alert('Thank you for visiting.');"."</script>";
	          // echo"Enjoy the visit.";
            }
			header("Resfresh:1,url=Entry Management System.html"); 
	SETCOOKIE("user","",time()-3600);
}
?>	