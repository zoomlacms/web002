<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.InfoSerach, App_Web_0jgtjhhe" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>信息搜索</title>
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/checkarticle.gif" />站内搜索        
    <asp:DropDownList ID="DDLNode" runat="server">
    </asp:DropDownList>
    <asp:TextBox ID="TxtKeyword" runat="server">关键字</asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="搜  索" OnClick="Button1_Click" />
</div>
</form>
</body>
</html>
