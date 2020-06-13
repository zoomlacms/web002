<%@ page language="C#" autoeventwireup="true" inherits="Skin_drilldown, App_Web_y3f5bxz0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>股票(<%=Request.QueryString["ID"] %>)</title>	
<script src="../JS/jquery.js" type="text/javascript"></script> 
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" /> 
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
</script>
<%if (xid == "1x"|| xid == "4x")
  { %>
        <!--每股收益|主营收入--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                <%if(xid == "1x") {%>
                    renderTo: 'Gs1',
                    <%}else if(xid == "4x" ) {%>
                    renderTo: 'Sy1',
                    <%} %>
                    defaultSeriesType: 'column'
                },
                title: {
                 <%if(xid == "1x" ) {%>
                    text: '每股收益(元)'
                    <%}else if(xid == "4x") {%>
                    text: '主营收入(万元)'
                    <%} %>
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 20,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                <%if(xid == "1x" ) {%>
                    name: '每股收益',
                    <%}else if(xid == "4x" ) {%>
                    name: '主营收入',
                    <%} %>
                    data: [<%=Gs1 %>]
                }]
            });
        });
		</script>
        <!--每股净资金|净利润--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                <%if(xid == "1x" ) {%>
                    renderTo: 'Gs2',
                    <%}else if(xid == "4x") {%>
                    renderTo: 'Sy2',
                    <%} %>
                    defaultSeriesType: 'column'
                },
                title: {
                <%if(xid == "1x" ) {%>
                    text: '每股净资金(元)'
                    <%}else if(xid == "4x" ) {%>
                    text: '净利润(万元)'
                    <%} %>
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 20,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                <%if(xid == "1x") {%>
                    name: '每股净资金',
                    <%}else if(xid == "4x" ) {%>
                    name: '净利润',
                    <%} %>
                    data: [<%=Gs2 %>]
                }]
            });
        });
		</script>

        <!--每股未分配利润|三费合计--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    <%if(xid == "1x") {%>
                    renderTo: 'Gs3',
                    <%}else if(xid == "4x") {%>
                    renderTo: 'Sy3',
                    <%} %>
                    defaultSeriesType: 'column'
                },
                title: {
                 <%if(xid == "1x") {%>
                    text: '每股未分配利润(元)'
                    <%}else if(xid == "4x") {%>
                    text: '三费合计(万元)'
                    <%} %>
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 20,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                <%if(xid == "1x") {%>
                    name: '每股未分配利润',
                    <%}else if(xid == "4x") {%>
                    name: '三费合计',
                    <%} %>
                    data: [<%=Gs3 %>]
                }]
            });
        });
		</script>

       <!--每股资公积金|应收账款--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                   <%if(xid == "1x") {%>
                    renderTo: 'Gs4',
                    <%}else if(xid == "4x") {%>
                    renderTo: 'Sy4',
                    <%} %>
                    defaultSeriesType: 'column'
                },
                title: {
                <%if(xid == "1x") {%>
                    text: '每股资公积金(元)'
                    <%}else if(xid == "4x") {%>
                    text: '应收账款(万元)'
                    <%} %>
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 20,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                <%if(xid == "1x") {%>
                    name: '每股资公积金',
                    <%}else if(xid == "4x") {%>
                    name: '应收账款',
                    <%} %>
                    data: [<%=Gs4 %>]
                }]
            });
        });
		</script>
<%}
  else if (xid == "2x" || xid.Contains("10002"))
  { %>

<% if (xid == "2x" || xid == "100021" || xid == "100025")
   {%>
        <!--十大股东--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gd1',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '十大股东'
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
                    data: [<%=datas[0] %>
			]
                }]
            });
    });
</script>
<%} if (xid == "2x")
   {%>
        <!--十大流通股东--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gd2',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '十大流通股东'
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
                    data: [<%=datas[1] %>
			]
                }]
            });
    });
</script>
<%} if (xid == "2x")
   {%>
        <!--股本构成--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gd3',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '股本构成'
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
                    data: [<%=datas[2] %>
			]
                }]
            });
    });
