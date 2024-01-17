<div id="chart_div"></div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
my_2d=[['PHP', 300],
       ['MySQL', 100],
       ['JavaScript', 200],
       ['JQuery', 200],
       ['HTML', 200],
		  ['ASP', 100]]
 google.charts.load('current', {'packages':['corechart']});
     // Draw the pie chart when Charts is loaded.
      google.charts.setOnLoadCallback(draw_my_chart);
      // Callback that draws the pie chart
      function draw_my_chart() {
        // Create the data table .
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'language');
        data.addColumn('number', 'Nos');
		for(i = 0; i < my_2d.length; i++)
    data.addRow([my_2d[i][0], parseInt(my_2d[i][1])]);
// above row adds the JavaScript two dimensional array data into required chart format
    var options = {title:'plus2net.com : How the tutorials are distributed',
                       width:600,
                       height:500,
                       
                   };

        // Instantiate and draw the chart
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
</script>
<div id="chart_div1"></div>
<script>
my_2d1=[['PHP', 300],
       ['MySQL', 100],
       ['JavaScript', 200],
       ['JQuery', 200],
       ['HTML', 200],
          ['ASP', 100]]
 google.charts.load('current1', {'packages1':['corechar1']});
     // Draw the pie chart when Charts is loaded.
      google.charts.setOnLoadCallback(draw_my_chart);
      // Callback that draws the pie chart
      function draw_my_chart() {
        // Create the data table .
        var data1 = new google.visualization.DataTable();
        data1.addColumn('string', 'language');
        data1.addColumn('number', 'Nos');
        for(i = 0; i < my_2d1.length; i++)
    data1.addRow([my_2d1[i][0], parseInt(my_2d1[i][1])]);
// above row adds the JavaScript two dimensional array data into required chart format
    var options1 = {title:'plus2net.com : How the tutorials are distributed',
                       width:600,
                       height:500,
                       
                   };

        // Instantiate and draw the chart
        var chart1 = new google.visualization.ColumnChart(document.getElementById('chart_div1'));
        chart1.draw(data1, options1);
      }
</script>
<div id="chart_div3" style="margin-left: 70px;"></div>
<script type="text/javascript">
my_2d3=[['PHP', 300],
       ['MySQL', 100],
       ['JavaScript', 200],
       ['JQuery', 200],
       ['HTML', 200],
          ['ASP', 100]]
      // Load the Visualization API and the corechart package.
      google.charts.load('current3', {'packages3': ['corechart3', 'bar3']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
        // Create the data table.
        var data3 = new google.visualization.DataTable();
        data3.addColumn('string', 'Ngày');
        data3.addColumn('number', 'Số người mua');
        for(i = 0; i < my_2d3.length; i++)
    data1.addRow([my_2d3[i][0], parseInt(my_2d3[i][1])]);
       var options1 = {
          title: 'Số người mua theo thời gian',
          hAxis: {title: 'Thời gian số người mua',  titleTextStyle: {color: '#333'}},
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