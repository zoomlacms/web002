<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.indexSearch, App_Web_4hcrvkm5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html runat="server">
<style>
#btnSearch{ width:62px; height:24px; text-align:center; line-height:24px; border:none; background:url(../Template/yzxx/style/images/search_bg.jpg); cursor:pointer;}
#TxtKeyword{ border:1px solid #ccc; height:20px; line-height:20px;}
</style>
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
<body runat="server" style=" background:#a6dffd;">
<form runat="server" id="myform">
<div id="Div1" runat="server" style="float: left; background:#A6DFFD;" >
        <div style="display:none">站内搜索
        <asp:DropDownList ID="DDLNode" runat="server" Width="100px">
        </asp:DropDownList></div>
        <asp:TextBox ID="TxtKeyword" runat="server" width="150px" onclick="setEmpty(this)" onblur="settxt(this)"
            Text="请输入关键字"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="搜索" Width="64px" OnClick="btnSearch_Click" />
    </div>
</form>
</body>
</html>