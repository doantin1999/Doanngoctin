<?php
session_start();
require_once ('../db/dbhelper.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Thông tin</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
		<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		<style type="text/css">
    .imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}
 .modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */



/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
	html{
		height: 1100px;
	}
	.header {margin:10px;
		margin-left: 100px;
	height: 100%;
	float: left;
}

.sticky {
  position: fixed;
  top: 0;
  width: 81.55%;
  height: 100%;
  margin-top: 0px;
z-index: 999;
}
		*{
    margin: 0px;
    padding: 0;

}
header, nav{
    /* canh giữa cách lề mỗi bên 10% */
    margin: 5px 10%;
z-index: 999;
}
nav{
    background: #666; /*tô màu cho menu cha*/
    border-radius: 5px; /* bo góc */
z-index: 999;
}
nav ul{
    display: flex;

}
nav
{top:0px;
    width: 100%;
   margin-left: 0px;
    margin-top: 0px;

}
nav> ul li{
    list-style: none; /* bỏ dấu chấm mặc định của li */
    /* kẻ đường bên trái và bên phải của li */
    border-right: 1px solid #ccc;
    border-left:1px solid #333;

}
nav> ul li a{
    display: block;
    padding: 0 40px;
    line-height: 50px;
    color: white;
    text-decoration: none;
    text-transform: uppercase;

}
nav ul li:first-child {
    border-left: none; /* bỏ đường kè trái của phần tử đầu tiên */

}
nav> ul li:first-child a{
    border-bottom-left-radius: 5px;
    border-top-left-radius: 5px;

}
/* Khi hover đến li, tô màu cho thẻ a */
nav ul li:hover>a{
    background: #303030;
    opacity: 1;
    height: 50px;
    color: white;
     text-decoration: none;
    text-transform: uppercase;

}
/*menu con*/
/*Ẩn các menu con cấp 1,2,3*/
nav li ul{
    display: none;
    min-width: 215px;
    position: absolute;
 z-index: 999;
}
nav li>ul li{
    width: 100%;
    border: none;
    border-bottom: 1px solid #ccc;
    background: #666;
    text-align: left;

}
nav li>ul li:first-child a{
    border-bottom-left-radius: 0px;
    border-top-left-radius: 0px;

}
nav li>ul li:last-child {
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;

}
nav li>ul li:last-child a{
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;

}
/*khi hover thì hiện menu con*/
nav  li:hover > ul{
    display:  block;

}
/*Hiển thị menu con cấp 2,3,4 bên cạnh phải*/
nav > ul li > ul li >ul{
    margin-left: 400px;
    margin-top: -50px;

}
	</style>
</head>
<body style="background:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(https://images.unsplash.com/photo-1552566626-52f8b828add9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmVzdGF1cmFudHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80) no-repeat center fixed; 
  background-size: cover;color: white;">
	<div class="container">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="z-index: 0;">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-phuong-nam-dich-vong-hau-slide-11-normal-214091315614.jpg" style="width:100%;height:500px; object-fit: cover;" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="nhahang.png" style="width:100%;height:500px; object-fit: cover;" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="monan.jpg" style="width:100%;height:500px;  object-fit: cover;" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<div style="background-color:black;">  <p style="float:left; margin-right: 10px; margin-left: 10px;"><i class='fas fa-map-marker-alt'></i>    567 Ngô Quyền</p>
  <p style="float:left; margin-right: 10px;"><i class='fas fa-phone-alt'></i>    0795620064</p>
  <p style="float:right; margin-right: 10px;"><i class="far fa-clock"></i> <?php  date_default_timezone_set("Asia/Ho_Chi_Minh");
echo "Đà Nẵng: ".date("Y-m-d H:i"). ""; ?></p>
  <p><i class="fa fa-envelope"></i>    dntin.18it2@gmail.com</p>
<nav id="nav" style="height: 50px;">
  <ul style="
    height: 50px;text-align: center;
">
    
    <li style="height:50px;text-align: center;"><a href="index.php" title="Trang chủ" style="
    height: 50px;
    width: 180px;
">Trang chủ</a></li>
    <li style="height:50px;text-align: center;"><a href="new.php" title="Tin tức" style="
    height: 50px;
    width: 180px;
">Tin tức</a></li>
    
    <li style="height:50px;text-align: center;"><a href="#" title="Menu" style="
    height: 50px;
    width: 180px;text-align: center;
">Menu</a>
      <ul>
      <li>                  <tbody>
