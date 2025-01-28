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
   $name=$_POST["name"];
   $dob=$_POST["dob"];
$gender=$_POST["gender"];
$sdate=$_POST["sdate"];
$email=$_POST["email"];
$phone=$_POST["phone"];
$loan=$_POST["loan"];
$pfund=$_POST["pfund"];
$salary=$_POST["salary"];
$jobtitle=$_POST["jobtitle"];
$address=$_POST["address"];
$depid=$_POST["depid"];
$manid=$_POST["manid"];
$bacc=$_POST["bacc"];
$sql="Insert into employee (Employee_id,Name,Address,Phone_no,Email,Start_date,d_birth,gender,loan,pfund,salary,jobtitle,Depart_id,managesDepart_id,b_accno)values('$empid','$name','$address','$phone','$email','$sdate','$dob','$gender','$loan','$pfund','$salary','$jobtitle','$depid','$manid','$bacc');";

if($connection->query($sql)===TRUE)
{
    echo "successfully inserted into database";
}
else{
    echo "somthing is wrong";
}


?>