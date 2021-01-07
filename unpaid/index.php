
<!doctype html>
<html class="no-js " lang="en">
   <?php include'../header/header.php'; ?>
<body class="theme-blush">

<!-- Page Loader -->
<?php
if (isset($_GET['delete_id'])) {
$id = $_GET['delete_id'];
//$edit_state = true;
mysqli_query($conn,"DELETE FROM order_status WHERE id='$id'");
//$record = mysqli_fetch_array($rec);
echo "<script>window.location='../selling/'</script>";
}
if (isset($_GET['delete_allid'])) {
$id = $_GET['delete_allid'];
//$edit_state = true;
mysqli_query($conn,"DELETE FROM order_status WHERE order_id='$id'");
//$record = mysqli_fetch_array($rec);
echo "<script>window.location='../selling/'</script>";
}
?>
 <script>
function showResult(str)
{
if (str.length==0)
  { 
  document.getElementById("livesearch").innerHTML="";
  document.getElementById("txtHint").innerHTML="";
  
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("livesearch").innerHTML=xmlhttp.responseText;
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    document.getElementById("livesearch").style.border="1px solid #A5ACB2";
    }
  }
xmlhttp.open("GET","search.php?q="+str,true);
xmlhttp.send();
}
</script>
<script>
function showcustomer(str)
{
if (str.length==0)
  { 
  document.getElementById("livesearch").innerHTML="";
  document.getElementById("txtHint").innerHTML="";
  
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("showcustomer").innerHTML=xmlhttp.responseText;
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    document.getElementById("showcustomer").style.border="1px solid #A5ACB2";
    }
  }
xmlhttp.open("GET","customer.php?q="+str,true);
xmlhttp.send();
}
</script>
<?php include '../link/link.php'; ?>

<?php include'../link/theme.php'; ?>
<?php
if (isset($_GET['inv_id'])) {
  //session_start();
  $invo=$_GET['inv_id'];
  $_SESSION['invoiceid']=$invo;
  $invoiceunp=$_SESSION['invoiceid'];
 ?>
<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Selling</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Selling</a></li>
                        <li class="breadcrumb-item active">Stock out</li>
                    </ul>
                     <br>
                    <div class="col-md-2">
     <button class="btn btn-sm btn-success" ><a href="#" data-toggle="modal" data-target="#pending"> Pending Invoices</a></button>
   </div>
                  
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

     
     <!-- Multi Column -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>selling</strong> basket</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li><a href="javascript:void(0);">Action</a></li>
                                        <li><a href="javascript:void(0);">Another action</a></li>
                                        <li><a href="javascript:void(0);">Something else</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>

                        <div class="body">
                            <div class="row clearfix">

                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input type="text" onkeyup="showResult(this.value)" class="form-control" placeholder="Find or Scan Item" autofocus>
                                        <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
        <div id="livesearch"></div>
        <table class="table" ui-jq="footable" cellspacing="pixels">
        <thead>
          <tr>
            <th   data-breakpoints="xs"><font color="black">Delete</font></th>
            <th ><font color="black">Barcode</font></th>
            <th ><font color="black">Name</font></th>
            <th ><font color="black">Cost</font></th>
            <th  data-breakpoints="xs"><font color="black">Quantity</font></th> 
            <th ><font color="black">Total</font></th>
            <th ><font color="black">Update</font></th>
          </tr>
        </thead>
         <tbody bgcolor="white" style="overflow-y: auto;max-height: 325px;min-width: 665px;">
         <?php 

         include("../config/index.php");



//$invoice=$_SESSION['invoice'];
  $stmt = $DB_con->prepare("SELECT * FROM order_status WHERE stock_status='out'  AND order_id='$invoiceunp' ORDER BY id DESC");
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);

          ?>
          <form name="refreshd" action="../dist/includes/mpages/refresh.php" method="POST">
          <tr>
            <input type="hidden" name="id[]" value="<?=$id; ?>">
          <td><a class="btn btn-danger"  href="?delete_id=<?= $id ?>" title="click for delete" onclick="return confirm('Are you sure to remove <?php echo $item; ?>?')"><div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div></a></td>
           <td>
            <input type="hidden" name="barcode[]" value="<?=$barcode; ?>">
            <?=$barcode; ?>
              
            </td>
           <td>
             <input type="hidden" name="item[]" value="<?=$item; ?>">
            <?=$item; ?>
              
            </td>
           <td>
              <input type="hidden" name="cost[]" value="<?=$cost; ?>">
            <?=number_format($cost); ?>
              
            </td>
           <td><input type="text" name="qty[]" size="5" value="<?=$qty; ?>"></td>
           <td>
             <input type="hidden" name="total[]" value="<?=$total; ?>">
            <?=number_format($total); ?>
              
            </td>
           <td><a href="#" onclick="document.forms['refreshd'].submit(); return false;"><button class="btn btn-primary" ><div ><i class="ti-exchange-vertical"></i></div></button></a></td>
           </tr>
           </form>
          <?php
    }
    
  
  }
  else
  {
    ?>
    
      
        <div class="col-xs-12">
          <div class="alert alert-warning">
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No item Found  in Cart...
            </div>
        </div>
        <?php
  }
  
