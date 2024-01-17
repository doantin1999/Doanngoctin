<?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$database="quanlybanhang";
$conn = new mysqli($servername, $username,$password , $database);
if (!$conn) {
echo"Kết nối thành công";
exit();
}
return $conn;
?>