<?php
//Lay danh sach danh muc tu database
$sql          = 'select * from category';
$categoryList = executeResult($sql);

$index = 1;
foreach ($categoryList as $item) {
    echo '<tr>
                <li><a href="category.php?id='.$item['id'].'">'.$item['name'].'</a></li>
            </tr>';
}
?>
                    </tbody></li>
  </ul>
</li>
    <li style="height:50px;text-align: center;"><a href="information.php" title="Thông tin nhà hàng" style="
    height: 50px;
    width: 180px;
">Thông tin</a></li>
    <li style="height:50px;text-align: center;"><a onclick="document.getElementById('id01').style.display='block'" style="width:auto;" title="Giỏ hàng" style="
    height: 50px;
    width: 180px;
"><i class="fas fa-shopping-cart" style="
    margin-top: 10px; width: 40px;
"><span id="cart-item" style="
    margin-top: 0px;
    margin-left: 0px;
    margin-bottom: 0px;
" class="badge badge-danger" ></span></i></a>
    <div id="id01" class="modal" style="color:black;">
  
  <form class="modal-content animate" action="/action_page.php" method="post">
    <div class="imgcontainer">
<div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-10">
                <p>Chú ý vui lòng bấm tải lại trang để tránh lỗi!</p>
        <div class="table-responsive mt-2">
          <table class="table table-bordered table-striped text-center">
            <thead>
              <tr>
                <td colspan="7">
                  <h4 class="text-center text-info m-0">Sản phẩm trong giỏ hàng của bạn!</h4>
                </td>
              </tr>
              <tr>
                <th>STT</th>
                <th>Hình ảnh</th>
                <th>Sản phẩm</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
                <th>
                  <a href="action.php?clear=all" class="badge-danger badge p-1" onclick="return confirm('Bạn có chắc chắn muốn xóa giỏ hàng của bạn không?');"><i class="fas fa-trash"></i>&nbsp;&nbsp;Xóa hết</a>
                </th>
              </tr>
            </thead>
            <tbody>
              <?php
                require 'config.php';
                $stmt = $conn->prepare('SELECT * FROM cart');
                $stmt->execute();
                $result = $stmt->get_result();
                $grand_total = 0;
                while ($row = $result->fetch_assoc()):
              ?>
              <tr>
                <td><?= $row['id'] ?></td>
                <input type="hidden" class="pid" value="<?= $row['id'] ?>">
                <td><img src="<?= $row['image'] ?>" width="50"></td>
                <td><?= $row['name'] ?></td>
                <td>
                  <i>&nbsp;&nbsp;<?= number_format($row['price'],0); ?>₫</i>
                </td>
                <input type="hidden" class="pprice" value="<?= $row['price'] ?>">
                <td>
                  <input type="number" class="form-control itemQty" value="<?= $row['qty'] ?>" style="width:75px;">
                </td>
                <td><i>&nbsp;&nbsp;<?= number_format($row['total_price'],0); ?>₫</i></td>
                <td>
                  <a href="action.php?remove=<?= $row['id'] ?>" class="text-danger lead" onclick="return confirm('Bạn có chắc chắn muốn xóa hàng này không?');"><i class="fas fa-trash-alt"></i></a>
                </td>
              </tr>
              <?php $grand_total += $row['total_price']; ?>
              <?php endwhile; ?>
              <tr>
                <td colspan="3">
                  <a href="index.php" class="btn btn-success"><i class="fas fa-cart-plus"></i>&nbsp;&nbsp;Tiếp tục đặt mua</a>
                </td>
                <td colspan="2"><b>Tổng số tiền</b></td>
                <td><b><i>&nbsp;&nbsp;<?= number_format($grand_total,0); ?>₫</i></b></td>
                <td>
                  <a href="checkout.php" class="btn btn-info <?= ($grand_total > 1) ? '' : 'disabled'; ?>"><i class="far fa-credit-card"></i>&nbsp;&nbsp;Thanh toán</a>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
    </div>
  </form>
</div>
</li>
<div style="height: 50px;
    width: 500px;">
     <form action="search.php" method="get" style="margin-top:10px; width: 250px;">
        <input type="text" name="search" placeholder="Tìm kiếm..."/>
            <input type="submit" name="ok" value="  ok  " />
            </form>
     </div>       
  </ul>