</script>
<% } if (xid == "2x")
   {%>
        <!--股东人数--><script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gd4',
                    defaultSeriesType: 'column'
                },
                title: {
                    text: '股东人数(人)'
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 10,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: true
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                    name: '股东人数',
                    data: [<%=datas[3] %>]
                }]
            });
        });
		</script>
<%}
  }
  else if (xid == "3x" || xid.Contains("10003"))
  { %>

  <script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gz1',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '资产构成(万元)'
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
                    data: [<%=datas[0] %>
			]
                }]
            });
    });
</script>
<% } if (xid == "3x" || xid.Contains("10003"))
     {%>
<script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gz2',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: '负债构成(万元)'
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
                    data: [<%=datas[1] %>
			]
                }]
            });
    });
</script>


          <!--资产合计 | 负债合计-->
          <% } if (xid == "3x" || xid.Contains("10003"))
     {%>
          <script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gz3',
                    defaultSeriesType: 'column'
                },
                title: {
                    text: '资产合计(万元)'
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 20,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                    name: '资产合计',
                    data: [<%=Gs3 %>]
                }]
            });
        });
		</script>

          <script type="text/javascript">
        var chart;
        $(document).ready(function () {
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'Gz4',
                    defaultSeriesType: 'column'
                },
                title: {
                    text: '负债合计(万元)'
                },
                xAxis: {
                    categories: [<%=categories1 %>]
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: ''
                    },
                    stackLabels: {
                        enabled: true,
                        style: {
                            fontWeight: 'bold',
                            color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                        }
                    }
                },
                legend: {
                    align: 'right',
                    x: -100,
                    verticalAlign: 'top',
                    y: 20,
                    floating: true,
                    backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColorSolid) || 'white',
                    borderColor: '#CCC',
                    borderWidth: 1,
                    shadow: false
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.x + '</b><br/>' +
					this.series.name + ': ' + this.y;
                    }
                },
                plotOptions: {
                    column: {
                        stacking: 'normal',
                        dataLabels: {
                            enabled: false,
                            color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white'
                        }
                    }
                },
                series: [{
                    name: '负债合计',
                    data: [<%=Gs4 %>]
                }]
            });
        });
		</script>

