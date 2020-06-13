<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddAuditingState, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>审核状态</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="myform" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="SpecialManage.aspx">添加审核状态</a></div>
<table style="text-align:center; width:100%">
	<thead class="spacingtitle">
		<tr>
			<td colspan="2" align="center" >
				添加审核状态码
			</td>
		</tr>
	</thead>
	<tbody class="tdbg">
		<tr>
			<td style="width:20%">
				录入状态码
			</td>
			<td align="left">
				<asp:DropDownList ID="ddlStateCode" runat="server" DataSourceID="odsStateCode">
				</asp:DropDownList>
				<asp:ObjectDataSource ID="odsStateCode" runat="server" 
					SelectMethod="GetStateCode" TypeName="ZoomLa.BLL.B_AuditingState">
				</asp:ObjectDataSource>
			</td>
		</tr>
		<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td style="width:20%">
				入录状态名称
			</td>
			<td  align="left">
				<input id="stateName" runat="server"  size="50"  class="l_input"/>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="stateName" ErrorMessage="状态名称不能为空"></asp:RequiredFieldValidator>
			</td>
		</tr>
		<tr><td colspan="2" align="center"><asp:Button ID="btnSave" runat="server" Text="保存状态码" onclick="btnSave_Click" class="C_input"  style="width:100px;"  /></td></tr>
	</tbody>
</table>
</form>
</body>
</html>