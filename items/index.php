<!doctype html>
<html class="no-js " lang="en">
   <?php include'../header/header.php'; ?>
<body class="theme-blush">


<!-- Page Loader -->
<?php
if (isset($_GET['delete_id'])) {
$id = $_GET['delete_id'];
//$edit_state = true;
mysqli_query($conn,"DELETE FROM items WHERE id='$id'");
//$record = mysqli_fetch_array($rec);
echo "<script>window.location='../items/'</script>";
}
?>

<?php include '../link/link.php'; ?>

<?php include'../link/theme.php'; ?>

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Stock Items</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Items</a></li>
                        <li class="breadcrumb-item active">Stock Items</li>
                    </ul>
                    <br>
                    <div class="row">
                    <div class="col-md-12">
                      <div class="row">
     <button class="btn btn-sm btn-success" ><a href="#" data-toggle="modal" data-target="#itmes"><font color="white"><b> New Items</b></font></a></button>

     <button class="btn btn-sm btn-success" ><a href="../invoice/items.php" target="_blank"><font color="white"><b>Print</b></font></a></button>
     <button class="btn btn-sm btn-success" ><a href="../invoice/itemsex.php" target="_blank"><font color="white"><b> Export Excel</b></font></a></button>
     </div>
   </div>
 </div>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

     


<!-- Exportable Table -->
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2><strong>Stock</strong> Items </h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right slideUp">
                                        <li><a href="../Items">Items</a></li>
                                        <li><a href="../purchase">Purchase</a></li>
                                        <li><a href="../receiving">Receiving</a></li>
                                        <li><a href="../Inventory">Inventory</a></li>
                                        <li><a href="#">Distribution</a></li>
                                        <li><a href="../Situation">Stock Situation</a></li>
                                    </ul>
                                </li>
                                <li class="remove">
                                    <a role="button" class="boxs-close"><i class="zmdi zmdi-close"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                    <thead>
                                        <tr>
            <th>Barcode</th>
            <th>Item_name</th>
            <th>Price</th>
            <th>Cost</th>
            <th>Unit</th>
            <th>Measure</th>
            <th>Categories</th>
            <th>Lot</th>
            <th>Taxes</th>
            <th>Stock</th>
            <th>Actions</th>
          </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
            <th>Barcode</th>
            <th>Item_name</th>
            <th>Price</th>
            <th>Cost</th>
            <th>Unit</th>
            <th>Measure</th>
            <th>Categories</th>
            <th>Lot</th>
            <th>Taxes</th>
            <th>Stock</th>
            <th>Actions</th>
          </tr>
                                    </tfoot>
                                    <tbody>
                                    	<?php
include("../config/index.php");
  $stmt = $DB_con->prepare('SELECT * FROM items ORDER BY id');
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      
      
      ?>
                                        <tr>
          <td><?=$barcode; ?></td>
          <td><?=$item_name; ?></td>
          <td><?=$price; ?></td>
          <td><?=$cost; ?></td>
          <td><?=$unit; ?></td>
          <td><?=$measure; ?></td>
          <td><?=$category; ?></td>
          <td><?=$lot; ?></td>
          <td><?=$taxes; ?></td>
          <td><?=$stock; ?></td>
          <td><a class="btn btn-info" href="#" data-toggle="modal" data-target="#Supplierup<?=$id ?>"> <div class="icon-circle bg-green"><i class="zmdi zmdi-edit"></i></div></a>&nbsp;&nbsp;<a class="btn btn-danger" href="?delete_id=<?=$id ?>" title="click for delete" onclick="return confirm('Are you sure to remove <?=$item_name; ?>?')"><div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div></a></td>
          
          <?php include '../update/items.php'; ?>
                                        </tr>
                                       <?php
    }
    
  
  }
  else
  {
    ?>
    
      
        <div class="col-xs-12">
          <div class="alert alert-warning">
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No Items Found ...
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
</section>

<?php include'../fjs/index.php'; ?>
<?php include'../fjs/other.php'; ?>
<script src="../assets/js/jquery-dynamic-form.js"></script>
   <script>
$(document).ready(function()
{ 
$("#in").dynamicForm("#inplus", "#inminus", {limit:50, createColor: 'yellow',removeColor: 'red'});
$("#other").dynamicForm("#otherplus", "#otherminus", {limit:50, createColor: 'yellow',removeColor: 'red'});
});
</script>
</body>
</html>