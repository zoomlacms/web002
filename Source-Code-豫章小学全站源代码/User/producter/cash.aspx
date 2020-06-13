<%@ page language="C#" autoeventwireup="true" inherits="User_producter_cash, App_Web_nqneripe" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>！您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心"  href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a href="UserInfo.aspx">账户管理</a>&gt;&gt;VIP信息
</div>
<div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
    &nbsp;&nbsp;<a href="ProducterManage.aspx">产品管理</a>
    &nbsp;&nbsp;<a href="cash.aspx">申请现金</a>
    &nbsp;&nbsp;<a href="CashInfo.aspx">帐户查看</a></div></div>
    <div class="us_seta" style="margin-top: 10px;" id="Div1" runat="server">
    <asp:Label ID="Label2" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
	<asp:Label ID="Label3" runat="server" ></asp:Label>
	<asp:HiddenField ID="Hiddenhaochu" runat="server" />
	<asp:HiddenField ID="Hiddenzong" runat="server" />
	<asp:HiddenField ID="HiddenUser" runat="server" />
    <asp:HiddenField ID="HiddenOld" runat="server" />
</div>
         
<div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
    <h1 style="text-align: center">提交申请</h1>
    <div style=" text-align:center; vertical-align:middle; height:220px;">
    <ul class="listul" style=" text-align:center;">
	<li style=" text-align:center;">你以申请现金：</li><li><span>￥<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
		：</li>		
	</ul>
		
		<ul class="listul">
	<li>您的当前余额为：</li>
	<li>
        ￥<span><asp:Label ID="Ymoney" runat="server" Text="Label"></asp:Label></span> </li>		
	</ul>
		<ul class="listul">
	<li>选择您的银行账户：</li><li>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></li>		
	</ul>
		<ul class="listul">
	<li>开户人:</li><li><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		
		
	</li>		
            
	</ul>
		<ul class="listul">
	<li>申请金额:</li><li><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></li>		
	</ul>
		<ul class="listul">
	<li>确认金额:</li><li><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></li>		
		     
	</ul>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/User/Images/button.bmp" onclick="ImageButton1_Click" />
    </div>
	<asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ErrorMessage="申请金额必须为数字"  ControlToValidate="TextBox3" ValidationExpression="^([+-]?)\d*[.]?\d*$"></asp:RegularExpressionValidator>
	<asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ErrorMessage="确认金额必须为数字"   ControlToValidate="TextBox4" ValidationExpression="^([+-]?)\d*[.]?\d*$"></asp:RegularExpressionValidator>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   ErrorMessage="开户人不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="申请金额不能为空" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ErrorMessage="确认金额不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
	<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="银行帐号不能为空" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
</div>
</form>
</body>
</html>