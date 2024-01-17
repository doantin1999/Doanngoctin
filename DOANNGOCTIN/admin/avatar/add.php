<?php
require_once ('../../db/dbhelper.php');

$id = $name=$email=$date=$gender=$address =$phone= $image ='';
if (!empty($_POST)) {
	if (isset($_POST['name'])) {
		$name = $_POST['name'];
		$name = str_replace('"', '\\"', $name);
	}
	if (isset($_POST['email'])) {
		$email = $_POST['email'];
		$email = str_replace('"', '\\"', $email);
	}
	if (isset($_POST['date1'])) {
		$date = $_POST['date1'];
		$date = str_replace('"', '\\"', $date);
	}
	if (isset($_POST['id'])) {
		$id = $_POST['id'];
	}
	if (isset($_POST['gender'])) {
		$gender = $_POST['gender'];
		$gender = str_replace('"', '\\"', $gender);
	}
	if (isset($_POST['address'])) {
		$address = $_POST['address'];
		$address = str_replace('"', '\\"', $address);
	}
	if (isset($_POST['phone'])) {
		$phone = $_POST['phone'];
		$phone = str_replace('"', '\\"', $phone);
	}
		if (isset($_POST['image'])) {
		$image = $_POST['image'];
		$image = str_replace('"', '\\"', $image);
	}
	if (!empty($name)) {
		//Luu vao database
				$sql = 'update login set name = "'.$name.'", email="'.$email.'", date1="'.$date.'", gender = "'.$gender.'", image = "'.$image.'",  address = "'.$address.'", phone = "'.$phone.'" where id = '.$id;

		execute($sql);
		$regex1="/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/";
	if (!preg_match($regex1, $phone)) {
				   echo "Số điện thoại không hợp lệ";
				   return false;
  }
  else
  {
header('Location: index.php');
		die();
  }

		
	}
}

