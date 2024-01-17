<?php
require_once ('../../db/dbhelper.php');
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
        <a class="nav-link active" href="#"style="background:#0099ff;color: white;font-size: 20px">THỐNG KÊ</a>
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
<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading"><br>

			</div><br>
			<div class="panel-body" style="background:#0099ff;color: white; padding: 15px;">
				<div class="row" style="padding left: 15px;color: black;">
						<div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Số tài khoản khách hàng</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM loginstudent";
if ($stmt = $conn->prepare($sql)) {
    $stmt->execute();
    $stmt->store_result();
    printf("%d", $stmt->num_rows);
}
?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					<div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Số người đã mua hàng</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM orders1";
if ($stmt = $conn->prepare($sql)) {
    $stmt->execute();
    $stmt->store_result();
    printf("%d", $stmt->num_rows);
}
?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        					<div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Tổng doanh thu</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$result = mysqli_query($conn, 'SELECT SUM(amount_paid) AS value_sum FROM orders1'); 
$row = mysqli_fetch_assoc($result); 
$sum = number_format($row['value_sum'],0);
echo $sum.'₫';
?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-money-bill-alt fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                Số hàng bị hủy bỏ</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM cancel";
if ($stmt = $conn->prepare($sql)) {
    $stmt->execute();
    $stmt->store_result();
    printf("%d", $stmt->num_rows);
}
?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa fa-times fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                       <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                Số tiền bị trừ</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$result = mysqli_query($conn, 'SELECT SUM(amount_paid) AS value_sum FROM cancel'); 
$row = mysqli_fetch_assoc($result); 
$sum = number_format($row['value_sum'],0);
echo '-'.$sum.'₫';
?></div>
                                        </div>
                                        <div class="col-auto" style="color: red;">
                                            <i class="fas fa-money-bill-alt fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Số tài khoản nhân viên</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM login";
if ($stmt = $conn->prepare($sql)) {
    $stmt->execute();
    $stmt->store_result();
    printf("%d", $stmt->num_rows);
}
?></div>
                                        </div>
                                        <div class="col-auto">
                                             <i class="fas fa-users fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                           <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Số bài đánh giá</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php
$servername ="localhost";
$username = "k13c05a033";
$password="tin";
$dbname = "quanlybanhang";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT * FROM review_table1";
if ($stmt = $conn->prepare($sql)) {
    $stmt->execute();
    $stmt->store_result();
    printf("%d", $stmt->num_rows);
}
?></div>
                                        </div>
                                        <div class="col-auto">
                                             <i class="fa fa-star text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
				</div>
                <br>
                <h2 style="text-align: center;">BIỂU ĐỒ CỘT DỌC</h2><br>
                <div class="row">
                    <div>
                <?php
require "config.php";// Database connection

if($stmt = $connection->query("select DATE_FORMAT( created_at, '%d/%m/%Y' ) as dat, SUM(amount_paid) as vi from orders1 group by DATE_FORMAT(created_at, '%d/%m/%Y') order by DATE_FORMAT(created_at, '%d') ")){

while ($row = $stmt->fetch_row()) {
   
   $php_data_array[] = $row; // Adding to array
   }
}
//print_r( $php_data_array);


// Transfor PHP array to JavaScript two dimensional array 
echo "<script>
        var my_2d = ".json_encode($php_data_array)."
</script>";
?>
<div id="chart_div" style="margin-left: 20px;"></div>
<script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages': ['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Ngày');
        data.addColumn('number', 'Số tiền');
        for(i = 0; i < my_2d.length; i++)
    data.addRow([my_2d[i][0], parseInt(my_2d[i][1])]);
       var options = {
          title: 'Doanh thu theo thời gian',
          hAxis: {title: 'Thời gian số tiền thu được',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0},
          width:500,
          height:400
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
       }
    ///////////////////////////////
////////////////////////////////////    
</script>
</div>
<div>
  <?php
require "config1.php";// Database connection

if($stmt1 = $connection1->query("select DATE_FORMAT( created_at, '%d/%m/%Y' ) as dat1, COUNT(name) as vi1 from orders1 group by DATE_FORMAT(created_at, '%d/%m/%Y') order by DATE_FORMAT(created_at, '%d') ")){

while ($row1 = $stmt1->fetch_row()) {
   
   $php_data_array1[] = $row1; // Adding to array
   }
}
//print_r( $php_data_array);


// Transfor PHP array to JavaScript two dimensional array 
echo "<script>
        var my_2d1 = ".json_encode($php_data_array1)."
</script>";
?>
<div id="chart_div1" style="margin-left: 70px;"></div>
<script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current1', {'packages1': ['corechart1', 'bar1']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
        // Create the data table.
        var data1 = new google.visualization.DataTable();
        data1.addColumn('string', 'Ngày');
        data1.addColumn('number', 'Số người mua');
        for(i = 0; i < my_2d1.length; i++)
    data1.addRow([my_2d1[i][0], parseInt(my_2d1[i][1])]);
       var options1 = {
          title: 'Số người mua theo thời gian',
          hAxis: {title: 'Thời gian số người mua',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0},
          width:500,
          height:400
        };

        var chart1 = new google.visualization.ColumnChart(document.getElementById('chart_div1'));
        chart1.draw(data1, options1);
       }
    ///////////////////////////////
////////////////////////////////////    
</script>
</div>
<div><br><br>
  <?php
require "config3.php";// Database connection

if($stmt3 = $connection3->query("select DATE_FORMAT( created_at, '%d/%m/%Y' ) as dat3, COUNT(name) as vi3 from loginstudent group by DATE_FORMAT(created_at, '%d/%m/%Y') order by DATE_FORMAT(created_at, '%d') ")){

while ($row3 = $stmt3->fetch_row()) {
   
   $php_data_array3[] = $row3; // Adding to array
   }
}
//print_r( $php_data_array);


