<?php
 include('configall.php');

$absence=$_POST["absence"];
$loan_cut=0;
$pfund_cut=0;
$overtime=$_POST["overtime"];
$sbonus=$_POST["sbonus"];
$medi_allow=0;
$house_allow=0;
$month=$_POST["month"];
$year=$_POST["year"];
$empid=$_POST["empid"];
$obonus=$_POST["obonus"];
$total=0;
       $sql="SELECT Employee_id,Name,Email,salary,jobtitle,loan,b_accno,pfund FROM `employee`WHERE Employee_id=$empid;";
       $result=mysqli_query($connection,$sql);
       $row=mysqli_fetch_array($result);
       
     $name=$row['Name'];
     $acc=$row['b_accno'];
     $medi_allow = $row['salary']*0.03;
     $house_allow = $row['salary']*0.08;
      $loan_cut = $row['loan']*0.05;
      $up_loan=$row['loan']-$loan_cut;
      
      $pfund_cut = $row['salary']*0.025;
      $gain = $overtime*300+$sbonus+$obonus+$row['salary']+$medi_allow+$house_allow;
      $cut = $loan_cut+$absence*200+$pfund_cut;
      $total = $gain-$cut;
$up_fund=$row['pfund']+$pfund_cut;

$sql2="INSERT INTO `payment` (`pay_no`, `emp_id`, `name` ,`accno`, `year`, `month`, `absence`, `loan_cut`, `pfund_cut`, `overtime`, `season_bonus`, `other_bonus`, `medi_allow`, `house_allow`, `total_pay`) VALUES (NULL, '$empid','$name','$acc', '$year', '$month', '$absence*200', '$loan_cut', '$pfund_cut', '$overtime*300', '$sbonus', '$obonus', '$medi_allow', '$house_allow', '$total');";
$sql_uploan="UPDATE `employee` SET `loan` = '$up_loan',`pfund` = '$up_fund' WHERE `employee`.`Employee_id` = $empid;";
       
       $done=mysqli_query($connection,$sql2);
       $update=mysqli_query($connection,$sql_uploan);

     if($done)
     {
         echo 'Successfully inserted payment data';
         header('Location: employee.php');
         
     }
     else{
         echo 'Failed to insert payment data';
     }
 

 
 

?>