	<html>
	<head>
		<title>Register</title>
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
		<?php
	require_once("sign.php");
	$id = $name=$email =$date=$gender=$address =$phone= $image =$class=$subjects=$subjects1=$subjects2=$school=$password ='';
		if (isset($_POST["btn_submit1"])) {
  			//lấy thông tin từ các form bằng phương thức POST
  			$position_id = $_POST["position_id"];	
  			 $name = $_POST["name"];
  			$email = $_POST["email"];
  			$date = $_POST["date"];
  			$gender=$_POST["gender"];
  			$address = $_POST["address"];
  			$phone = $_POST["phone"];
  			$service=$_POST["service"];
  			$image = $_POST["image"];
  			$class_id=$_POST["class_id"];
  			$updated_at=$_POST["updated_at"];
  			$password1 = $_POST["password1"];
  			$password = $_POST["password"];
  			$regex0="/^\S*(?=\S{8,32})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])\S*$/";
  			 if($name == ""){
	echo "Vui lòng nhập tên";
	return false;
}
else if($email == ""){
	echo "Vui lòng nhập Email";
	return false;
}
else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
echo "Email không hợp lệ!";
return false;
}
else if ($date == "") {
				   echo "Vui lòng nhập ngày sinh";
				   return false;
  			}
  			else if ($gender == "") {
				   echo "Vui lòng chọn giới tính";
				   return false;
  			}
  				else if ($address == "") {
				   echo "Vui lòng nhập địa chỉ";
				   return false;
  			}
  				else if ($phone == "") {
				   echo "Vui lòng nhập số điện thoại";
				   return false;
  			}
  			else if ($image == "") {
				   echo "Vui lòng chèn hình ảnh";
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
  					// Kiểm tra tài khoản đã tồn tại chưa
  					$sql="select * from loginstudent where email='$email'";
					$kt=mysqli_query($conn, $sql);

					if(mysqli_num_rows($kt)  > 0){
						echo "Tài khoản đã tồn tại";
						return false;
					}else{
						$created_at = $updated_at = date('Y-m-d H:s:i');
						//thực hiện việc lưu trữ dữ liệu vào db
	    				$sql = "INSERT INTO loginstudent(
	    					name,
	    					position_id,
						    email,
						    date,
						    gender,
						    address,
						    phone,
						    image,
						    service,
						    class_id,
						    updated_at,
	    					password
	    					) VALUES (
	    					'$name',
	    					'$position_id',
	    					'$email',
	    					'$date',
	    					'$gender',
	    					'$address',
	    					'$phone',
	    					'$image',	    	
	    					'$service',
	    					'$class_id',
	    					'$updated_at',
	    					'$password'
	    					)";
					    // thực thi câu $sql với biến conn lấy từ file connection.php
   						mysqli_query($conn,$sql);
   						header('Location:signup_sv.php');
				   		echo "chúc mừng bạn đã đăng ký thành công";
				   		return true;
					}
				if ($conn->query($sql))
{
	echo "Thành công";
	}
	else {
		echo"Thất bại".mysqli_error($conn);
	}					    
					
			  }
	}
	?>
	<?php
if (isset($_POST["btn_loginstudent"])) {
	header('Location:signup_sv.php');
}
?>
    <div class="panel-body" style="background:#0099ff;color: white; padding: 15px;width: 500px; height:1000px;margin-top: 50px; margin-left: 450px;">
	 <form action="signup_sv.php" method="post">
                	     <div class="form-group">
                	     	<label for="name">Họ và tên:</label>
                    <input type="text" class="form-control" placeholder="Họ và Tên" name="name" required autofocus />
                </div>
                     <div class="form-group">
                     	<label for="email">Email:</label>
                    <input type="text" class="form-control" placeholder="Email" name="email" required autofocus />
                </div>
                <div class="form-group">
                      <label for="date1">Ngày sinh:</label>
  <input type="date" class="form-control" id="date1" name="date1" required autofocus>
                </div>
                 <div class="form-group">
                    <input type="radio"  name="gender" value="Nam" required autofocus> Nam
					<input type="radio"  style="margin-left: 50px;"name="gender" value="Nữ" required autofocus> Nữ 
                </div>
                 <div class="form-group">
                 	<label for="address">Địa chỉ:</label>
                    <textarea type="text" class="form-control" placeholder="Địa chỉ" name="address" required autofocus /></textarea>
                </div>
                 <div class="form-group">
                 	<label for="phone">Số điện thoại:</label>
                    <input type="text" class="form-control" placeholder="Số điện thoại" name="phone" required autofocus />
                </div>
                 <div class="form-group">
                 	<label for="service">Chức vụ:</label>
                   <select name="service" required autofocus>
    <option value="Giáo viên" name="service">Giáo viên</option>
    <option value="Hiệu trưởng" name="service">Hiệu trưởng</option>
    <option value="Phó hiệu trưởng" name="service">Phó hiệu trưởng</option>
    <option value="Kế toán" name="service">Kế toán</option>
    <option value="Nhân viên bảo vệ" name="service">Nhân viên bảo vệ</option>
  </select>
                </div>
                <div class="form-group">
                	  <label for="class">Giáo viên chủ nghiệm lớp:</label>
                     <select name="class" required autofocus>
    <option value="10/1" name="class">10/1</option>
    <option value="10/2" name="class">10/2</option>
    <option value="10/3" name="class">10/3</option>
     <option value="11/1" name="class">11/1</option>
    <option value="11/2" name="class">11/2</option>
    <option value="11/3" name="class">11/3</option>
    <option value="12/1" name="class">12/1</option>
    <option value="12/2" name="class">12/2</option>
    <option value="12/3" name="class">12/3</option>
  </select>
                </div> 
                 <div class="form-group">
 <select class="form-control" name="position_id" id="position_id">
					  	<option>-- Chọn tổ môn học --</option>
<?php
$sql          = 'select * from position';
$categoryList = executeResult($sql);

foreach ($categoryList as $item) {
	if ($item['id'] == $position_id) {
		echo '<option selected value="'.$item['id'].'">'.$item['name'].'</option>';
	} else {
		echo '<option value="'.$item['id'].'">'.$item['name'].'</option>';
	}
}
?>
					  </select>
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
                	<div class="form-group">
					  <label for="image">Liên kết hình ảnh:</label>
					  <input required="true" type="text" class="form-control" id="image" name="image" value="<?=$image?>" onchange="updateThumbnail()"  required autofocus>
					  <img src="<?=$image?>" style="max-width: 200px" id="img_image">
					</div>
                <button class="btn btn-lg btn-block purple-bg" type="submit" name="btn_submit">
                    Đăng ký</button>
                </form>
            </div>
            	<script type="text/javascript">
		function updateThumbnail() {
			$('#img_image').attr('src', $('#image').val())
		}
	</script>
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