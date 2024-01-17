<?php
	$conn = new mysqli("localhost","k13c05a033","tin","quanlybanhang");
	if($conn->connect_error){
		die("Connection Failed!".$conn->connect_error);
	}
?>