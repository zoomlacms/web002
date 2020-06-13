<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.Content.CollectionStep3, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>采集项目管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script>
	function SetHr(cname, svalue, evalue, pvalue) {

		document.getElementById("hd_s_" + cname).value = svalue;
		document.getElementById("hd_e_" + cname).value = evalue;
		document.getElementById("hd_p_" + cname).value = pvalue;

	}
	function showpage(itemid, name, alias) {
		window.open("CollectionInfoPage.aspx?ItemID=" + itemid + "&Name=" + name + "&Alias=" + alias, "newWin", "modal=yes,width=810,height=570,resizable=yes,scrollbars=yes");
	}
</script>

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理 </span>&gt;&gt; <span>系统设置 </span>&gt;&gt;<span><a href="ContentManage.aspx">
		内容管理 </a></span>&gt;&gt; <span><a href="CollectionManage.aspx">采集项目管理</a></span>
	&gt;&gt; <span>
		<%=title%></span>
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr align="center">
		<td colspan="2" class="spacingtitle">
			<%=type%>
		</td>
	</tr>
	<tr class="tdbg">
		<td class="tdbgleft" style="width: 20%" align="right">
			<strong>采集项目名称：</strong>
		</td>
		<td>
			<asp:Label ID="lblItemName" runat="server" Text="Label"></asp:Label>
		</td>
	</tr>
</table>
<asp:DataList ID="DataList1" runat="server" Width="100%">
	<ItemTemplate>
		<%#GetHtml(DataBinder.Eval(Container.DataItem, "FieldAlias").ToString(), DataBinder.Eval(Container.DataItem, "FieldName").ToString(), DataBinder.Eval(Container.DataItem, "FieldType").ToString(), DataBinder.Eval(Container.DataItem, "Content").ToString(), DataBinder.Eval(Container.DataItem, "Description").ToString(), DataBinder.Eval(Container.DataItem, "ModelID").ToString())%>
	</ItemTemplate>
</asp:DataList>
<asp:DataList ID="DataList2" runat="server" Width="100%">
	<ItemTemplate>
		<%#GetHtml(DataBinder.Eval(Container.DataItem, "FieldAlias").ToString(), DataBinder.Eval(Container.DataItem, "FieldName").ToString(),  DataBinder.Eval(Container.DataItem, "FieldType").ToString(), DataBinder.Eval(Container.DataItem, "Content").ToString(), DataBinder.Eval(Container.DataItem, "Description").ToString(), DataBinder.Eval(Container.DataItem, "ModelID").ToString())%>
	</ItemTemplate>
</asp:DataList>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr class="tdbg">
		<td align="center">
			<asp:Button ID="Button2" class="C_input" runat="server" Text="上一步" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:Button ID="Button1" class="C_input" runat="server" Text="保  存" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="Button3" class="C_input" type="button" value="返  回" onclick="window.location.href='CollectionManage.aspx'" />
		</td>
	</tr>
</table>
<br />
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr align="left">
		<td colspan="2" class="tdbg">
		<b>说明：</b>采集来源地址请使用 {geturl}
		</td>
	</tr>
</table>
</form>
</body>
</html>