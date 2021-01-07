<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Receiving</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="zmdi zmdi-home"></i> <?php include('../dist/includes/head.php');?></a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Receiving</a></li>
                        <li class="breadcrumb-item active">Stock In</li>
                    </ul>
                     <br>
                    <div class="col-md-12">
                         <button class="btn btn-sm btn-success" ><a href="../invoice/receivingex.php" target="_blank"><font color="white"><b> Export Excel</b> </font></a></button>

                         <button class="btn btn-sm btn-success" ><a href="#" data-toggle="modal" data-target="#receiving "><font color="white"><b> Today Order </b></font></a></button>

                         <button class="btn btn-sm btn-success" ><a href="#" data-toggle="modal" data-target="#Purchase "><font color="white"><b> Display Purchase Orders </b></font></a></button>
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
                            <h2><strong>Receiving</strong> basket</h2>
                            <ul class="header-dropdown">
                                <li class="dropdown"> <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="zmdi zmdi-more"></i> </a>
                                    <ul class="dropdown-menu dropdown-menu-right">
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
                            <div class="row clearfix">

                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input type="text" onkeyup="showResult(this.value)" class="form-control" placeholder="Find or Scan Item" autofocus>
                                        <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">