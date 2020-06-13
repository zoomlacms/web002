<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ModifyFlow, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改审核状态</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="myform" runat="server">
<div class="r_navigation">
	<span>后台管理</span>&gt;&gt;<span>系统设置</span> &gt;&gt;<span>流程管理</span> &gt;&gt;<span><a href="SpecialManage.aspx">修改审核状态</a></span>
</div>
<div class="clearbox">
</div>
<div>
	<table style="text-align:center; width:100%">
		<thead class="spacingtitle">
			<tr>
				<td colspan="2" align="center" >修改流程</td>
			</tr>
		</thead>
		<tbody class="tdbg">
			<tr  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
				<td style="width:20%">流程名称</td>
				<td align="left">
					<input id="txtName" class="l_input" runat="server"  size="50" /><label style="color:Red">*</label>
				</td>
			</tr>
			<tr>
				<td style="width:20%">
					流程描述
				</td>
				<td  align="left">
					<textarea id="txtFlowDepict"  runat="server" rows="10" cols="8" style="width:360px"></textarea>
				</td>
			</tr>
			<tr><td colspan="2" align="center">
			<asp:Button ID="btnSave" runat="server" class="C_input"  Text="保存状态码" onclick="btnSave_Click"  /></td></tr>
		</tbody>
	</table>
</div>
</form>
</body>
</html>