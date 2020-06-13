<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.GatherStrainManage.FileShareCreat, App_Web_2fd1wrub" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a>
</div>
<uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf2" runat="server" />
</div>
<div class="us_topinfo" style="margin-top: 10px;">
<table width="100%%" border="0" cellspacing="0" cellpadding="4">
	<tr>
		<td >
			<asp:Image ID="imgGSICQ" runat="server" Width="150px" Height="100px" /></td>
	</tr>
	<tr>
		<td >
			<asp:Label ID="labGSName" runat="server"></asp:Label> &gt;&gt; <a href="FileShareManage.aspx?GSID=<%=GSID %>">群族共享文件列表</a>
			&gt;&gt;群族上传共享文件      
		</td>
	</tr>
</table>
<hr />
<table width="100%" border="0" cellspacing="0" cellpadding="4">
	<tr>
		<td colspan="2">
			&nbsp; &nbsp;&nbsp;<strong>上传文件</strong> &nbsp;</td>
	</tr>
	<tr>
		<td style="width: 165px" align="right">
			&nbsp;上传文件路径：</td>
		<td>
			<asp:FileUpload ID="FileUpload1" runat="server" Width="533px" /></td>
	</tr>
	<tr>
		<td style="width: 165px" align="right">
			&nbsp;文件注释：</td>
		<td>
			<asp:TextBox ID="txtMono" runat="server" MaxLength="25" Width="527px"></asp:TextBox></td>
	</tr>
	<tr>
		<td style="width: 165px">
		</td>
		<td align="center">
			<asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click" Text="上传" />
			<asp:Button ID="btnCal" runat="server" OnClick="btnCal_Click" Text="取消" /></td>
	</tr>
</table>
</div>
</form>
</body>
</html>