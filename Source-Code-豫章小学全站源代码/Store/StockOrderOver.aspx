<%@ page language="C#" autoeventwireup="true" inherits="StockOrderOver, App_Web_mxd1cmnv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>完成订单提交</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="main" class="rg_inout">

		<h1>第三步:完成订单提交<span>[<asp:Label ID="Label1" runat="server" BorderWidth="0px" ForeColor="Red"></asp:Label>]</span><img src="/user/images/regl3.gif" width="242" height="14" /></h1>

	    	<ul>
	        <li style="text-align:center">
	        </li>
	        </ul>   
	    	<ul>
	        <li style="text-align:center">
	        <asp:Button ID="Button1" runat="server" Text="使用在线支付" OnClick="Button1_Click" />
	        <asp:Button ID="Button2" runat="server" Text="返回首页" />
	        </li>
	        </ul>
	</div>
</div>

<div id="bottom"> <a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p> 
  <script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp;
  <%Call.Label("{$SiteName/}"); %>
  All rights reserved.</p>
</div>
</form>
</body>
</html>