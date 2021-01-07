<?php
session_start();
include '../dbcon.php';




$id=$_POST['id'];

$qty=$_POST['qty'];

$res=$_POST['reason'];

$cost=$_POST['igicro'];



for ($i=0; $i <count($id) ; $i++) { 
	$id_loop=$id[$i];
	$qty_loop=$qty[$i];
	$cost_loop=$cost[$i];
    $total=$qty_loop * $cost_loop; 
    //var_dump($cost_loop);



$sql = "UPDATE adjust SET qty='$qty_loop',total='$total',reason='$res' WHERE id='$id_loop'";
//var_dump($sql);
if ($conn->query($sql) === TRUE) {
    //echo "<script type='text/javascript'>alert(' $company  Successfully UPDATED ');</script>";
		echo "<script>window.location='../../../adjust/'</script>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

}

?>