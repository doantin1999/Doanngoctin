<?php
	require_once("login_pro.php");
		if (isset($_POST["btn_submit"])) {
  			//lấy thông tin từ các form bằng phương thức POST
  			$email = $_POST["email"];
  			$password1 = $_POST["password1"];
  			$password = $_POST["password"];
  			$regex0="/^\S*(?=\S{8,32})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$/";
  	
 if($email == ""){
	echo "Vui lòng nhập Email";
	return false;
}
else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
echo "Email không hợp lệ!";
return false;
}
  			  else if ($password1 == "") {
				   echo "Vui lòng nhập mật khẩu";
				   return false;
  			}
 else if(!preg_match($regex0, $password1)){
echo "Mật khẩu không đúng theo yêu cầu!";
return false;
}
else if($password == ""){
	echo "Vui lòng nhập xác nhập mật khẩu";
	return false;
}
else if($_POST["password1"] != $_POST["password"]){
echo "Mật khẩu không khớp!";
return false;
}
  			else{
	    				$sql = "UPDATE loginstudent SET password='$password' WHERE email='$email' 
	    					";
					    // thực thi câu $sql với biến conn lấy từ file connection.php
   						mysqli_query($conn,$sql);
   						header('Location:index.php');
				   		echo "Đổi mật khẩu thành công";
				   		return true;								    
					
			  }
	}
	?>
	<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>QUÊN MẬT KHẨU</title>
		  <title>PHP and MySQL - Login with Google Account Example</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="mycss.css" rel="stylesheet">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="GOOGLE_SIGNIN_CLIENT_ID" >
	</head>
	<body style=" 
  background-size: cover;color: white;">
	<div class="panel-body" style="background:#0099ff;color: white; padding: 15px;width: 500px; height:100%;margin-top: 50px; margin-left: 450px;">
	 <form action="update.php" method="post">               
                     <div class="form-group">
                    <input type="text" class="form-control" placeholder="Email" name="email" required autofocus />
                </div>
                <div class="form-group">
                    <input type="password" id="myInput" class="form-control" placeholder="Mật khẩu" name="password1" required />
                    <p>Yêu cầu mật khẩu mạnh(8-32 ký tự, a-z, A-Z, 0-9, và ký tự đặt biệt)</p>
                     <label class="checkbox">
                    <input type="checkbox" onclick="myFunction()" />
                   Hiển thị mật khẩu
                </label>
                </div>
                <div class="form-group">
                    <input type="password" id="myInput1" class="form-control" placeholder="Xác nhận mật khẩu" name="password" required />
                     <label class="checkbox">
                    <input type="checkbox" onclick="myFunction1()" />
                   Hiển thị mật khẩu
                </label>
                </div>
                <button class="btn btn-lg btn-block purple-bg" type="submit" name="btn_submit">
                    Xác nhập</button>
                </form>
            </div>
            	<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script>
function myFunction1() {
  var x = document.getElementById("myInput1");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
	</body>
	</html>