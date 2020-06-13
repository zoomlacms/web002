<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_CreateCourse, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>添加申请</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a href="ApplicationCourese.aspx">申请新课</a>
</div>
<div class="us_seta" style="margin-top: 5px;">
	<h1 align="center">申请课程</h1>
</div>
<table id="Course" runat="server" width="100%" cellpadding="5" cellspacing="1">
	<tr>
		<td style="padding: 5px">
			&nbsp;<strong>班级名称:</strong>
		</td>
		<td>
			<asp:Label ID="lblName" runat="server"></asp:Label>
		</td>
	</tr>
	<tr>
		<td width="25%" style="padding: 5px">
			申请原因:
		</td>
		<td style="margin-top: 5px; padding: 5px">
			<asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" Height="83px" Width="442px"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td>
		</td>
		<td style="padding: 5px">
			<asp:Button ID="Button1" runat="server" Text="申请" Width="68px" class="i_bottom" OnClick="Button1_Click" />
			&nbsp;<input type="button" value=" 返回 " onclick="history.go(-1);" />
			<asp:Label ID="lblTip" runat="server"></asp:Label>
			<asp:HiddenField ID="hfCourseID" runat="server" />
			<asp:HiddenField ID="hfClassId" runat="server" />
		</td>
	</tr>
</table>
<table id="payinfo" runat="server" width="500px" cellspacing="1" cellpadding="2"
	style="background-color: #CCCCCC;" align="center">
	<tr class="title">
		<td colspan="2">
			<b>在线支付</b>
		</td>
	</tr>
	<tr class="tdbg">
		<td style="width: 30%; text-align: right;">
			支付平台：
		</td>
		<td style="text-align: left;">
			<asp:DropDownList ID="DDLPayPlat" runat="server" Width="70px">
			</asp:DropDownList>
		</td>
	</tr>
	<tr class="tdbg">
		<td style="text-align: right;">
			支付金额：
		</td>
		<td style="text-align: left;">
			<asp:TextBox ID="TxtvMoney" Text="0" runat="server" Enabled="false"></asp:TextBox>
			<asp:HiddenField ID="hfMoney" runat="server" />
		</td>
	</tr>
	<tr class="tdbg">
		<td colspan="2">
			<asp:HiddenField ID="hfIds" runat="server" />
			<asp:Button ID="BtnSubmit" runat="server" Text=" 下一步 " OnClick="BtnSubmit_Click" />
			<%if (Request.UrlReferrer.ToString().IndexOf("MyCoruse.aspx") > 0)
			  {
			%>
			&nbsp;<input type="button" value=" 返回 " onclick="history.go(-1);" />
			<%
				}%>
		</td>
	</tr>
</table>
</form>
</body>
</html>