<%}
  else if (xid == "5x" || xid == "6x" || xid == "7x" || xid == "8x")
  { %>
        <!--净资产收益率 | 总资产周转率 | 每股经营现金净流量  | 资产负债率--><script type="text/javascript">
      var chart;
      $(document).ready(function () {
          chart = new Highcharts.Chart({
              chart: {
                  renderTo: 'Cz1',
                  defaultSeriesType: 'line'
              },
              title: {
                  text: ''
              },
              subtitle: {
              <% if(xid=="5x"){ %>
                  text: '净资产收益率(%)'
                  <%} else if( xid == "6x"){%>
                  text: '总资产周转率(%)'
                  <%} else if( xid == "7x"){%>
                  text: '每股经营现金净流量(元)'
                  <%} else if( xid == "8x"){%>
                  text: '资产负债率(%)'
                  <%} %>
              },
              xAxis: {
                  categories: [<%=categories1 %>]
              },
              yAxis: {
                  title: {
                      text: ''
                  }
              },
              tooltip: {
                  enabled: false,
                  formatter: function () {
                      return '<b>' + this.series.name + '</b><br/>' +
					this.x + ': ' + this.y;
                  }
              },
              plotOptions: {
                  line: {
                      dataLabels: {
                          enabled: true
                      },
                      enableMouseTracking: false
                  }
              },
              series: [{
              <% if(xid=="5x"){ %>
                  name: '净资产收益率',
                  <%} else if( xid == "6x"){%>
                  name: '总资产周转率',
                  <%} else if( xid == "7x"){%>
                  name: '每股经营现金净流量',
                  <%} else if( xid == "8x"){%>
                  name: '资产负债率',
                  <%} %>
                  data: [<%=Gs1 %>]
              }]
          });
      });

		</script>

        <!--营利利润率 | 存货周转率 | 经营现金流量比率利润 | 流动比率--><script type="text/javascript">
      var chart;
      $(document).ready(function () {
          chart = new Highcharts.Chart({
              chart: {
                  renderTo: 'Cz2',
                  defaultSeriesType: 'line'
              },
              title: {
                  text: ''
              },
              subtitle: {
               <% if(xid=="5x"){ %>
                  text: '营利利润率(%)'
                  <%} else if( xid == "6x"){%>
                  text: '存货周转率(%)'
                  <%} else if( xid == "7x"){%>
                  text: '经营现金流量比率利润(元)'
                  <%} else if( xid == "8x"){%>
                  text: '流动比率(%)'
                  <%} %>
              },
              xAxis: {
                  categories: [<%=categories1 %>]
              },
              yAxis: {
                  title: {
                      text: ''
                  }
              },
              tooltip: {
                  enabled: false,
                  formatter: function () {
                      return '<b>' + this.series.name + '</b><br/>' +
					this.x + ': ' + this.y;
                  }
              },
              plotOptions: {
                  line: {
                      dataLabels: {
                          enabled: true
                      },
                      enableMouseTracking: false
                  }
              },
              series: [{
              <% if(xid=="5x"){ %>
                  name: '营利利润率',
                  <%} else if( xid == "6x"){%>
                  name: '存货周转率',
                  <%} else if( xid == "7x"){%>
                  name: '经营现金流量比率利润',
                  <%} else if( xid == "8x"){%>
                  name: '流动比率',
                  <%} %>
                  data: [<%=Gs2 %>]
              }]
          });
      });

		</script>

        <!--净利润率 | 固定资产周转率 | 经营现金流量比销售收入 | 速动比率--><script type="text/javascript">
      var chart;
      $(document).ready(function () {
          chart = new Highcharts.Chart({
              chart: {
                  renderTo: 'Cz3',
                  defaultSeriesType: 'line'
              },
              title: {
                  text: ''
              },
              subtitle: {
                  <% if(xid=="5x"){ %>
                  text: '净利润率(%)'
                  <%} else if( xid == "6x"){%>
                  text: '固定资产周转率(%)'
                  <%} else if( xid == "7x"){%>
                  text: '经营现金流量比销售收入(元)'
                  <%} else if( xid == "8x"){%>
                  text: '速动比率(%)'
                  <%} %>
              },
              xAxis: {
                  categories: [<%=categories1 %>]
              },
              yAxis: {
                  title: {
                      text: ''
                  }
              },
              tooltip: {
                  enabled: false,
                  formatter: function () {
                      return '<b>' + this.series.name + '</b><br/>' +
					this.x + ': ' + this.y;
                  }
              },
              plotOptions: {
                  line: {
                      dataLabels: {
                          enabled: true
                      },
                      enableMouseTracking: false
                  }
              },
              series: [{
              <% if(xid=="5x"){ %>
                  name: '净利润率(%)',
                  <%} else if( xid == "6x"){%>
                  name: '固定资产周转率(%)',
                  <%} else if( xid == "7x"){%>
                  name: '经营现金流量比销售收入(%)',
                  <%} else if( xid == "8x"){%>
                  name: '速动比率(%)',
                  <%} %>
                  data: [<%=Gs3 %>]
              }]
          });
      });

		</script>

        <!--毛利率 | 应收账款周转率 | 经营现金流量对负债比 | 利息保障倍数--><script type="text/javascript">
      var chart;
      $(document).ready(function () {
          chart = new Highcharts.Chart({
              chart: {
                  renderTo: 'Cz4',
                  defaultSeriesType: 'line'
              },
              title: {
                  text: ''
              },
              subtitle: {
                  <% if(xid=="5x"){ %>
                  text: '毛利率(%)'
                  <%} else if( xid == "6x"){%>
                  text: '应收账款周转率(%)'
                  <%} else if( xid == "7x"){%>
                  text: '经营现金流量对负债比(元)'
                  <%} else if( xid == "8x"){%>
                  text: '利息保障倍数(%)'
                  <%} %>
              },
              xAxis: {
                  categories: [<%=categories1 %>]
              },
              yAxis: {
                  title: {
                      text: ''
                  }
              },
              tooltip: {
                  enabled: false,
                  formatter: function () {
                      return '<b>' + this.series.name + '</b><br/>' +
					this.x + ': ' + this.y;
                  }
              },
              plotOptions: {
                  line: {
                      dataLabels: {
                          enabled: true
                      },
                      enableMouseTracking: false
                  }
              },
              series: [{
              <% if(xid=="5x"){ %>
                  name: '毛利率(%)',
                  <%} else if( xid == "6x"){%>
                  name: '应收账款周转率(%)',
                  <%} else if( xid == "7x"){%>
                  name: '经营现金流量对负债比(%)',
                  <%} else if( xid == "8x"){%>
                  name: '利息保障倍数(%)',
                  <%} %>
                  data: [<%=Gs4 %>]
              }]
          });
      });

		</script>
<%} %><script src="../manage/Charts/Js/exporting.js" type="text/javascript"></script>
<script src="../manage/Charts/Js/highcharts.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
    <span id="stockTop">
        <asp:Label ID="Zt" runat="server" Text=""></asp:Label>(<font color="red"><%=Request.QueryString["ID"] %></font>)
    </span><br />
     <div id="stockMeu"><ul id="Gdh">
        <li><a href="?ID=<%=ID %>&ZID=10001">主要财务</a></li>
        <li><a href="?ID=<%=ID %>&ZID=10002">股东股本</a></li>
       <li> <a href="?ID=<%=ID %>&ZID=10003">公司资产</a></li>
        <li><a href="?ID=<%=ID %>&ZID=10004"> 收益趋势</a></li>
        <li><a href="?ID=<%=ID %>&ZID=10005"> 盈利能力</a></li>
        <li><a href="?ID=<%=ID %>&ZID=10006"> 经营能力</a></li>
        <li><a href="?ID=<%=ID %>&ZID=10007"> 现金流量</a></li>
        <li><a href="?ID=<%=ID %>&ZID=10008"> 偿债能力</a></li>
    </ul></div>

    <%if (xid == "1x")
      { %>
        
        <div id="Gs1" class="stockTab1" ></div><br />
        <div id="Gs2"  class="stockTab1" ></div><br />
        <div id="Gs3"  class="stockTab1" ></div><br />
        <div id="Gs4"  class="stockTab1" ></div>
   <%}
      else if (xid == "2x")
      { %>
       
        <div id="Gd1" class="stockTab2"></div><br />
        <div id="Gd2"  class="stockTab2" ></div><br />
        <div id="Gd3"  class="stockTab2" ></div><br />
        <div id="Gd4"  class="stockTab1" ></div>
        
      }
    <%  }
      else if (xid == "3x" || xid.Contains("10003"))
      { %>
        <div id="Gz1"  class="stockTab2" ></div><br />
        <div id="Gz2"  class="stockTab2" ></div><br />
        <div id="Gz3"  class="stockTab2" ></div><br />
        <div id="Gz4"  class="stockTab2" ></div>
        <%}
      else if (xid == "4x")
      { %>
        <div id="Sy1"  class="stockTab1" ></div><br />
        <div id="Sy2"  class="stockTab1" ></div><br />
        <div id="Sy3"  class="stockTab1" ></div><br />
        <div id="Sy4"  class="stockTab1" ></div>
        <%}
      else if (xid == "5x" || xid == "6x" || xid == "7x" || xid == "8x")
      { %>
        <div id="Cz1"  class="stockTab1" ></div><br />
        <div id="Cz2"  class="stockTab1" ></div><br />
        <div id="Cz3"  class="stockTab1" ></div><br />
        <div id="Cz4"  class="stockTab1" ></div>
        <%} %>
    </form>
</body>
</html>
