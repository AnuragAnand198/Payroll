<?php
    include('configall.php');
   

$salary=$_POST["salary"];
$jobtitle=$_POST["jobtitle"];
$sql="UPDATE `employee` SET `salary` = '$salary' WHERE `jobtitle` ='$jobtitle';";
    $test=mysqli_query($connection,$sql);
if($test)
{
    header('Location:employee.php');
    
}
else{
    echo'Failed to update salary update';
}





?>