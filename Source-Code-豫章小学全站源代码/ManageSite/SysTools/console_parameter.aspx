<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_SysTools_console_parameter, App_Web_grzskapq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>服务器参数查看 </title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">当前位置：功能导航 >><a href="console_parameter.aspx">服务器参数查看</a></div>
    <table style="width:100%;">
        <tr align="left" style="height:30px;"><td style="background-color:#F0F6FC; width:15%">参数名称</td><td style="background-color:#F0F6FC ;width:85%">值</td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>系统主机名：</td><td><%=HostName%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>系统根目录地址：</td><td><%=SysRoot%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>系统程序目录地址：</td><td><%=SysProRoot%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>计算机的网卡地址：</td><td><%=mac%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>计算机的CPU标识：</td><td><%=cpuInfo%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>计算机的硬盘序列号：</td><td><%=HDid %></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>域名：</td><td><%=DomainName%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>访问IP：</td><td><%=IpAddress%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>.NET版本：</td><td><%=NetVersion%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>CMS系统版本</td><td><%=CMSVersion%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>数据库类型：</td><td><%=DBType%></td></tr>
        <tr align="left" style="height:25px" onmouseover="this.bgColor='#DSE3EF'" onmouseout="this.bgColor='white'"><td>数据库名称：</td><td><%=DBName%></td></tr>  
    </table>
    </div>
    </form>
</body>
</html>
