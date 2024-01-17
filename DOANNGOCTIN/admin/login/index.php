<?php
session_start();
?>
<?php
    //Gọi file connection.php ở bài trước
require_once ('login_pro.php');
    // Kiểm tra nếu người dùng đã ân nút đăng nhập thì mới xử lý
    if (isset($_POST["btn_submit"])) {
        // lấy thông tin người dùng
        $email = $_POST["email"];
        $password = $_POST["password"];
        //làm sạch thông tin, xóa bỏ các tag html, ký tự đặc biệt 
        //mà người dùng cố tình thêm vào để tấn công theo phương thức sql injection
        $email = strip_tags($email);
        $email = addslashes($email);
        $password = strip_tags($password);
        $password = addslashes($password);
        if ($email == "" || $password =="") {
            echo "Username hoặc password bạn không được để trống!";
        }else{
            $sql = "select * from login where email ='$email' and password ='$password'";
            $query = mysqli_query($conn,$sql);
            $num_rows = mysqli_num_rows($query);
            if ($num_rows==0) {
                echo "Tên đăng nhập hoặc mật khẩu không đúng !";
            }else{
                //tiến hành lưu tên đăng nhập vào session để tiện xử lý sau này
                $_SESSION['email'] = $email;
                // Thực thi hành động sau khi lưu thông tin vào session
                // ở đây mình tiến hành chuyển hướng trang web tới một trang gọi là index.php
                header('Location:../category/');
            }
        }
    }
?>
<?php
if (isset($_POST["btn_register"])) {
    header('Location:register.php');
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>ĐĂNG NHẬP</title>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="mycss.css" rel="stylesheet">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name="google-signin-client_id" content="GOOGLE_SIGNIN_CLIENT_ID" >
</head>
<body>
     <div class="panel-body" style="background:#0099ff;color: white; padding: 15px;width: 500px; height:400px;margin-top: 50px; margin-left: 450px;">
<div class="container">
    <div class="row">
            <div class="account-box">
                <form method="POST" action="index.php">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Email" name="email" required autofocus />
                </div>
                <div class="form-group">
                    <input type="password" id="myInput" class="form-control" placeholder="Mật khẩu" name="password" required />
                </div>
                <label class="checkbox">
                    <input type="checkbox" onclick="myFunction()" />
                   Hiển thị mật khẩu
                </label>
                <button class="btn btn-lg btn-block purple-bg" type="submit" name="btn_submit">
                    Đăng nhập</button>
                </form>
                <a class="forgotLnk" href="update.php" style="color: white;">Quên mật khẩu</a>
                <div class="or-box" style="text-align: center;">
                    <span class="or">Hoặc</span>
                    <div class="row">
                        <div class="col-md-12">
                            <center><div class="g-signin2" data-onsuccess="onSignIn"></div></center>
                        </div>
                    </div>
                </div>
                <br>
                <div class="or-box row-block">
                    <div class="row">
                        <div class="col-md-12 row-block">
                            <a href="home.php" class="btn btn-primary btn-block">Đăng ký</a>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
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
</body>
</html>