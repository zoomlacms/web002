<%@ page language="C#" autoeventwireup="true" inherits="Skin_pie_basic, App_Web_x41nr0a4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head runat="server">
    <title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    //保留小数点后一位
    function Decimal(x) {
            var f_x = parseFloat(x);
            if (isNaN(f_x)) {
                alert('参数为非数字，无法转换！');
                return false;
            }
            var f_x = Math.round(x * 10) / 10;

            return f_x;
        }

        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '<%=BiaoS.Title %>'
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.point.name + '</b>: ' +Decimal(this.percentage) + ' %';
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            color: '#000000',
                            connectorColor: '#000000',
                            formatter: function () {
                                return '<b>' + this.point.name + '</b>: ' + Decimal(this.percentage) + ' %';
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Browser share',
                    data: [<%=BiaoS.X  %>
			]
                }]
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
