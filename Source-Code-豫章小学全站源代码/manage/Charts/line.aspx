<%@ page language="C#" autoeventwireup="true" inherits="Skin_line, App_Web_x41nr0a4" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    var chart;
    $(document).ready(function () {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container',
                defaultSeriesType: 'spline'
            },
            title: {
                text: ''
            },
            subtitle: {
                text: '<%=BiaoS.Title %>'
            },
            xAxis: {
                categories: [<%=BiaoS.Y %>]
            },
            yAxis: {
                title: {
                    text: '单位（<%=BiaoS.unit  %>）'
                },
                labels: {
                    formatter: function () {
                        return this.value + '<%=BiaoS.unit  %>'
                    }
                }
            },
            tooltip: {
                crosshairs: true,
                shared: true
            },
            plotOptions: {
                spline: {
                    marker: {
                        radius:2,
                        lineColor: '#666666',
                        lineWidth: 1
                    }
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
