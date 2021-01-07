<?php 
session_start();
include('../dbcon.php');


	$invoiceq = $_POST['invoice'];
	$insurances = $_POST['insura'];
	$ins_pya = $_POST['ins_py'];
	$payte = $_POST['payt'];
	$cst_py = $_POST['cst_py'];
	$statuso="ordered";
	$done=$_SESSION['own'];



	mysqli_query($conn,"INSERT INTO payment
		(insurance,insu_pay,invoice,paid,pay_type,status,done) 
		VALUES
		('$insurances','$ins_pya','$invoiceq','$cst_py','$payte','$statuso' '$done')")
		or die(mysqli_error($conn));  
			echo "<script type='text/javascript'>alert('$invoiceq Successfully Saved!');</script>";
			echo "<script>window.location='../../../setting/'</script>";  
	


?>