<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_ShowSettUser, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%Call.Label("{$SiteName/}"); %>-查看达标用户</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../Common/Common.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript" language="javascript">
	function getinfo(id) {
		location.href = 'PageTemplate.aspx?id=' + id;
	}
	function CheckAll(spanChk)//CheckBox全选
	{
		var oItem = spanChk.children;
		var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
		xState = theBox.checked;
		elm = theBox.form.elements;
		for (i = 0; i < elm.length; i++)
			if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
			if (elm[i].checked != xState)
				elm[i].click();
		}
	}

	function fun3(userid) {
		var diag = new Dialog();
		diag.Width = 800;
		diag.Height =600;
		diag.Title = "用户资料";
		diag.URL = "../user/Userinfo.aspx?id=" + userid;
		diag.show();
	}
</script>

</head>
<body>
<form id="form1" runat="server">
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="6" class="title" width="100%">
				达标用户
			</td>
		</tr>
		<tr class="tdbg">
			<td width="5%" class="tdbgleft">
				<asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server"/>
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; width: 5%; font-weight: bold">
				ID
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
				用户名称
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
				会员组
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
				资金余额
			</td>
			<td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">
				操作
			</td>
		</tr>
		<asp:Repeater ID="Repeater1" runat="server">
			<ItemTemplate>
				<tr class="tdbg">
					<td height="22" align="center" class="tdbg">
						<input name="Item" type="checkbox" value='<%# Eval("UserID")%>'/>
					</td>
					<td align="center" class="tdbg" style="height: 24px;">
						<%#Eval("UserID")%>
					</td>
					<td align="center" class="tdbg" style="height: 24px;">
						<a href="###" onclick="fun3(<%#Eval("UserID")%>)">
							<%#Eval("UserName")%></a>
					</td>
					<td align="center" class="tdbg" style="height: 24px;">
						<%#GetGroup(Eval("GroupID","{0}"))%>
					</td>
					<td align="center" class="tdbg" style="height: 24px;">
						￥<%#Eval("UserPoint", "{0:F2}")%>
					</td>
					<td align="center" class="tdbg" style="height: 24px;">
						<a href="?menu=delete&uid=<%#Eval("UserID") %>&id=<%=Request.QueryString["ID"]%>"
							onclick="return confirm('你确定要将所有选择删除吗？');">删除</a>
					</td>
				</tr>
			</ItemTemplate>
		</asp:Repeater>
		<tr class="tdbg">
			<td align="center" class="tdbg" style="height: 24px;" colspan="6">
				共
				<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
				条信息
				<asp:Label ID="Toppage" runat="server" Text="" />
				<asp:Label ID="Nextpage" runat="server" Text="" />
				<asp:Label ID="Downpage" runat="server" Text="" />
				<asp:Label ID="Endpage" runat="server" Text="" />
				页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
					Text="" />页
				<asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
					runat="server" AutoPostBack="True">
				</asp:DropDownList>
				页
			</td>
		</tr>
	</tbody>
	<tr>
		<td align="left" colspan="9">
			<asp:Button ID="EBtnSubmit" runat="server" Text="批量删除" class="C_input" OnClick="EBtnSubmit_Click"
				OnClientClick="return confirm('你确定要将所有选择删除吗？');" />
			<asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" OnClientClick="parentDialog.close();return false;" />
		</td>
	</tr>
</table>
</form>
</body>
</html>
