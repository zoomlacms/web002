<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_AddAudit, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>编辑预审核内容</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../Common/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script type="text/javascript">
    //主节点
    function ShowNode(nodename) {
        document.getElementById("<%=txtNode.ClientID%>").value = nodename;
    }
    //添加节点
    function AddNode(type) {
    
        var nid = document.getElementById("<%=hfNode.ClientID%>").value;
        window.open('../Common/NodeList.aspx?nid=' + nid + '&type=' + type + '', 'newWin', 'modal=yes,width=400,height=300,resizable=yes,scrollbars=yes');
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 内容管理 &gt;&gt;<a href="AuditManage.aspx">内容预审核管理</a>&gt;&gt;<span>编辑内容</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr>
		<td class="spacingtitle" align="center">
			<asp:Literal ID="LTitle" runat="server" Text="编辑内容审核"></asp:Literal>
		</td>
	</tr>
	<tr class="tdbg">
		<td valign="top" style="margin-top: 0px; margin-left: 0px;">
			<table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
				<tbody id="Tabs0">
					<tr class="tdbg">
						<td class="tdbgleft" style="height: 26px">
							<strong>节点内容</strong>
						</td>
						<td style="height: 26px;">
							<asp:TextBox ID="txtNode" runat="server" class="l_input" Width="20%" Height="20px"></asp:TextBox>
						<input id="Button3" type="button" value="选择节点" onclick="AddNode('link')"
						class="C_input" style="width: 110px;" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="节点内容不能为空！" ControlToValidate="txtNode"></asp:RequiredFieldValidator>
						<asp:HiddenField ID="hfNode" runat="server" Value="" />
						</td>
					</tr>
					<tr class="tdbg">
						<td class="tdbgleft" style="height: 26px">
							<strong>开始时间：</strong>
						</td>
						 <td style="height: 26px;">
						   <asp:TextBox ID="txtBeginTime" runat="server" Text="" onclick="calendar();"
						Width="20%" class="l_input"></asp:TextBox><asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
							 ToolTip="鼠标点击左边输入框出现时间选择框" />
						   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="开始时间不能为空！" ControlToValidate="txtBeginTime"></asp:RequiredFieldValidator>
						</td>
					</tr>
					<tr class="tdbg">
						<td class="tdbgleft" style="height: 26px">
							<strong>结束时间：</strong>
						</td>
						<td style="height: 26px;">
						<asp:TextBox ID="txtEndTime" runat="server" Text=""  Width="20%" class="l_input" onclick="calendar();">
						</asp:TextBox><asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif"
							ToolTip="鼠标点击左边输入框出现时间选择框" />
							<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="结束时间不能为空！" ControlToValidate="txtEndTime"></asp:RequiredFieldValidator>
						</td>
					
				</tbody>
			</table>
		</td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
	<tr>
		<td align="left" style="height: 59px">
		&nbsp; &nbsp;
		<asp:Button ID="EBtnSubmit" class="C_input" Text="修改申请" runat="server" OnClick="EBtnSubmit_Click" />
		<input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='AuditManage.aspx'"	id="Button2" /> </td>
	</tr>
</table>
</form>
</body>
</html>