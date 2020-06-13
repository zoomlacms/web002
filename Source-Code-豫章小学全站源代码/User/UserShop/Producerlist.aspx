<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Producerlist, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择厂商</title>
<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div>
	<table width="100%" border="0" cellpadding="2" cellspacing="0" class="border">
		<tr class="title" style="height: 22">
			<td align="left">
				<b>已经选定的厂商：</b></td>
			<td align="right">
				<a href="javascript:window.close();">返回&gt;&gt;</a></td>
		</tr>
		<tr class="tdbg">
			<td align="left">
				<input type="text" id="UserNameList" size="60" maxlength="200" readonly="readonly"
					class="inputtext" />
				<input type="hidden" name="HdnUserName" id="HdnUserName" value="" /></td>
			<td align="center">
				</td>
		</tr>
	</table>
	<br />                      
	<table width="100%" border="0" cellpadding="2" cellspacing="0" class="border">
		<tr class="title">
			<td align="left">
				<b>厂商列表：</b></td>
			<td align="right">
				&nbsp;&nbsp;</td>
		</tr>
		<tr>
			<td valign="top" colspan="2">
				<div id="DivUserName" runat="server" visible="false">
					未找到任何厂商！</div>
				<asp:Repeater ID="RepUser" runat="server" OnItemDataBound="RepUser_ItemDataBound">
					<HeaderTemplate>
						<table width="100%" border="0" cellspacing="1" cellpadding="1" class="border">
							<tr>
					</HeaderTemplate>
					<ItemTemplate>
						<td align="center">
							<a href="#" onclick="<%# "add('" + DataBinder.Eval(Container,"DataItem.Producername","{0}") + "')"%>">
								<%# Eval("Producername")%>
							</a>
						</td>
						<% 
							i++; %>
						<% if (i % 8 == 0 && i > 1)
							{%>
						</tr><tr>
							<%} %>
					</ItemTemplate>
					<FooterTemplate>
						</tr></table>
					</FooterTemplate>
				</asp:Repeater>
			</td>
		</tr>
	</table>
	<table border="0" align="center" cellpadding="2" cellspacing="0">
		<tr>
			<td align="center">
					
			</td>
		</tr>
	</table>
	<div id="pager1" runat="server"></div>
</div>
<script language="javascript" type="text/javascript">
function add(obj)
{
	if(obj==""){return false;}
	if(opener.document.getElementById('Producer').value=="")
	{
		opener.document.getElementById('Producer').value=obj;
		document.getElementById('UserNameList').value = opener.document.getElementById('Producer').value;
		return false;
	}
	var singleUserName=obj.split(",");
	var ignoreUserName="";
	for(i=0;i<singleUserName.length;i++)
	{
			opener.document.getElementById('Producer').value = singleUserName[i];
			document.getElementById('UserNameList').value = opener.document.getElementById('Producer').value;
	}
}
</script>
</body>
</html>