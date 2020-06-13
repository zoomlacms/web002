<%@ page language="C#" autoeventwireup="true" inherits="User_CashCoupon_ArriveJihuo, App_Web_qn0afzdj" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head runat="server">
<title>优惠券激活</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置： <a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a> &gt;&gt; <a title="会员中心" href="../Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a title="抵用劵激活" href="ArriveJihuo.aspx">优惠劵激活</a>
</div>
<div class="us_seta"  style="margin-top:5px;">
<h1 align="center">优惠劵激活</h1>
</div>
<div style=" text-align:center">
优惠券编号：<asp:TextBox class="border" ID="ANo" runat="server"></asp:TextBox></br></br>
优惠券密码：<asp:TextBox class="border" ID="APwd" runat="server"></asp:TextBox>
</div>
<div style=" text-align:center; margin-top:20px;">
    <asp:Button ID="Btn" runat="server" Text="激活优惠券" Height="25px" onclick="Btn_Click"/>
</div>
</form>
</body>
</html>
