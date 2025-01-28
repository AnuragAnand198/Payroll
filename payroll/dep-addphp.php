<?php
  include('configall.php');


   $depid=$_POST["depid"];
   $depname=$_POST["depname"];
   
$sql="INSERT INTO `department` (`Depart_id`, `Depart_name`) VALUES ('$depid', '$depname')";
$test=mysqli_query($connection,$sql);
if($test)
{
    echo "successfully inserted into database";
    header('Location: department.php');
}
else{
    echo "somthing is wrong";
}




?>