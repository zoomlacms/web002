<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.UnionNode, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>节点批量设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
	var tID = 0;
	var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
	var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
	function ShowTabs(ID) {
		if (ID != tID) {
			document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
			document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
			document.getElementById(arrTabs[tID].toString()).style.display = "none";
			document.getElementById(arrTabs[ID].toString()).style.display = "";
			tID = ID;
		}
	}
	function SelectAll() {
		for (var i = 0; i < document.getElementById('<%=LstNodes.ClientID%>').length; i++) {
			document.getElementById('<%=LstNodes.ClientID%>').options[i].selected = true;
		}
	}
	function UnSelectAll() {
		for (var i = 0; i < document.getElementById('<%=LstNodes.ClientID%>').length; i++) {
			document.getElementById('<%=LstNodes.ClientID%>').options[i].selected = false;
		}
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="NodeManage.aspx">节点管理</a>&gt;&gt;批量设置</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr align="center">
		<td colspan="3" class="spacingtitle">批量设置节点</td>
	</tr>
	<tr class="tdbg">
		<td valign="top" align="center" class="tdbg">
			<span style="color: Red">提示：源节点</span><br />
			<br />
			<asp:ListBox ID="LstNodes" runat="server" DataTextField="NodeName" DataValueField="NodeId" Height="282px" Width="307px" SelectionMode="Multiple"></asp:ListBox>
		</td>
		<td class="tdbg">
			&nbsp;
		</td>
		<td valign="top">
			<table>
				<tr>
					<td align="center" class="tdbg">
						<span style="color: Red">提示：目标节点</span><br />
						<br />
						<asp:ListBox ID="MainNode" runat="server" Width="307px" Height="282px"></asp:ListBox>
						<br />
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<tr class="tdbg">
		<td valign="top" align="left" class="tdbg" colspan="3">
			<asp:CheckBox ID="CheckBox1" runat="server" Text="合并后删除来源节点" />
		</td>

	</tr>
	<tr align="center">
		<td colspan="3" class="tdbgleft">
			<asp:Button ID="EBtnBacthSet" Text="合并节点" class="C_input" Style="width: 110px;" OnClick="EBtnBacthSet_Click"
				runat="server" OnClientClick="return confirm('此操作不可逆，你确定合并节点吗？')" />
			&nbsp;&nbsp;<asp:Button ID="Button1" Text="迁移节点" class="C_input" Style="width: 110px;"
				runat="server" OnClick="Button1_Click" OnClientClick="return confirm('此操作不可逆，你确定迁移节点吗？')" />
		</td>
	</tr>
</table>
</form>
</body>
</html>