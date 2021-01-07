<?php 
session_start();
include('../dbcon.php');
	$username = $_POST['cate'];
	$insurances = $_POST['insurance'];
	$done=$_SESSION['own'];

	mysqli_query($conn,"INSERT INTO insurances
		(percentage,insu_name,done) 
		VALUES
		('$username','$insurances', '$done')")
		or die(mysqli_error($conn));  
			echo "<script type='text/javascript'>alert('$insurances Successfully Saved!');</script>";
			echo "<script>window.location='../../../setting/'</script>";  
	


?>