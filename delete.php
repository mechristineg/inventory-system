<?php
include("connect.php");
  $sql = "DELETE from main_table where BARCODE = ".$_GET['BARCODE'];
  if(mysqli_query($connect, $sql))
  {
  	header('Location: index.php');
  } else
  {
  	echo "Error: " .mysqli_error($connect);
  }

?>
