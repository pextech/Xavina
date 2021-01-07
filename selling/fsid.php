<table  border="0px" width="350px">
        
                                   
                                    <tbody>
                                       <?php
include("../config/index.php");
  $stmt = $DB_con->prepare("SELECT * FROM payment WHERE status='pending' AND invoice='$invoice' ORDER BY id");
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      
      
      ?>
    
                                   
                                        <tr>
          <td><?=$pay_type; ?></td>
          <td><?=$paid; ?></td>
          <td><?=$status; ?></td>
          <td><a class="btn btn-danger" href="?pay_id=<?=$id ?>" title="click for delete" onclick="return confirm('Are you sure to remove <?=$fullname; ?>?')"><div class="icon-circle bg-red"><i class="zmdi zmdi-delete"></i></div></a></td>
                                        </tr>
                                      <?php
    }
    
  
  }
  ?>
                                    </tbody>
                                </table>


        
             

   
<br>

  
               

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