<?Php
$host_name = "localhost";
$database = "quanlybanhang"; // Change your database name
$username = "k13c05a033";          // Your database user id 
$password = "tin";          // Your password

//error_reporting(0);// With this no error reporting will be there
//////// Do not Edit below /////////

$connection1 = mysqli_connect($host_name, $username, $password, $database);

if (!$connection1) {
    echo "Error: Unable to connect to MySQL.<br>";
    echo "<br>Debugging errno: " . mysqli_connect_errno();
    echo "<br>Debugging error: " . mysqli_connect_error();
    exit;
}
?>