</nav>
</div>
<div class="panel-heading"><br>
				<p class="text-center" style="font-family: Monaco;font-size: 70px; text-shadow: 5px 5px 10px black;">NHÀ HÀNG PHƯƠNG NAM</p>
			</div>
		<div class="panel panel-primary" style="background-color: #666; width: 1100px; height: 100%; margin-right: 0px;padding: 30px;" class="panel-body">
            <h2 style="text-align: center;">HỒ SƠ</h2>
        <h3><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
 if($_SESSION['email'])
    {
        $SESSION = $_SESSION['email'];
        $result = mysqli_query($conn, "select * from loginstudent1 where email = '$SESSION'"); // Use curly braces to access array members inside strings
        $show = mysqli_fetch_assoc($result); // now $show is an array that holds the user data
        echo'<img src="'.$show['image'].'" style="width: 250px;height: 300px;object-fit: cover;float:left;margin-right:20px;margin-left:250px;"/>';
            echo "Họ và Tên: {$show['name']}</br>";
            echo "Email: {$show['email']}</br>";
            echo "Ngày sinh: {$show['date1']}</br>";
            echo "Giới tính: {$show['gender']}</br>";
            echo "Địa chỉ: {$show['address']}</br>";
            echo "Số điện thoại: {$show['phone']}</br>";
            echo "Lớp: {$show['class']}</br>";
            echo "Môn Học: {$show['subjects']} {$show['subjects1']} {$show['subjects2']}</br>";
            echo "Trường học: {$show['school']}</br></br>";
            echo "<a href='add.php?id=".$show['id']."'><button class='btn btn-warning' style='margin-left:250px;'>Sửa hồ sơ</button></a>";
    }
     ?></h3>
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
<p><i class='fas fa-map-marker-alt'></i>    37 Phạm Cự Lượng</p>
  <p><i class="fa fa-phone" aria-hidden="true"></i>    0789472069</p>
  <p><i class="fa fa-globe"></i>    thptngoquyendn.edu.vn</p>
  </div>
  <div style="margin-left: 300px;">
  <b>GIỜ MỞ CỬA</b>
  <p><i class="far fa-clock"></i>    Thứ 2-Thứ 7: 7h00-18h00</p>
  </div>
</div>
	<script>
window.onscroll = function() {myFunction()};

var nav = document.getElementById("nav");
var sticky = nav.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    nav.classList.add("sticky")
  } else {
    nav.classList.remove("sticky");
  }
}
</script>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script>

  <script type="text/javascript">
  $(document).ready(function() {

    // Send product details in the server
    $(".addItemBtn").click(function(e) {
      e.preventDefault();
      var $form = $(this).closest(".form-submit");
      var pid = $form.find(".pid").val();
      var pname = $form.find(".pname").val();
      var pprice = $form.find(".pprice").val();
      var pimage = $form.find(".pimage").val();
      var pcode = $form.find(".pcode").val();

      var pqty = $form.find(".pqty").val();

      $.ajax({
        url: 'action.php',
        method: 'post',
        data: {
          pid: pid,
          pname: pname,
          pprice: pprice,
          pqty: pqty,
          pimage: pimage,
          pcode: pcode
        },
        success: function(response) {
          $("#message").html(response);
          window.scrollTo(0, 0);
          load_cart_item_number();
        }
      });
    });

    // Load total no.of items added in the cart and display in the navbar
    load_cart_item_number();

    function load_cart_item_number() {
      $.ajax({
        url: 'action.php',
        method: 'get',
        data: {
          cartItem: "cart_item"
        },
        success: function(response) {
          $("#cart-item").html(response);
        }
      });
    }
  });
</script>
<script type="text/javascript">
  $(document).ready(function() {

    // Change the item quantity
    $(".itemQty").on('change', function() {
      var $el = $(this).closest('tr');

      var pid = $el.find(".pid").val();
      var pprice = $el.find(".pprice").val();
      var qty = $el.find(".itemQty").val();
      location.reload(true);
      $.ajax({
        url: 'action.php',
        method: 'post',
        cache: false,
        data: {
          qty: qty,
          pid: pid,
          pprice: pprice
        },
        success: function(response) {
          console.log(response);
        }
      });
    });

    // Load total no.of items added in the cart and display in the navbar
    load_cart_item_number();

    function load_cart_item_number() {
      $.ajax({
        url: 'action.php',
        method: 'get',
        data: {
          cartItem: "cart_item"
        },
        success: function(response) {
          $("#cart-item").html(response);
        }
      });
    }
  });
  </script>
</body>
</html>