?>

        </tbody>
      </table>
                        </div>
                  </div>
                  </div>
                </div>
                                    </div>
                                </div>
                                   <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Items Details" readonly>
                                        <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                          <center>  ---------------------------------------------------</center><br>

                            <?php

                            $check = "SELECT customer FROM order_status where order_id='$invoiceunp'";
                            $result = mysqli_query($conn, $check);
                           $row = mysqli_fetch_assoc($result);
                           if( $row["customer"] == null){
   //run this code        ?>
                                Customer 
<button class="btn btn-sm btn-success" ><a href="#" data-toggle="modal" data-target="#customer"> New Customers</a></button>
  </header>
  <div  role="alert" >
          <input type="text" onkeyup="showcustomer(this.value)" class="form-control" style="color: black;" placeholder="search by Name Or Phone " aria-describedby="basic-addon2">
          <div id="showcustomer"></div><br>
            </div>
                          <?php
                           }
                           else{
                            ?>
                              <input type="text" class="form-control" value="<?php echo $row["customer"]; ?>" readonly>
                            <?php
                           }

                             ?>



                             <!-- Start of Query part or section -->
  <?php

      $ber ="select sum(qty) from order_status where stock_status='out' AND order_id='$invoiceunp'";
                 $berq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $berqeqt=mysqli_fetch_array($berq);
                 $berqef = $berqeqt['sum(qty)'];
         
         $ber ="select count(id) from order_status where stock_status='out' and sale_status='pending' AND order_id='$invoiceunp'";
                 $countq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $countpr=mysqli_fetch_array($countq);
                 $countprf = $countpr['count(id)'];
       ?>

      <?php

      $ber ="select sum(total) from order_status where stock_status='out'  AND order_id='$invoiceunp'";
                 $berq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $berqe=mysqli_fetch_array($berq);

                  $setname= mysqli_query($conn,"SELECT taxes FROM setting");
         $namme=mysqli_fetch_array($setname);
         $prep=$namme['taxes'];
                 $berqef = $berqe['sum(total)'];
                 $taxe=($berqef * 100/118)*18/100;
                
                 
                 //$taxe=$cals/100;

       ?>

        <?php


      $ber ="select sum(total) from order_status where stock_status='out'  AND order_id='$invoiceunp'";
                 $berq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $berqe=mysqli_fetch_array($berq);
                 $berqef = $berqe['sum(total)'];
                 $_SESSION['totali']=$berqef;

       ?>
<!-- End of Query part or section -->
<center>  ---------------------------------------------------</center><br>


<table  style="width: 300px;">
  <th>
    <tr>
      <td></td>
      <td></td>
    </tr>
  </th>
  <tbody >
    <tr>
      <td>Quantity of <?=number_format($countpr['count(id)']); ?> Items:</td>
      <td><?=number_format($berqeqt['sum(qty)']); ?></td>
    </tr>
    <tr>
      <td>Taxes to pay:</td>
      <td><?=number_format($taxe); ?></td>
    </tr>
    <tr>
      <td>Total:</td>
      <td><?=number_format($berqe['sum(total)']); ?></td>
    </tr>
  </tbody>
</table>
<br> 
<style type="text/css">
  .insu{
    width: 273px;
height: 171px;
    border: 2px solid black;
  }
