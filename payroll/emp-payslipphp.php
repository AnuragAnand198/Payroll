<?php
include('configall.php');

   $month=$_POST['month'];
   $year=$_POST['year'];
   if($month)
   {
       $sql="SELECT pay_no,emp_id,name,accno,total_pay FROM `payment` WHERE month='$month' AND year='$year';";
       $result=mysqli_query($connection,$sql);
      /*while($row=mysqli_fetch_array($result)) {
          echo $row['pay_no'];
    echo $row['emp_id'];

   echo $row['name'];
   echo $row['accno'];
    echo $row['total_pay'];
      }*/
   }
?>