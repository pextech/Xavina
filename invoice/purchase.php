<?php include('../dist/includes/dbcon.php');
session_start();
$invoice=$_SESSION['invoice'];
 ?>

<?php

include('header.php')
?>

<table>
  <tr>
    
      <td>
        <b style="font-size: 300%;width: 130%;"><?php echo $name;?></b> 
      </td>
    
  </tr>
    <tr>
      <td>
    <h6>City: <?php echo $kgl;?></h6></td>
    </tr>
    <tr>
    </tr>
    <tr>
      <td>
    <h6>sector:<?php echo $sector;?></h6></td>
    </tr>
    <tr>
      <td>
    <h6>Tin:<?php echo $Tin;?></h6></td>
    </tr>
    <tr>
      <td>
    <h6>Phone number:<?php echo $phone;?></h6></td>
    </tr>
     </table>  
     --------------------------------------------------     
         <img src="<?php echo (!empty($prc['logo'])) ? '../images/'.$prc['logo'] : '../images/logd.png'; ?>" style="width: 22%;height: 17%;margin-left: 77%;margin-top: -19%;"><br>
         <br>
         <?php 
         $thre=mysqli_query($conn,"SELECT order_id FROM purchase  WHERE stock_status='out'  AND order_id='$invoice'");
         $proct=mysqli_fetch_array($thre);
         //var_dump($proct);
          ?>
         <h5 style="background-color: #b3cbff;color: black;border-radius: 2px;padding: 5px;"><center><b>  Purchase order <div style="margin-left: 547px;"><?php echo $proct['order_id'];  ?></div> </b></center></h5>

         <br>
        <table id="example1" class="table table-bordered table-striped" border="1" width="100%">
                        <tr>
                         
                   <th bgcolor="#cbc9c9" color="black">Date</th>
                  <th bgcolor="#cbc9c9" color="black">Barcode</th>
                   <th bgcolor="#cbc9c9" color="black">Item</th>
                   <th bgcolor="#cbc9c9" color="black">Unit</th>
                   <th bgcolor="#cbc9c9" color="black">Price</th>
                   <th bgcolor="#cbc9c9" color="black">Qty</th>
                   <th bgcolor="#cbc9c9" color="black">Total</th>
                </tr>
       
      
                    
                    <tbody>
 <?php
     //include("db_conection.php");
         $results = mysqli_query($conn,"SELECT * FROM purchase WHERE stock_status='out'  AND order_id='$invoice' ORDER BY id DESC");
     while($row = mysqli_fetch_array($results)) { 
        $pid=$row['item'];
        $coste=$row['cost'];
      ?>
        
                <tr>
                  
                   <?php
          $Item= mysqli_query($conn,"SELECT * FROM items WHERE item_name='$pid' AND price='$coste'");
          $disp=mysqli_fetch_array($Item);
          $nme=$disp['item_name'];
          $bar=$disp['barcode'];
          $unit=$disp['unit'];
          $priz=$disp['price'];
          
           ?>
           <td>
    <?php echo $row['done_date']; ?>
             
           </td>
                 
                 <td>
    <?php echo $bar; ?>
    </td>
    <td>
    <?php echo $nme; ?>
    </td>
    <td>
    <?php echo $unit; ?>
      
    </td>
    <td>
    <?php echo $priz; ?>
    </td>
    <td>
    <?php echo $row['qty']; ?>
    </td>
    <td >
    <?php echo number_format($row['qty']*$priz); ?>
    </td>
         
                </tr>
 <?php
    }
     include("config.php");
      $stmt_edit = $DB_con->prepare("select sum(total) as totalx from purchase  WHERE stock_status='out'  AND order_id='$invoice' ");
         $id=$row['id'];
    $stmt_edit->execute(array(':id'=>$id));
    $edit_row = $stmt_edit->fetch(PDO::FETCH_ASSOC);
    extract($edit_row);
    
    echo "<tr>";
    echo "<td colspan='6' align='right'>Total:";
    echo "</td>";
    
    echo "<td> ". number_format($totalx);
    echo "</td>";
?>
               
              

 


 
      
              </tbody>
                    <tfoot>
          
                  
       
        </tfoot>
       </table>

        <br>
           <div style="margin-left: 167%;">

         <?php
                               $check = "SELECT customer FROM purchase where order_id='$invoice'";
                            $result = mysqli_query($conn, $check);
                           $row = mysqli_fetch_assoc($result);
                           if( $row["customer"] == null){ 
                            $nm=$row["customer"];
                                ?>
                                Client Tin : <br>
                               Client Name : <br>
                               <?php
                        }
                           else{
                            ?>
                             Client Name :<font size="2px"> <?php echo $row["customer"];?></font><br>
                               Client Tin : <?php 
                               $nm=$row["customer"];
                              $tio = "SELECT tin FROM supplier where name='$nm'";
                            $tino = mysqli_query($conn, $tio);
                           $tin = mysqli_fetch_assoc($tino);
                           echo $tin["tin"];;
                                ?><br>
                              
                            <?php
                           }

                             ?>
                            
 </div>             


                    <?php
       
include("../mpdf60/mpdf.php");
//$mpdf=new mPDF('A4', 'landscape'); 
$mpdf = new mPDF(); $stylesheet = file_get_contents('../mpdf60/pdf.css'); $mpdf->WriteHTML($stylesheet,1);
$mpdf->SetDisplayMode('fullpage');
//$mpdf->AddPage("L");

// LOAD a stylesheet
$stylesheet = file_get_contents('../mpdf60/mpdfstyletables.css');
$mpdf->WriteHTML($stylesheet,1);  // The parameter 1 tells that this is css/style only and no body/html/text
$report_content=ob_get_contents();
ob_clean();

$mpdf->WriteHTML($report_content,2);
$mpdf->Output('purchase','I');
exit; 
?>
     