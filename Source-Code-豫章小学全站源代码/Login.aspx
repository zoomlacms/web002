<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite._Login, App_Web_faqyczhv" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员登录</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script  type="text/javascript"  src="/CounterLink.aspx"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/jqueryajax.js"></script>
<script>
    var frmin = "";
    function loginSec(obj) {
        //obj ==0 为登录成功,-1你的帐户未通过验证或被锁定，请与网站管理员联系
        window.onload = function () { sybot(); }
    }

    function sybot(url) {
        setTimeout(changeurl, 1000);
    }

    function changeurl() {
        document.getElementById("pasd").src = document.getElementById("script").value;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<asp:Panel ID="PnlLogin" runat="server">
<div id="login">
    <ul>
      <li>用户名：<asp:TextBox ID="TxtUserName" class="l_input" Width="95" runat="server"></asp:TextBox></li>
      <li>密　码：<asp:TextBox ID="TxtPassword" class="l_input" runat="server" Width="95" TextMode="Password"></asp:TextBox></li>
      <li><asp:PlaceHolder ID="PhValCode" runat="server">验证码：<asp:TextBox ID="TxtValidateCode" MaxLength="6" Width="60" class="l_input" runat="server" onfocus="this.select();"></asp:TextBox>     <asp:Image ID="VcodeLogin" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" /></asp:PlaceHolder> 
      </li>
      <li>
      <asp:Button ID="BtnLogin" runat="server" class="C_input" Text="登录" OnClick="BtnLogin_Click" />&nbsp;&nbsp;
      <a href="User/Register.aspx" target="_top">注册</a>｜<a href="User/GetPassword.aspx" target="_top">忘记密码</a>
      </li>
    </ul>
</div>
    <asp:RequiredFieldValidator ID="ValrUserName" runat="server" ErrorMessage="请输入用户名！" ControlToValidate="TxtUserName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="ValrPassword" runat="server" ErrorMessage="请输入密码！" ControlToValidate="TxtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="ValrValidateCode" runat="server" ErrorMessage="请输入验证码！"  ControlToValidate="TxtValidateCode" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
</asp:Panel>
<asp:Panel ID="PnlLoginStatus" runat="server">
    <div id="logged">
        <ul>
        	<li><asp:Literal ID="LitUserName" runat="server"></asp:Literal>，您好！</li>             
          <li><asp:Literal ID="LitMessage" runat="server">0</asp:Literal></li>
          <li><asp:Literal ID="LitLoginTime" runat="server">0</asp:Literal></li> 
          <li><asp:Literal ID="LitLoginDate" runat="server">0</asp:Literal></li>               
          <li><a href="User/Default.aspx" target="_top">会员中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="javascript:void(0);" onClick="logout()" target="_top">退出登录</a></li>
        </ul>
    </div>
    <iframe name="pasd" id="pasd" width="0px" height="0px"></iframe>
</asp:Panel>
<asp:Panel ID="PnlLoginMessage" runat="server" Visible="false">
  <ul>
    <asp:Literal ID="LitErrorMessage" runat="server"></asp:Literal>
    <li><asp:Button ID="BtnReturn" runat="server" class="C_input" Text="返回" OnClick="BtnReturn_Click" /></li>
  </ul>
</asp:Panel>
</form>
<script type="text/javascript">
function logout(){
	ZoomLa.ajaxlogout(function(){
		window.location="/login.aspx?Style="+Style;
	});
}
	//登录样式 1为纵向 2为横向
	var Style='<%=Request.QueryString["Style"]%>';
	if(Style=="2")
	{
		//登录前
		var Login=document.getElementById("login");
		if(Login!=null){
			Login.className="horizontal";
		}
		//登录后
		var Logged=document.getElementById("logged");
		if(Logged!=null)
		{
			Logged.className = "horizontal";
		}
		//登录错误
		var PnlLoginMessage=document.getElementById("PnlLoginMessage");
		if(PnlLoginMessage!=null){
			PnlLoginMessage.className="horizontal";	
		}
	}
</script>
</body>
</html>