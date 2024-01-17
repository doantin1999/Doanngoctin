<?php
require_once ('../../db/dbhelper.php');
require_once ('../../common/utility.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>CÔNG TY TNHH KÍNH SƯƠNG</title>
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
.avatar1 {
  vertical-align: middle;
  width: 50px;
  height: 50px;
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
        <a class="nav-link active" href="#"style="background:#0099ff;color: white;font-size: 20px">CÀI ĐẶT KHÁC</a>
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
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading"><br>

			</div><br>
			<div class="panel-body" style="color: black; padding: 15px;">
				<a href="add.php">
					<button class="btn btn-success" style="margin-bottom: 15px; float:left;">Thêm tin tức-thông báo</button>
				</a>
						<form method="get">
						  <div class="form-group" style="width: 200px; float: right;">
						    <input type="text" class="form-control" placeholder="Searching..." name="search">
						    <input type="submit" name="ok" value="Tìm kiếm" />
						  </div>
						</form>
				<table class="table table-bordered table-hover" style="color: black;">
					<thead>
						<tr>
							<th width="50px">STT</th>
							<th>Tên tiêu đề</th>
							<th>Tóm Tắt</th>
							<th>Nội dung</th>
							<th>Hình ảnh</th>
							<th>Ngày cập nhập</th>
							<th width="50px"></th>
							<th width="50px"></th>
						</tr>
					</thead>
					<tbody>
<?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
//Lay danh sach danh muc tu database
$limit = 5;
$page  = 1;
if (isset($_GET['page'])) {
	$page = $_GET['page'];
}
if ($page <= 0) {
	$page = 1;
}
$firstIndex = ($page-1)*$limit;

$sql         = 'select * from new where 1 '.' limit '.$firstIndex.', '.$limit;
$productList = executeResult($sql);

$sql         = 'select count(id) as total from new where 1 ';
$countResult = executeSingleResult($sql);
$number      = 0;
if ($countResult != null) {
	$count  = $countResult['total'];
	$number = ceil($count/$limit);
}
$grand_total = 0;
$index = 1;
  if (isset($_REQUEST['ok'])) 
        {
            // Gán hàm addslashes để chống sql injection
            $search = addslashes($_GET['search']);
 
            // Nếu $search rỗng thì báo lỗi, tức là người dùng chưa nhập liệu mà đã nhấn submit.
            if (empty($search)) {
                echo "Yêu cầu nhập dữ liệu vào ô trống";
            } 
            else
            {
                $sql = "select * from new where title like N'%$search%'";
                $result = $conn->query($sql);
        
                if ($result->num_rows > 0) 
                {
                    while ($item = $result->fetch_assoc()) {
    echo '<tr style="color: black;">
				<td>'.(++$firstIndex).'</td>
				<td>'.$item['title'].'</td>
				<td><b>'.$item['summary'].'</b></td>
				<td>'.$item['content'].'</td>
				<td><img src="'.$item['image'].'" style="max-width: 300px;object-fit: cover;"/></td>
				<td>'.$item['updated_at'].'</td>
				<td>
					<a href="add.php?id='.$item['id'].'"><button class="btn btn-warning">Sửa</button></a>
				</td>
				<td>
					<button class="btn btn-danger" onclick="deleteProduct('.$item['id'].')">Xoá</button>
				</td>
			</tr>';
                    }
                    echo '</table>';
                } 
                else {
                    echo "Không tìm thấy kết quả!";
                }
            }
        }
           else{
foreach ($productList as $item) {
	echo '<tr style="color: black;">
				<td>'.(++$firstIndex).'</td>
				<td>'.$item['title'].'</td>
				<td><b>'.$item['summary'].'</b></td>
				<td>'.$item['content'].'</td>
				<td><img src="'.$item['image'].'" style="max-width: 300px;object-fit: cover;"/></td>
				<td>'.$item['updated_at'].'</td>
				<td>
					<a href="add.php?id='.$item['id'].'"><button class="btn btn-warning">Sửa</button></a>
				</td>
				<td>
					<button class="btn btn-danger" onclick="deleteProduct('.$item['id'].')">Xoá</button>
				</td>
			</tr>';
}
}
?>
</tbody>
				</table>
				<!-- Bai toan phan trang -->
<?=paginarion($number, $page, '')?>
				<table class="table table-bordered table-hover" style="color: black;">
					<thead>
						<tr>
							<th width="50px">STT</th>
							<th>Họ và Tên</th>	
							<th>Email</th>			
							<th>Đánh giá</th>			
							<th>Bình luận</th>
							<th>Hình ảnh</th>
							<th>Ngày đăng bài đánh giá</th>
							<th width="50px"></th>
						</tr>
					</thead>
					<tbody>
<?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
//Lay danh sach danh muc tu database
$limit = 5;
$page  = 1;
if (isset($_GET['page'])) {
	$page = $_GET['page'];
}
if ($page <= 0) {
	$page = 1;
}
$firstIndex = ($page-1)*$limit;

$sql         = 'select * from review_table where 1 '.' limit '.$firstIndex.', '.$limit;
$productList = executeResult($sql);

$sql         = 'select count(id) as total from review_table where 1 ';
$countResult = executeSingleResult($sql);
$number      = 0;
if ($countResult != null) {
	$count  = $countResult['total'];
	$number = ceil($count/$limit);
}
$grand_total = 0;
$index = 1;

foreach ($productList as $item) {
	echo '<tr style="color: black;">
				<td>'.(++$firstIndex).'</td>
				<td>'.$item['user_name'].'</td>
				<td>'.$item['email'].'</td>
				<td>'.$item['user_rating'].'</td>
				<td>'.$item['user_review'].'</td>
				<td><img src="'.$item['image'].'" style="max-width: 200px;object-fit: cover;"/></td>
				<td>'.$item['datetime'].'</td>
				<td><button class="btn btn-success" onclick="yesProduct('.$item['review_id'].')">Xác nhận</button></td>
			</tr>';
}
?>
</tbody>
				</table>
				<!-- Bai toan phan trang -->
<?=paginarion($number, $page, '')?>
<form method="get">
						  <div class="form-group" style="width: 200px; float: right;">
						    <input type="text" class="form-control" placeholder="Searching..." name="search">
						    <input type="submit" name="ok" value="Tìm kiếm" />
						  </div>
						</form>
				<table class="table table-bordered table-hover" style="color: black;">
					<thead>
						<tr>
							<th width="50px">STT</th>
							<th>Họ và Tên</th>
							<th>Email</th>			
							<th>Đánh giá</th>			
							<th>Bình luận</th>
							<th>Hình ảnh</th>
							<th>Ngày đăng bài đánh giá</th>
							<th>Phản hồi</th>
							<th width="50px"></th>
							<th width="50px"></th>
						</tr>
					</thead>
					<tbody>
<?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
//Lay danh sach danh muc tu database
$limit = 5;
$page  = 1;
if (isset($_GET['page'])) {
	$page = $_GET['page'];
}
if ($page <= 0) {
	$page = 1;
}
$firstIndex = ($page-1)*$limit;

$sql         = 'select review_id, user_name, email, user_rating, user_review, replies, image, datetime from review_table1 where 1 '.' limit '.$firstIndex.', '.$limit;
$productList = executeResult($sql);

$sql         = 'select count(review_id) as total from review_table1 where 1 ';
$countResult = executeSingleResult($sql);
$number      = 0;
if ($countResult != null) {
	$count  = $countResult['total'];
	$number = ceil($count/$limit);
}
$grand_total = 0;
$index = 1;
  if (isset($_REQUEST['ok'])) 
        {
            // Gán hàm addslashes để chống sql injection
            $search = addslashes($_GET['search']);
 
            // Nếu $search rỗng thì báo lỗi, tức là người dùng chưa nhập liệu mà đã nhấn submit.
            if (empty($search)) {
                echo "Yêu cầu nhập dữ liệu vào ô trống";
            } 
            else
            {
                $sql = "select review_id, user_name, email, user_rating, user_review, replies, image, datetime from review_table1 where user_name like N'%$search%' or email like N'%$search%'";
                $result = $conn->query($sql);
        
                if ($result->num_rows > 0) 
                {
                    while ($item = $result->fetch_assoc()) {
    echo '<tr style="color: black;">
			<td>'.(++$firstIndex).'</td>
				<td>'.$item['user_name'].'</td>
				<td>'.$item['email'].'</td>
				<td>'.$item['user_rating'].'</td>
				<td>'.$item['user_review'].'</td>
				<td><img src="'.$item['image'].'" style="max-width: 200px;object-fit: cover;"/></td>
				<td>'.$item['datetime'].'</td>
				<td>'.$item['replies'].'</td>
				<td>
					<a href="add1.php?review_id='.$item['review_id'].'"><button class="btn-default">Phản hồi</button></a>
				</td>
				<td>
					<button class="btn btn-danger" onclick="deleteProduct1('.$item['review_id'].')">Xoá</button>
				</td>
			</tr>';
                    }
                    echo '</table>';
                } 
                else {
                    echo "Không tìm thấy kết quả!";
                }
            }
        }
           else{
foreach ($productList as $item) {
	echo '<tr style="color: black;">
				<td>'.(++$firstIndex).'</td>
				<td>'.$item['user_name'].'</td>
				<td>'.$item['email'].'</td>
				<td>'.$item['user_rating'].'</td>
				<td>'.$item['user_review'].'</td>
				<td><img src="'.$item['image'].'" style="max-width: 200px;object-fit: cover;"/></td>
				<td>'.$item['datetime'].'</td>
				<td>'.$item['replies'].'</td>
				<td>
					<a href="add1.php?review_id='.$item['review_id'].'"><button class="btn-default">Phản hồi</button></a>
				</td>
				<td>
					<button class="btn btn-danger" onclick="deleteProduct1('.$item['review_id'].')">Xoá</button>
				</td>
			</tr>';
}
}
?>
</tbody>
				</table>
				<!-- Bai toan phan trang -->
<?=paginarion($number, $page, '')?>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function yesProduct(id) {
			var option = confirm('Xác nhận người đánh giá?')
			if(!option) {
				return;
			}

			console.log(id)
			//ajax - lenh post
			$.post('table.php', {
				'review_id': id,
				'action': 'yes'
			}, function(data) {
				location.reload()
			})
		}
	</script>
	<script type="text/javascript">
		function deleteProduct(id) {
			var option = confirm('Bạn có chắc chắn muốn xoá tin tức này không?')
			if(!option) {
				return;
			}

			console.log(id)
			//ajax - lenh post
			$.post('ajax.php', {
				'id': id,
				'action': 'delete'
			}, function(data) {
				location.reload()
			})
		}
	</script>
	<script type="text/javascript">
		function deleteProduct1(id) {
			var option = confirm('Bạn có chắc chắn muốn xoá người này không?')
			if(!option) {
				return;
			}

			console.log(id)
			//ajax1 - lenh post
			$.post('ajax1.php', {
				'review_id': id,
				'action': 'delete'
			}, function(data) {
				location.reload()
			})
		}
	</script>
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
</body>
</html>