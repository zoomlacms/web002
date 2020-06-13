<%@ page language="C#" autoeventwireup="true" inherits="Skin_colum, App_Web_x41nr0a4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>	<script type="text/javascript">
		    var chart;
		    $(document).ready(function () {
		        chart = new Highcharts.Chart({
		            chart: {
		                renderTo: 'container',
		                defaultSeriesType: 'column'
		            },
		            title: {
		                text: ''
		            },
		            subtitle: {
		                text: '<%=BiaoS.Title %>'
		            },
		            xAxis: {
		                categories: [<%=BiaoS.Y %>
			]
		            },
		            yAxis: {
		                min: 0,
		                title: {
		                    text: '单位 (<%=BiaoS.unit  %>)'
		                }
		            },
		            legend: {
		                layout: 'vertical',
		                backgroundColor: '#FFFFFF',
		                align: 'left',
		                verticalAlign: 'top',
		                x: 100,
		                y: 70,
		                floating: true,
		                shadow: true
		            },
		            tooltip: {
		                formatter: function () {
		                    return '' +
					this.x + ': ' + this.y + ' <%=BiaoS.unit  %>';
		                }
		            },
		            plotOptions: {
		                column: {
		                    pointPadding: 0.2,
		                    borderWidth: 0
		                }
		            },
		            series: [<%=BiaoS.X %>]
		        });
		    });

		</script>
<script src="Js/highcharts.js" type="text/javascript"></script>
<script src="Js/exporting.js" type="text/javascript" charset="gb2312"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container" style="width:<%=BiaoS.Width %>px; height:<%=BiaoS.Height %>px; margin:0;float:left"></div>
    </form>
</body>
</html>
