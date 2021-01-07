<?php
session_start();
include('../dbcon.php');


$user=$_SESSION['own'];
/*----------------------*/

    if (!isset($_POST['Barcode']) || !isset($_POST['Name']) || !isset($_POST['unt'])|| !isset($_POST['taxe'])|| !isset($_POST['stock'])|| !isset($_POST['price'])|| !isset($_POST['cost'])|| !isset($_POST['measured'])|| !isset($_POST['categorieso'])|| !isset($_POST['Lot']))
    {
        echo "<script type='text/javascript'>alert('!You have to Fill All Table');</script>";
       // echo "<script>window.location='../../../items/'</script>";
    } else {



/*----------------------*/

echo $Barcode=$_POST['Barcode'];
echo $Name=$_POST['Name'];
echo $unt=$_POST['unt'];
echo $taxe=$_POST['taxe'];
echo $stock=$_POST['stock'];
echo $price=$_POST['price'];
echo $cost=$_POST['cost'];
//$supplier=$_POST['supplier'];
echo $measurede=$_POST['measured'];
echo $categories=$_POST['categorieso'];
echo $Lote=$_POST['Lot'];
/*----------------------*/




}

    
?>