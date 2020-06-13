<%@ page language="C#" autoeventwireup="true" inherits="User_Project_Detail, App_Web_ndk53ewn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目详细内容</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="s_bright">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="项目详细内容" href="/User/Detail.aspx">项目详细内容</a>
</div>   
<div class="us_topinfo" style="margin-top:10px;"><a href="ProjectRequire.aspx">提交需求</a> <a href="ProjectList.aspx">我的项目</a></div>
<div style="margin-top:10px;">
	  <div class="us_seta" style="margin-top:5px;">
	  
		<h1><div align="center"><asp:Label ID="LblTitle" runat="server" Text="客户项目详细信息" Font-Bold="True"></asp:Label></div></h1>
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right"></div>
		  </li>  
		<li style="width:83%;line-height:30px"> <asp:Label ID="LblProName" runat="server" Text=""></asp:Label></li>
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">项目简述：</div>
		  </li> 
		<li style="width:83%;line-height:30px"><asp:Label ID="LblProIntro" runat="server" Text=""></asp:Label></li>
		  <li style="width:15%; float:left;line-height:30px">
			<div align="right">开始时间：</div>
		  </li>  
		<li style="width:83%;line-height:30px"> <asp:Label ID="LblStartDate" runat="server" Text=""></asp:Label></li>            
		<li style="width:15%; float:left;line-height:30px">
			<div align="right">完成时间：</div>
		</li>  
		<li style="width:83%;line-height:30px">
		<asp:Label ID="LblEndDate" runat="server" Text=""></asp:Label>
		</li> 
		<li style="width:15%; float:left;line-height:30px">
			<div align="right">工作内容：</div>
		</li>
		<li style="width:83%;line-height:30px"><asp:Label ID="LblContent" runat="server" Text="暂无工作内容"></asp:Label>
		</li>
		<li style="width:100%; float:left;line-height:30px">
		  <div align="center">
		  </div>
		</li> 
		<li style="width:100%; float:left;line-height:30px">
		<div align="center">
		</div>
		</li>
	  </div>
</div>
</body>
</html>