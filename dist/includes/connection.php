<?php

$conn = mysqli_connect("localhost","root","","wivine");

if(! $conn)

{

  echo" error". mysqli_error();

 }
 
 else{

   echo"connected";

}

?>