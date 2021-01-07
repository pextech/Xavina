<!-- Start of Query part or section -->
  <?php

      $ber ="select sum(qty) from order_status where stock_status='out' and sale_status='pending' AND order_id='$invoice'";
                 $berq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $berqeqt=mysqli_fetch_array($berq);
                 $berqef = $berqeqt['sum(qty)'];
         
         $ber ="select count(id) from order_status where stock_status='out' and sale_status='pending' AND order_id='$invoice'";
                 $countq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $countpr=mysqli_fetch_array($countq);
                 $countprf = $countpr['count(id)'];
       ?>

      <?php

      $ber ="select sum(total) from order_status where stock_status='out' and sale_status='pending' AND order_id='$invoice'";
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


      $ber ="select sum(total) from order_status where stock_status='out' and sale_status='pending' AND order_id='$invoice'";
                 $berq = mysqli_query($conn,$ber) or die(mysqli_error($conn));
                 $berqe=mysqli_fetch_array($berq);
                 $berqef = $berqe['sum(total)'];
                 $_SESSION['total']=$berqef;

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
                      $_SESSION['insurance']=$insumd;
                      
                  ?>  
                <a href="" data-toggle="modal" data-target="#insurance<?php echo $_SESSION['insurance']; ?>">
                  <button class="btn btn-sm btn-success" ><font color="white"><b> <?php echo $prc['insu_name'];?> </b> </font></button></a>


                  <?php }?>
</div>