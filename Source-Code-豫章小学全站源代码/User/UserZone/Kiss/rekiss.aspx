<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Kiss_rekiss, App_Web_yds1laf5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置中心</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script src='<%=ResolveUrl("~/js/RiQi.js")%>' type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<style type="text/css">
.style3{height: 30px;}
.style4{height: 22px;}
.style6{height: 37px;}
.style7{height: 291px;}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="s_bright">
<!-- str -->
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_top"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_parent">会员中心</a>&gt;&gt;设置中心&gt;&gt;我的秋波
</div>
<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<br />
	<div class="us_topinfo">
		<table width="100%" height="91" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top" style="width: 100%">
							<table width="100%" border="0" cellpadding="0" cellspacing="0" style="word-break:break-all">
								<tr>
									<td align="center" class="style6" colspan="2">
					 
										<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
										
									</td>
								</tr>
								<tr>
									<td align="center" class="style5">
										标题：<br />
									</td>
									<td valign="top" style="white-space: normal" class="style4">
									<asp:TextBox ID="TextBox1" runat="server" Width="563px"></asp:TextBox>
									</td>
								</tr>
								<tr>
									<td align="center" class="style7">
					 
										<asp:Image ID="Image1" runat="server" Height="96px" Width="96px" />
										<br />
										<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
									</td>
									<td valign="top" style="white-space: normal" class="style7">
										<br />
								 <textarea cols="80" id="txt_content" width="715px" height="400px" name="txt_content" rows="10"></textarea>
<script id="headscript" type="text/javascript">
//<![CDATA[
CKEDITOR.replace('txt_content',
{
skin: 'v2',
enterMode: 2,
shiftEnterMode: 2,
toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
//]]>
</script></td>
								</tr>
								<tr>
									<td align="center" class="style5">
					 
										&nbsp;</td>
									<td class="style3">	
										<asp:Button ID="Button1" runat="server" Text="发送" onclick="Button1_Click" />
										<asp:Button ID="Button2" runat="server" Text="返回" onclick="Button2_Click" />
									</td>
								</tr>
								<tr>
									<td align="center" valign="top" class="style5">
									</td>
									<td class="trr">
									</td>
								</tr>
							</table>
				
				</td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>