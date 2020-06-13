<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.User_GetPassword, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>找回密码</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="main">
<div id="main_l" style="height: 500px;">
	<ul>
		<h1> 找回密码[通过问题或邮件找回您的登陆密码]</h1>
		<asp:Panel ID="PnlStep1" runat="server" Visible="false">
			<li>输入会员名：<asp:TextBox ID="TxtUserName" runat="server" CssClass="input_out" runat="server"
				onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
				onmousemove="this.className='input_move'" onmouseout="this.className='input_out'">
			</asp:TextBox><asp:RequiredFieldValidator ID="ValrTxtUserName" runat="server" ErrorMessage="请输入用户名！"
				ControlToValidate="TxtUserName" Display="dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator></li>
			<li style="margin-top:3px">输入验证码：<span
					style="margin-left: 5px"><asp:TextBox ID="txtCode" MaxLength="6" runat="server" style="width:70px;border:#CCC solid 1px;height:18px; line-height:23px;" autocomplete="off"></asp:TextBox></span>
				<span> <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="18px"
				ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;"
				onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" /></span> 
			  </li>
		   <li><asp:Button ID="BtnStep1" runat="server" Text="下一步" OnClick="BtnStep1_Click" class="i_bottom" /></li>
		</asp:Panel>
		<asp:Panel ID="PnlStep2" runat="server" Visible="false">
			<li>密码提示问题：<asp:Literal ID="LitQuestion" runat="server"></asp:Literal></li>
			<li>密码提示答案：<asp:TextBox ID="TxtAnswer" runat="server" CssClass="input_out" runat="server"
				onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
				onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox></li>
			<asp:Button ID="BtnStep2" runat="server" Text="完成" OnClick="BtnStep2_Click" class="i_bottom" />
		</asp:Panel>
		<asp:Panel ID="PnlStep3" runat="server" Visible="false">
			<li>新密码：<asp:TextBox ID="TxtPassword" TextMode="Password" runat="server"></asp:TextBox></li>
			<li>确认新密码：<asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"
				Width="148px" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
				onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};"
				onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox>
				<asp:CompareValidator ID="CompareValTxtConfirmPassword" ControlToValidate="TxtConfirmPassword"
					ControlToCompare="TxtPassword" Display="Dynamic" Type="String" Operator="Equal"
					runat="server" ErrorMessage="两次密码输入不一致！"></asp:CompareValidator>
				<asp:Button ID="BtnStep3" runat="server" Text="修改密码" OnClick="BtnStep3_Click" class="i_bottom" />
			</li>
		</asp:Panel>
	</ul>
</div>
<div id="main_r">
	<h2>
		登陆会员中心您将获得：</h2>
	<ul>
		<li>自由发布信息</li>
		<li>查看积分与管理空间</li>
		<li>设定您的个性化空间</li>
		<li>提交您的需求为您服务</li>
		<li>购物支付多彩商务体验</li>
		<li>专业的用户中心引领E时代！</li>
	</ul>
</div>
</div>
<!--main end -->
<div id="bottom" style="margin-top: 5px">
<a href="/">
	<img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
<p>
	<script language="javascript" type="text/javascript"> 
<!--
		var year = "";
		mydate = new Date();
		myyear = mydate.getYear();
		year = (myyear > 200) ? myyear : 1900 + myyear;
		document.write(year); 
--> 
	</script>
	&nbsp;Copyright&copy;&nbsp;
	<%Call.Label("{$SiteName/}"); %>
	All rights reserved.</p>
</div>
</form>
</body>
</html>
