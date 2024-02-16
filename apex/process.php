<?php
// Connect to MySQL database
$conn = mysqli_connect('localhost', 'root', '', 'ecomm');

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}


// Get form data
if(isset($_POST['apexh'])){
$cpu = $_POST['cpu'];
$gpu = $_POST['gpu'];
$storage = $_POST['storage'];
$ram = $_POST['ram'];
$motherboard = $_POST['motherboard'];
$psu = $_POST['psu'];
$cabinet = $_POST['cabinet'];

if($cpu==''or  $gpu=''or $storage==''or
$ram=''or  $motherboard
=''or  $psu=''or $cabinet=''){
echo"<script>aleart('please fill all available fields')<script>";
exit();
}else{
//insret query

$process="insert into `components`(cpu,gpu,storage,ram,motherboard,psu,cabinet) 
values('$cpu','$gpu','$storage',
'$ram',' $motherboard','$psu','$cabinet')";

$result_query=mysqli_query($con,$process);
if($result_query){
        echo"<script>aleart('successfully inserted product')<script>";


}
}
}


// Insert data into database
// $sql = "INSERT INTO components (cpu, gpu, storage, ram, motherboard, psu, cabinet) VALUES ('$cpu', '$gpu', '$storage', '$ram', '$motherboard', '$psu', '$cabinet')";

// if (mysqli_query($conn, $sql)) {  
//   echo "New record created successfully";
// } else {
//   echo "Error: " . $sql . "<br>" . mysqli_error($conn);
// }

// Close MySQL connection
// mysqli_close($conn);

?>