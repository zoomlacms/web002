<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_StatTimeReport, App_Web_5bajtehy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>统计详情</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt;访问统计&gt;&gt;<%=PageName %></div>
  <div class="clearbox"></div>
  <div class="r_navigation"> &nbsp;&nbsp;&nbsp; 选择分站：
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
  </div>
  <div class="clearbox"></div>
  <asp:HiddenField ID="HiddenCNID" runat="server" />
  <asp:HiddenField ID="Hiddentype" runat="server" />
  <asp:HiddenField ID="Hiddenw" runat="server" />
  <div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
</form>
</body>
</html>