<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.LabelExport, App_Web_balgrtw4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>标签升级</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 系统设置 &gt;&gt; <a href="LabelManage.aspx">标签管理</a> &gt;&gt; <a href="LabelExport.aspx">标签升级</a></div>
<div style="text-align:center">
    <div style="width:100%;border:1px solid #9bbde6; text-align:left">
        <br />
        升级标签：<br />
        <br />
        升级状态：<span style="color:Red"><asp:Label ID="Label1" runat="server" Text="状态"></asp:Label></span><br />
        <br />
        <asp:Button ID="Button1" runat="server"  class="C_input" Text="升级标签" OnClick="Button1_Click" />
    </div>
</div>
</form>
</body>
</html>
