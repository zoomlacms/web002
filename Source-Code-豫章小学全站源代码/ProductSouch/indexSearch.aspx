<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.indexSearch, App_Web_0jgtjhhe" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>信息搜索</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image:url(../skin/default/s_bg.jpg)">
<form id="form1" runat="server">
<div class="us_seta">   
    <asp:DropDownList ID="DDLtype" runat="server" Height="20px">            
        <asp:ListItem Value="1">商品名称</asp:ListItem>
        <asp:ListItem Value="2">录入者</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="DDLNode" runat="server" Height="20px">
    </asp:DropDownList>
    <asp:TextBox ID="TxtKeyword" runat="server" Height="13px" Width="200px">关键字</asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click"/>
</div>
</form>
</body>
</html>