if (isset($_GET['id'])) {
	$id      = $_GET['id'];
	$sql     = 'select * from login where id = '.$id;
	$login = executeSingleResult($sql);
	if ($login != null) {
		$name       = $login['name'];
		$email       = $login['email'];
		$date       = $login['date1'];
		$gender       = $login['gender'];
		$image   = $login['image'];
		$address = $login['address'];
		$phone = $login['phone'];
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm/Sửa Hồ Sơ</title>
	  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	<!-- summernote -->
	<!-- include summernote css/js -->
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
			<style>
.avatar {
  vertical-align: middle;
  width: 24px;
  height: 24px;
  border-radius: 50%;
  object-fit: cover
}
</style>
</head>
<body>
	 <div style="background:#0099ff;color: white;">
	<ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link active" href="../category/" style="background:#0099ff;color: white;font-size: 20px">DANH MỤC</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="../product/"style="background:#0099ff;color: white;font-size: 20px">SẢN PHẨM</a>
      </li>
       <li class="nav-item">
        <a class="nav-link active" href="../customer/"style="background:#0099ff;color: white;font-size: 20px">SẢN PHẨM ĐÃ MUA</a>
      </li>
       <li class="nav-item">
        <a class="nav-link active" href="../student/"style="background:#0099ff;color: white;font-size: 20px">TÀI KHOẢN</a>
      </li>
       <li class="nav-item">
        <a class="nav-link active" href="../statistical/"style="background:#0099ff;color: white;font-size: 20px">THỐNG KÊ</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="../new/"style="background:#0099ff;color: white;font-size: 20px">CÀI ĐẶT KHÁC</a>
      </li>
<li class="nav-item">
            <?php
session_start();
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
if(empty($_SESSION['email']))
{
    ?>
    <a class="nav-link active" href="../avatar/"style="background:#0099ff;color: white;font-size: 20px">
    <?php
echo'<i class="fa fa-user" aria-hidden="true"></i>';
?>
</a>
<?php
}
 else if($_SESSION['email'])
    {
        ?>
        <a class="nav-link active" href="../avatar/"style="background:#0099ff;color: white;font-size: 20px">
        <?php
        $SESSION = $_SESSION['email'];
        $result = mysqli_query($conn, "select * from login where email = '$SESSION'"); // Use curly braces to access array members inside strings
        $show = mysqli_fetch_assoc($result); // now $show is an array that holds the user data
        echo'<img src="'.$show['image'].'" alt="Avatar" class="avatar"/>';
        ?>
         </a>
        <?php
    }
     ?>
      </li> 
           <li class="nav-item">
        <a class="nav-link active" href="../login/"style="background:#0099ff;color: white;font-size: 20px"><i class="fas fa-sign-out-alt"></i></a>
      </li> 
          <p style="margin-top: 5px;"><i class="far fa-clock"></i> <?php  date_default_timezone_set("Asia/Ho_Chi_Minh");
echo "Đà Nẵng: ".date("Y-m-d H:i"). ""; ?></p>
    </ul>
</div>
<br>
	<div class="container" style="
    padding-left: 300px;
    padding-right: 300px;
">
		<div class="panel panel-primary" style="background:#0099ff;color: white; padding: 15px;">
			<div class="panel-heading">
				<h2 class="text-center">Sửa hồ sơ</h2>
			</div>
			<form method="post">
			<div class="panel-body">
					<div class="form-group">
					  <label for="name">Họ và Tên:</label>
					  <input type="text" name="id" value="<?=$id?>" hidden="true">
					  <input required="true" type="text" class="form-control" id="name" name="name" value="<?=$name?>">
					</div>
					<div class="form-group">
					  <label for="email">Email:</label>
					  <input type="text" name="id" value="<?=$id?>" hidden="true">
					  <input required="true" type="text" class="form-control" id="email" name="email" value="<?=$email?>" readonly>
					</div>
					<div class="form-group">
					   <label for="date1">Ngày sinh:</label>
					  <input required="true" type="date" class="form-control" id="date1" name="date1" value="<?=$date?>">
					</div>
					<div class="form-group">
					  <label for="gender" style="margin-right: 50px;">Giới tính:</label>
					   <input required="true"  type="radio" id="gender" name="gender" value="Nam"> Nam
					<input required="true" type="radio" id="gender" style="margin-left: 50px;"name="gender" value="Nữ"> Nữ 
					</div>
					<div class="form-group">
					 <label for="address">Địa chỉ:</label>
					  <textarea class="form-control" rows="5" name="address" id="address"><?=$address?></textarea>
					</div>
					<label for="phone">Số điện thoại:</label>
					 <input required="true" type="text" class="form-control" id="phone" name="phone" value="<?=$phone?>">
					</div>
					<div class="form-group">
					  <label for="image">Hình ảnh:</label>
					  <input required="true" type="text" class="form-control" id="image" name="image" value="<?=$image?>" onchange="updateThumbnail()">
					  <img src="<?=$image?>" style="max-width: 200px" id="img_image">
					</div>
					<button class="btn btn-success">Lưu</button>
				</form>
			</div>
		</div>
	</div>
	<div style=" margin-top: 50px; 
   left: 0;
   bottom: 0;
   width: 100%;
   height: 200px;
   background-color: #0099ff;
   color: white;
   padding:30px;
   padding-left: 100px;
   text-align: left;">
   <div style="float:left;">
  <b>ĐỊA CHỈ</b>
<p><i class='fas fa-map-marker-alt'></i>    871 Ngô Quyền, Phường An Hải Đông, Quận Sơn Trà, Thành phố Đà Nẵng</p>
  <p><i class="fa fa-phone" aria-hidden="true"></i>    02363933461</p>
  <p><i class="fa fa-globe"></i>    kinhsuong.com</p>
  </div>
  <div style="margin-left: 600px;">
  <b>GIỜ MỞ CỬA</b>
  <p><i class="far fa-clock"></i>    Thứ 2-Thứ 7: 7h00-18h00</p>
  </div>
</div>
	<script type="text/javascript">
		function updateThumbnail() {
			$('#img_image').attr('src', $('#image').val())
		}
	</script>
</body>
</html>