<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_pass, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>密码确认</title>
<script>
    function click() {
        window.close();
    }

    function load() {
        document.getElementById("hfhonor").value = opener.document.getElementById("ddlAmount").value;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div style="font-size:small" align="center">请填写密码：<input type="password" id="password" runat="server" />
<input  type="hidden" id="hfhonor" runat="server"/><br />
<asp:Button ID="btn" runat="server" Text="确认" OnClientClick="load()" onclick="btn_Click" />&nbsp;<input type="button"  id="btnCan" onclick="click()" value="取消"/></div>
</form>
</body>
</html>
