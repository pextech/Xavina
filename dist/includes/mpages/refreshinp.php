<?php
session_start();
include '../dbcon.php';




$id=$_POST['id'];
$qty=$_POST['qty'];
$cost=$_POST['cost'];
$date=$_POST['date'];
$sdc=$_POST['sdc'];
$item=$_POST['item'];



for ($i=0; $i <count($id) ; $i++) { 
	$id_loop=$id[$i];
	$item_loop=$item[$i];
	$qty_loop=$qty[$i];
	$date_loop=$date[$i];
	$sdc_loop=$sdc[$i];
    $Quantity_loop=$cost[$i];
    $total_loop=$qty_loop * $Quantity_loop;
    $che=$_SESSION['invoiceid'];

    $sel = "SELECT * FROM items  WHERE item_name='$item_loop'";
	$selp = mysqli_query($conn,$sel) or die(mysqli_error($conn));
	$seld=mysqli_fetch_array($selp);

	$client=$seld['quantity'];
	$riy=$qty_loop + $client;




 $sqlf = "UPDATE items SET expired_date='$date_loop',sdc_n='$sdc_loop',quantity='$riy' WHERE item_name='$item_loop'";

if ($conn->query($sqlf) === TRUE) {

 $sql = "UPDATE order_status SET qty='$qty_loop',total='$total_loop',exp='$date_loop',sdc='$sdc_loop' WHERE item='$item_loop'";
//var_dump($sql);
if ($conn->query($sql) === TRUE) {

     $sqly = "UPDATE purchase SET qty='$qty_loop',total='$total_loop' WHERE item='$item_loop'";
//var_dump($sql);
if ($conn->query($sqly) === TRUE) {
    //echo "<script type='text/javascript'>alert(' $company  Successfully UPDATED ');</script>";
		echo "<script>window.location='../../../history/purchase.php?purchase_id=$che'</script>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}


}

?>