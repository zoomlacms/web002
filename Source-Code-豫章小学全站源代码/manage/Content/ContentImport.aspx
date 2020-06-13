<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ContentImport, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>内容批量导入</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">>
<span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; <span>内容批量导入</span>
</div>
<div class="clearbox">
</div>
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
	<tr class="spacingtitle"><!--class="spacingtitle"-->
		<td>&nbsp;</td>
		<td align ="left">批量导入内容来自Excel文件（xls/xlsx)</td>
	</tr>
	<tr class="tdbg">
		<td class="tdbgleft"  rowspan="2" style="width: 20%" align="right">
			模板选择：
		</td>
		<td class="bqright">
			<asp:RadioButton ID="rbtExists" runat="server" GroupName="mode" Text="现有" 
				Checked="True" oncheckedchanged="rbtExists_CheckedChanged" 
				AutoPostBack="True" />&nbsp;&nbsp;
			<asp:DropDownList ID="DDLMode" runat="server">
			</asp:DropDownList>
			<br />
		</td>
	</tr>
	<tr class="tdbg">           
		<td class="bqright">
			<asp:RadioButton ID="rbtNew" runat="server" GroupName="mode" Text="新建" 
				oncheckedchanged="rbtExists_CheckedChanged" AutoPostBack="True" />
		</td>
	</tr>
	<tr class="tdbg">
		<td class="tdbgleft" style="width: 20%" align="right">
			文件选择：<font color="red">*</font></td>
		<td class="bqright">
		   <asp:FileUpload ID="fileImp" runat="server" />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
				ErrorMessage="RequiredFieldValidator" ControlToValidate="fileImp">请选择excel格式文件!</asp:RequiredFieldValidator>
			
		</td>
	</tr>
	<tr class="tdbg">            
		<td class="bqright" colspan="2">
			<asp:Panel ID="Panel1" runat="server" Visible="False">
				<table class="border" width="100%" cellpadding="2" cellspacing="1">
					<tr class="spacingtitle">
					<td>&nbsp;</td>
						<td align="left">
							<asp:Literal ID="LTitle" runat="server" Text="添加内容模型"></asp:Literal>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td td class="tdbgleft" style="width: 20%" align="right">
						   内容模型名称：
						<font color="red">*</font></td>
						<td td class="bqright">
							<asp:TextBox ID="TxtModelName" class="l_input" runat="server" Width="156" MaxLength="200" />
							&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
				ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtModelName">内容模型名称不能为空</asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td td class="tdbgleft"  rowspan="2" style="width: 20%" align="right">
							创建的数据表名：
						<font color="red">*</font></td>
						<td td class="bqright">
							<asp:Label ID="LblTablePrefix" runat="server" Text="ZL_C_" />
							<asp:TextBox ID="TxtTableName" class="l_input" runat="server" Width="121px" MaxLength="50" />
							&nbsp;<asp:RegularExpressionValidator ID="ValeTableName" runat="server" 
				ControlToValidate="TxtTableName" ErrorMessage="只允许输入字母、数字或下划线" 
				ValidationExpression="^[\w_]+$" SetFocusOnError="true" Display="Dynamic" />
							<asp:Label ID="lblTableNameErr" runat="server"></asp:Label>
						</td>
					</tr>
				</table>
			</asp:Panel>
		</td>
	</tr>
	<tr class="tdbg">
	<td> 
			<b>
			<asp:HiddenField ID="HdnState" runat="server" Value="0" />
		</td>
		<td class="bqright" align="left">              
	  <asp:Button ID="btnImport" class="C_input" runat="server" onclick="btnImport_Click" Text="导入" 
				CausesValidation="true" Width="75px" /><asp:Button ID="Button1"  class="C_input"
				runat="server" Text="返回" onclick="Button1_Click" Width="62px" CausesValidation=false />
		   </b>
			<b>
			<asp:HiddenField ID="HdnModelId" runat="server" />
			<asp:HiddenField ID="HiddenNodeID" runat="server" />
		</td>
	</tr>
</table>
</form>
</body>
</html>
