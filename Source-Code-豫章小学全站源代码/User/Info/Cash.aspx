<%@ page language="C#" autoeventwireup="true" inherits="User_Info_Cash, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>申请提现</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="us_topinfo">
<div class="us_showinfo">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a></span>
    &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>VIP信息</span></span>
</div>
</div>
    <div class="us_seta" style="margin-top: 10px;" id="manageinfos" runat="server">
        <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    </div>    
     <div class="us_seta" style="margin-top: 10px; height:28px; line-height:28px; padding-left:10px;" id="Div1" runat="server">
     <asp:Label ID="Label8" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label2" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label3" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label6" runat="server" ></asp:Label>&nbsp;&nbsp;&nbsp;
     你已申请的金额为：<asp:Label ID="Label7" runat="server" ></asp:Label>元
     <asp:HiddenField ID="Hiddenhaochu" runat="server" />
     <asp:HiddenField ID="Hiddenzong" runat="server" />
    <asp:HiddenField ID="HiddenUser" runat="server" />
     <asp:HiddenField ID="HiddenOld" runat="server" />
    </div>         
<br />
<div class="us_seta" style="height:0px; clear:both;" id="manageinfo" runat="server"><h1 style="text-align: center">申请提现</h1></div>       
<div class="Pay_class">
    <ul>
	<li><p>您的当前余额为：</p><span>￥</span><asp:Label ID="Ymoney" runat="server" Text="Label"></asp:Label></li>		
	<li><p>选择您的银行账户：</p><div style="float:left"><asp:Label ID="Label1" runat="server" Width="124px"></asp:Label><asp:Label ID="Label4" runat="server"></asp:Label></div></li>		
	<li><p>开户人:</p><asp:Label ID="Label5" runat="server" Text=""></asp:Label></li>	
	<li><p>申请金额:</p><span><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></span></li>	
	<li><p>确认金额:</p><span><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></span></li>	
    <li><p></p><asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="/User/Images/pay_button.jpg" onclick="ImageButton1_Click" /></li>
    </ul>
 </div>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
    runat="server" ErrorMessage="申请金额必须为数字" 
    ControlToValidate="TextBox3" ValidationExpression="^([+-]?)\d*[.]?\d*$"></asp:RegularExpressionValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
    runat="server" ErrorMessage="确认金额必须为数字" 
    ControlToValidate="TextBox4" ValidationExpression="^([+-]?)\d*[.]?\d*$"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="申请金额不能为空" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="确认金额不能为空" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
</body>
</html>