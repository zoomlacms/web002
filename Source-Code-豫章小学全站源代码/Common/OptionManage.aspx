<%@ page language="C#" autoeventwireup="true" inherits="Common_OptionManage, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>选项管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/MasterPage.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<asp:Button ID="Button1" runat="server" Text="添加选项" onclick="Button1_Click" />
<table width="100%" border="1" class="tdgb" cellspacing="0" cellpadding="1">
<tr>
  <td width="10%" align="center">序号</td>
  <td width="30%" align="center">选项标题</td>
  <td width="30%" align="center">选项值</td>
  <td width="20%" align="center">操作</td>
</tr>
<asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>
	<tr>
	  <td align="center"><%#Eval("id") %></td>
	  <td align="center"><%#Eval("classname")%></td>
	  <td align="center"><%#Eval("classvalue")%></td>
	  <td align="center"><a href="AddOption.aspx?menu=edit&fid=<%#Eval("id") %>&id=<%=Request.QueryString["id"] %>&ModelID=<%=Request.QueryString["ModelID"] %>">修改</a> <a href="OptionManage.aspx?menu=delete&fid=<%#Eval("id") %>&id=<%=Request.QueryString["id"] %>&ModelID=<%=Request.QueryString["ModelID"] %>"  target="_self" >删除</a></td>
	</tr>
  </ItemTemplate>
</asp:Repeater>
</table>
</form>
</body>
</html>