<%@ page language="C#" autoeventwireup="true" inherits="manage_Counter_CodeReference, App_Web_jul0migs" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>统计代码调用</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 扩展功能 &gt;&gt; 访问统计 &gt;&gt;统计代码调用</div>
	<table width="100%" cellpadding="0" cellspacing="0" border="0" class="tables">
		<tr class="spacingtitle">
			<td  align="center">
				统计代码调用
			</td>
		</tr>
		<tr class="tdbg">
			<td style="white-space: normal; width: 30%; height: 69px;" class="tdbgleft">
				<strong>获取所有访问来源统计代码：</strong><br />
				本方法可统计所有网址(IP或URL)的访问来源数据，请将此代码拷贝到您需要做统计的页面，此代码不仅用于向放置了此代码的页面输出统计数据，用户可根据需要自行调用(如网站存储于虚拟目录或特殊路径，请在"/"前定义相对路径)。
			</td>
		</tr>
		<tr>
			<td align="center" style="height: 109px">
				<asp:TextBox ID="TextBox1" class="l_input" runat="server" Height="50px" Width="595px" TextMode="MultiLine" Text='<script  type="text/javascript"  src="/CounterLink.aspx"></script>'></asp:TextBox>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