// Transfor PHP array to JavaScript two dimensional array 
echo "<script>
        var my_2d3 = ".json_encode($php_data_array3)."
</script>";
?>
<div id="chart_div3" style="margin-left: 20px;"></div>
<script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current3', {'packages3': ['corechart3', 'bar3']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
        // Create the data table.
        var data3 = new google.visualization.DataTable();
        data3.addColumn('string', 'Ngày');
        data3.addColumn('number', 'người đăng ký tài khoản khách hàng');
        for(i = 0; i < my_2d3.length; i++)
    data3.addRow([my_2d3[i][0], parseInt(my_2d3[i][1])]);
       var options3 = {
          title: 'Số người đăng ký tài khoản khách hàng',
          hAxis: {title: 'Thời gian số người đăng ký tài khoản khách hàng',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0},
          width:500,
          height:400
        };

        var chart3 = new google.visualization.ColumnChart(document.getElementById('chart_div3'));
        chart3.draw(data3, options3);
       }
    ///////////////////////////////
////////////////////////////////////    
</script>
</div>
<div><br><br>
  <?php
require "config5.php";// Database connection

if($stmt6 = $connection6->query("select DATE_FORMAT( datetime, '%d/%m/%Y' ) as dat6, COUNT(user_name) as vi6 from review_table1 group by DATE_FORMAT(datetime, '%d/%m/%Y') order by DATE_FORMAT(datetime, '%d') ")){

while ($row6 = $stmt6->fetch_row()) {
   
   $php_data_array6[] = $row6; // Adding to array
   }
}
//print_r( $php_data_array);


// Transfor PHP array to JavaScript two dimensional array 
echo "<script>
        var my_2d6 = ".json_encode($php_data_array6)."
</script>";
?>
<div id="chart_div6" style="margin-left: 70px;"></div>
<script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current6', {'packages6': ['corechart6', 'bar6']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
        // Create the data table.
        var data6 = new google.visualization.DataTable();
        data6.addColumn('string', 'Ngày');
        data6.addColumn('number', 'Số bài đánh giá');
        for(i = 0; i < my_2d6.length; i++)
    data6.addRow([my_2d6[i][0], parseInt(my_2d6[i][1])]);
       var options6 = {
          title: 'Số bài đánh giá theo thời gian',
          hAxis: {title: 'Thời gian đánh giá',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0},
          width:500,
          height:400
        };

        var chart6 = new google.visualization.ColumnChart(document.getElementById('chart_div6'));
        chart6.draw(data6, options6);
       }
    ///////////////////////////////
////////////////////////////////////    
</script>
</div>
</div>
<br><br>
<h2 style="text-align:center;">BIỂU ĐỒ HÌNH TRÒN</h2><br>
<?php
require "config2.php";// Database connection

if($stmt2 = $connection2->query("SELECT category.name, count(*)  FROM product left join category on product.id_category = category.id GROUP BY 
    category.name")){
while ($row2 = $stmt2->fetch_row()) {
   $php_data_array2[] = $row2; // Adding to array
   }
}
echo "<script>
        var my_2d2 = ".json_encode($php_data_array2)."
</script>";
?>
<div id="chart_div2" style="margin-left:250px;"></div>
<script>
 google.charts.load('current', {'packages':['corechart']});
     // Draw the pie chart when Charts is loaded.
      google.charts.setOnLoadCallback(draw_my_chart);
      // Callback that draws the pie chart
      function draw_my_chart() {
        // Create the data table .
        var data2 = new google.visualization.DataTable();
        data2.addColumn('string', 'Danh mục');
        data2.addColumn('number', 'Tên');
        for(i = 0; i < my_2d2.length; i++)
    data2.addRow([my_2d2[i][0], parseInt(my_2d2[i][1])]);
// above row adds the JavaScript two dimensional array data into required chart format
    var options2 = {title:'Tỷ lệ % danh mục sản phẩm',
                       width:600,
                       height:500};

        // Instantiate and draw the chart
        var chart2 = new google.visualization.PieChart(document.getElementById('chart_div2'));
        chart2.draw(data2, options2);
      }
</script><br><br>
<?php
require "config2.php";// Database connection

if($stmt2 = $connection2->query("SELECT user_rating, count(*)  FROM review_table1 GROUP BY 
    user_rating")){
while ($row2 = $stmt2->fetch_row()) {
   $php_data_array4[] = $row2; // Adding to array
   }
}
echo "<script>
        var my_2d4 = ".json_encode($php_data_array4)."
</script>";
?>
<div id="chart_div4" style="margin-left:250px;"></div>
<script>
 google.charts.load('current', {'packages':['corechart']});
     // Draw the pie chart when Charts is loaded.
      google.charts.setOnLoadCallback(draw_my_chart);
      // Callback that draws the pie chart
      function draw_my_chart() {
        // Create the data table .
        var data2 = new google.visualization.DataTable();
        data2.addColumn('string', 'Đánh giá');
        data2.addColumn('number', 'Tên');
        for(i = 0; i < my_2d4.length; i++)
    data2.addRow([my_2d4[i][0], parseInt(my_2d4[i][1])]);
// above row adds the JavaScript two dimensional array data into required chart format
    var options2 = {title:'Tỷ lệ % số người đánh giá từ 1-5 sao',
                       width:600,
                       height:500};

        // Instantiate and draw the chart
        var chart2 = new google.visualization.PieChart(document.getElementById('chart_div4'));
        chart2.draw(data2, options2);
      }
</script>
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
</body>
</html>