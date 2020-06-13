<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.PrintShopList, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>打印输出</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function SetShopID(id) {
        opener.document.getElementById("hfShopID").value = id;
		alert(opener.document.getElementById("hfShopID").value)
        window.close();
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" cellpadding="2" cellspacing="0" class="border">
	<tr id="tr1" runat="server">
		<td valign="top" colspan="2">
			<table width="100%" border="0" cellspacing="1" cellpadding="1">
				<tr class="title">
					<td >
					</td>
					<td align="right">
						<b>商品列表：</b>
					</td>
					<td align="right">
						<asp:TextBox ID="TxtKeyWord" class="l_input" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:Button ID="BtnSearch" class="C_input" runat="server" Text="查找" OnClick="BtnSearch_Click" />
					</td>
				</tr>
				<tr class="tdbgleft">
					<td width="5%" height="24" align="center">
						<strong>ID</strong>
					</td>
					<td width="40%" height="24" align="center">
						<strong>商品名称</strong>
					</td>
					<td width="35%" height="24" align="center">
						<strong>商品零售价</strong>
					</td>
				</tr>
				<asp:Repeater ID="Pagetable" runat="server">
					<ItemTemplate>
						<tr class="tdbg" style="cursor:pointer" onclick='SetShopID(<%#Eval("ID") %>)' onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
							<td height="24" align="center">
								<%#Eval("ID") %>
							</td>
							<td height="24" align="center">
								<%#Eval("Proname") %>
								<input type="hidden" id="Pronames<%#Eval("ID") %>" value="<%#Eval("Proname") %>" />
							</td>
							<td height="24" align="center">
								<%#Eval("LinPrice","{0:c}")%>
							</td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
				<tr class="tdbg">
					<td class="tdbgleft" colspan="6" align="center">
						共
						<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
						条信息
						<asp:Label ID="Toppage" runat="server" Text="" />
						<asp:Label ID="Nextpage" runat="server" Text="" />
						<asp:Label ID="Downpage" runat="server" Text="" />
						<asp:Label ID="Endpage" runat="server" Text="" />
						页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
						<asp:Label ID="pagess" runat="server" Text=""/>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
						</asp:DropDownList>
						页
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</form>
</body>
</html>