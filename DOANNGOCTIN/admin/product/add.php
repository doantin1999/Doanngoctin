<?php
require_once ('../../db/dbhelper.php');

$id = $name =$title=$code=$image =$price= $id_category = '';
if (!empty($_POST)) {
	if (isset($_POST['name'])) {
		$name = $_POST['name'];
		$name = str_replace('"', '\\"', $name);
	}
	if (isset($_POST['code'])) {
		$code = $_POST['code'];
		$code = str_replace('"', '\\"', $code);
	}
	if (isset($_POST['price'])) {
		$price = $_POST['price'];
		$price = str_replace('"', '\\"', $price);
	}
	if (isset($_POST['id'])) {
		$id = $_POST['id'];
	}
	if (isset($_POST['title'])) {
		$title = $_POST['title'];
		$title = str_replace('"', '\\"', $title);
	}
	if (isset($_POST['image'])) {
		$image = $_POST['image'];
		$image = str_replace('"', '\\"', $image);
	}
	if (isset($_POST['id_category'])) {
		$id_category = $_POST['id_category'];
	}
	if (!empty($name)) {
		$created_at = $updated_at = date('Y-m-d H:s:i');
		//Luu vao database
		if ($id == '') {
			$sql = 'insert into product(name, code, title, image, price, id_category, created_at, updated_at) values ("'.$name.'", "'.$code.'", "'.$title.'", "'.$image.'", "'.$price.'", "'.$id_category.'", "'.$created_at.'", "'.$updated_at.'")';
		} else {
			$sql = 'update product set name = "'.$name.'", code="'.$code.'", title="'.$title.'", updated_at = "'.$updated_at.'", image = "'.$image.'",  price = "'.$price.'", id_category = "'.$id_category.'" where id = '.$id;
		}

		execute($sql);

		header('Location: index.php');
		die();
	}
}

if (isset($_GET['id'])) {
	$id      = $_GET['id'];
	$sql     = 'select * from product where id = '.$id;
	$product = executeSingleResult($sql);
	if ($product != null) {
		$name       = $product['name'];
		$code       = $product['code'];
		$price       = $product['price'];
		$title       = $product['title'];
		$image   = $product['image'];
		$id_category = $product['id_category'];
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Thêm/Sửa Sản Phẩm</title>
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
    <a class="nav-link active" href="#"style="background:#0099ff;color: white;font-size: 20px">
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
				<h2 class="text-center">THÊM/SỬA SẢN PHẨM</h2>
			</div>
			<div class="panel-body">
				<form method="post">
					<div class="form-group">
					  <label for="name">Tên sản phẩm:</label>
					  <input type="text" name="id" value="<?=$id?>" hidden="true">
					  <input required="true" type="text" class="form-control" id="name" name="name" value="<?=$name?>">
					</div>
					<div class="form-group">
					  <label for="code">Mã sản phẩm:</label>
					  <input type="text" name="id" value="<?=$id?>" hidden="true">
					  <input required="true" type="text" class="form-control" id="code" name="code" value="<?=$code?>">
					</div>
					<div class="form-group">
					   <label for="price">Giá Bán:</label>
					  <input required="true" type="number" class="form-control" id="price" name="price" value="<?=$price?>">
					</div>
					<div class="form-group">
					  <label for="title">Thông tin sản phẩm:</label>
					  <textarea class="form-control" rows="5" name="title" id="title"><?=$title?></textarea>
					</div>
					<div class="form-group">
					  <label for="id_category">Chọn mục sản phẩm:</label>
					  <select class="form-control" name="id_category" id="id_category">
					  	<option>-- Lựa chọn mục sản phẩm --</option>
<?php
$sql          = 'select * from category';
$categoryList = executeResult($sql);

foreach ($categoryList as $item) {
	if ($item['id'] == $id_category) {
		echo '<option selected value="'.$item['id'].'">'.$item['name'].'</option>';
	} else {
		echo '<option value="'.$item['id'].'">'.$item['name'].'</option>';
	}
}
?>
					  </select>
					</div>
					<div class="form-group">
					  <label for="image">Hình ảnh:</label>
					  <input required="true" type="text" class="form-control" id="image" name="image" value="<?=$image?>" onchange="updateThumbnail()" placeholder="Gián liên kết ảnh vào đây">
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