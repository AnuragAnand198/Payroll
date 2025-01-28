<?php
  define('db_server','localhost');
  define('db_username','root');
  define('db_password','');
  define('db_database','payroll');
  $connection=mysqli_connect(db_server,db_username,db_password,db_database);

  if($connection){
      echo"Succeccfully connected to database <br>";
  }
else{
    echo"Failed to connect to database";
   }
   $empid=$_POST["empid"];
   
$sql="DELETE FROM `employee` WHERE Employee_id='$empid';";

if($connection->query($sql)===TRUE)
{
    echo "successfully inserted into database";
}
else{
    echo "somthing is wrong";
}


?>