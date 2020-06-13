<%@ page language="C#" autoeventwireup="true" inherits="sendgoods, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<head runat="server">
    <title>发货结果</title>
    <style type="text/css">
.font_content{
	font-family:"宋体";
	font-size:14px;
	color:#FF6600;
}
.font_title{
	font-family:"宋体";
	font-size:16px;
	color:#FF0000;
	font-weight:bold;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">

    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="UserOrderlist.aspx">店铺订单</a>&gt;&gt; <span>订单详情</span>
    </div>
    <div>
    <asp:Label ID="LblXml" runat="server" Text=""></asp:Label>  
    </div>
    </form>
</body>
</html>
