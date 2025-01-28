<?php
include('emp-payslipphp.php');


if($result)
{
    header('location:employee-payslipshow.php');
  }
  else{echo'failed to load';};
?>