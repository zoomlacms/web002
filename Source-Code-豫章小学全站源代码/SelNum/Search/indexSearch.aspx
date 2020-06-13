<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.indexSearch, App_Web_zkrma30s" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html runat="server">
<head id="Head1">
<title>搜索结果</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
    function setEmpty(obj) {
        if (obj.value == "请输入关键字") {
            obj.value = "";
        }
    }
    function settxt(obj) {
        if (obj.value == "") {
            obj.value = "请输入关键字";
        }
    }
</script>
</head>
<body runat="server">
<form runat="server" id="myform">
<div id="Div1" runat="server" style="float: left;">
        站内搜索
        <asp:DropDownList ID="DDLNode" runat="server" Width="100px">
        </asp:DropDownList>
        <asp:TextBox ID="TxtKeyword" runat="server" width="100px" onclick="setEmpty(this)" onblur="settxt(this)"
            Text="请输入关键字"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="搜索" Width="50px" OnClick="btnSearch_Click" />
    </div>
</form>
</body>
</html>