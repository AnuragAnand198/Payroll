<?php
  define('db_server','localhost');
  define('db_username','root');
  define('db_password','');
  define('db_database','ourcuet_dotdb1');
  $connection=mysqli_connect(db_server,db_username,db_password,db_database);
  if($connection){
      echo"Succeccfully connected to database <br>";
  }
else{
    echo"Failed to connect to database";
   }
?>