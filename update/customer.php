<div class="modal fade" id="Supplierup<?php echo $id; ?>" tabindex="-1" role="dialog" aria-labelledby="myMediulModalLabel">
            <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <div class="modal-header">
                           <h4 class="modal-title" id="myModalLabel2">Update <?php echo $fullname; ?></h4>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                         
                        </div>
                        <div class="modal-body">
                         <form name="custoup"  action = "../dist/includes/mpages/customerup.php" method="post" enctype="multipart/form-data"> 
                           
                  <input type="hidden" name="id" value="<?php echo $id; ?>">
               
                  <label>Supplier Name</label>
                <input type="text" name = "Supplier" class="form-control" value="<?php echo $fullname; ?>">
                  <br/>
                 <label for="subject">phone number</label>
                <input type="number" name = "phone" class="form-control" value="<?php echo $phone; ?>">
                  <br/>
                  <label for="subject">Email</label>
                <input type="email" name = "Email" class="form-control" value="<?php echo $email; ?>">
                  <br/>
                  <label for="subject">National Id</label>
                <input type="text" name = "Location" class="form-control" value="<?php echo $nid; ?>">
                  <br/>
                      
             <a href="#" onclick="document.forms['custoup'].submit(); return false;">
              <button  name = "update" class="btn btn-primary">Save Information</button></a>
            </form>
            </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                      </div>
                    </div>
        </div>