<%@ page language="C#" autoeventwireup="true" inherits="User_Project_ProjectRequire, App_Web_ndk53ewn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>需求提交</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="提交服务" href="Project/ProjectList.aspx">提交服务</a>
</div>
<div class="us_topinfo" style="margin-top:10px;"><a href="ProjectRequire.aspx">提交需求</a> <a href="ProjectList.aspx">我的项目</a></div> 
<div style="margin-top:10px;">
	  <div class="us_seta" style="margin-top:5px;">
		  <h1><div align="center"><asp:Label ID="LblTitle" runat="server" Text="提交项目创建请求" Font-Bold="True"></asp:Label></div></h1>
		
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">用户名：</div>
		  </li>
		<li style="width:83%;line-height:30px">
	   <asp:TextBox ID="TxtUserName" runat="server" ReadOnly="true"></asp:TextBox>
			<asp:RequiredFieldValidator ID="ValrKeywordText" ControlToValidate="TxtUserName"
				runat="server" ErrorMessage="用户名不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
		</li>
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">需求描述：</div>
		  </li>
		<li style="width:83%;line-height:30px">
		<asp:TextBox ID="TxtRequireContent" runat="server" TextMode="MultiLine" Columns="50" Rows="5"></asp:TextBox>
		   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TxtUserName"
				runat="server" ErrorMessage="需求描述不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
		</li>
		<li style="width:100%; float:left;line-height:30px">
			   <div align="center">
		  <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp;&nbsp;
			<input name="Cancel" type="button" class="inputbutton" id="Cancel" value="取消" onclick="javascript:window.location.href='ProjectList.aspx'" />
				</div>
		</li>
		<li style="width:100%; float:left;line-height:30px">
			<div align="center"></div>
		</li>  
	  </div>
</div>
</div>
</form>
</body>
</html>