</style>
<div class="insu">
<center><b>INSURANCES</b></center>

     <?php 
                             
                    $sel=mysqli_query($conn,"select * from insurances  ORDER BY id ASC")or die(mysqli_error($conn));
                    while ($prc=mysqli_fetch_array($sel)){
                      $id=$prc['id'];
                      $insumd=$prc['insu_name'];
                      $_SESSION['insurancei']=$insumd;
                      
                  ?>  
                <a href="#" data-toggle="modal" data-target="#insurancei<?php echo $_SESSION['insurance']; ?>">
                  <button class="btn btn-sm btn-success" ><font color="white"><b> <?php echo $prc['insu_name'];?> </b> </font></button></a>


                  <?php }?>
</div>
               

                        </div>
                      </div>
                    </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>





</div>
</section>
<?php } ?>
<?php include'../fjs/index.php'; ?>
<?php include'../fjs/other.php'; ?>
</body>
</html>



 <div class="modal fade bd-example-modal-lg" id="insurancei<?php echo $_SESSION['insurance']; ?>" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel">
            <div class="modal-dialog modal-lg" >
                      <div class="modal-content">
                        <div class="modal-header">
                           <h4 class="modal-title" id="myModalLabel2"> <center> Payment Method </center></h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                         
                        </div>
                        <div class="modal-body">
                        <div class="col-md-12">
                          <form name="payun" action="../dist/includes/mpages/unppaym.php" method="POST">
                            <center>
                          <input type="text" name="insura" value="<?php echo $_SESSION['insurance']; ?>" style="text-align: center;"  readonly></center>
                          <div class="row">
                            <?php 
                            $invoice=$invoiceunp; 
                             $berqef=$_SESSION['totali'];
                            $okay= $_SESSION['insurancei'];


 $tota ="select * from insurances where insu_name='$okay' ";
$prc = mysqli_query($conn,$tota) or die(mysqli_error($conn));
$dpl=mysqli_fetch_array($prc);
 $ans = $dpl['percentage'];
 $calx=  $berqef*$ans;
 $final= $calx/100;
 $cust= $berqef - $final;



                            ?>
                            <input type="text" name="invoice" value="<?php echo $invoice ?>" class="pull-right" style="text-align: center;">
                            <div style="margin-left: 350px;">
                              
                            <input class="pull-left" type="text" name="ins_py" value="<?php echo $final; ?>" style="text-align: center;"></div>
                          </div>
                          <br>
                          <br>
                          <div class="row">
                            
                            <select name="payt" style="background-color: white;color: black;" required>
    <option></option>  
<?php
$query3=mysqli_query($conn,'SELECT * FROM pmethod')or die(mysqli_error($conn));
while($row3=mysqli_fetch_array($query3)){

?>
<option value="<?= $row3['method'];?>"><?= $row3['method'];?></option>
<?php 

}
?>
</select>
                            <div style="margin-left: 300px;">
                              
                            <input class="pull-left" type="text" name="cst_py" value="<?php echo $cust ?>" style="text-align: center;">
                          </div>
                          </div>

                         

                        </div>
                           </div>
                        <div class="modal-footer">
 <center>
                          <button class="btn btn-sm btn-primary" ><a href="../pay/gusubika.php?pending_id=<?= $invoice ?>" title="click for delete" onclick="return confirm('Are you sure to make this Pending <?php echo $invoice; ?>  ?')"><font color="white"><b> Pending</b> </font></font></a></button>       
     <button class="btn btn-sm btn-success" ><a href="pay.php" onclick="document.forms['payun'].submit(); return false;"><font color="white"><b> Pay </b> </font></a></button>
     
             </form>               
     <button class="btn btn-sm btn-info" ><a href="../invoice/invoice.php" target="_blank"><font color="white"><b> Print </b> </font></a></button>
     <button class="btn btn-sm btn-danger" ><a  href="?delete_allid=<?= $invoice ?>" title="click for delete" onclick="return confirm('Are you sure to Cancel <?php echo $invoice; ?>?')"><font color="white"><b> Cancel</b> </font></a></button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
     
   </center>
                        </div>
                       
                      </div>
                    </div>
        </div>