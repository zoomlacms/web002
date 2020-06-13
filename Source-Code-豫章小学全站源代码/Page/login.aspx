<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.login, App_Web_nwyas3lp" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<title>管理登陆</title>
<link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/style.css" />
<script type="text/javascript">
    //<!--
    if (self != top) { top.location = self.location; }
    function ShowSoftKeyboard(obj) {
        if ((typeof (CheckLoaded) == "function")) {
            password1 = obj;
            showkeyboard();
            Calc.password.value = '';
        }
        else {
            return false;
        }
    }
    function onfocus() {
        document.getElementById('TxtUserName').focus();
    }
    // -->
</script>
<script type="text/javascript" src="../JS/softkeyboard.js"></script>
</head>
<body onload="onfocus();">
<form id="Login" runat="server" defaultbutton="IbtnEnter">
<div id="top">
    <img src="../App_Themes/AdminDefaultTheme/images/manage_logo.jpg" /></div>
<div id="main">
    <div id="login">
        <ul>
            <li><span>用户名
                <asp:TextBox ID="TxtUserName" runat="server" CssClass="username" Style="width: 129px;"
                    TabIndex="1"></asp:TextBox></span></li>
            <li><span>密 &nbsp;码
                <asp:TextBox ID="TxtPassword" TextMode="Password" runat="server" MaxLength="18" CssClass="password"
                    Style="width: 129px;" TabIndex="2"></asp:TextBox></span></li>
            <li id="safecode" runat="server"><span>安全码
                <asp:TextBox ID="TxtAdminValidateCode" TextMode="Password" runat="server" MaxLength="80"
                    Style="width: 129px;" CssClass="password" TabIndex="3"></asp:TextBox></span>
            </li>
            <li><span>验证码
                <asp:Image ID="VcodeLogin" runat="server" ImageUrl="../Common/ValidateCode.aspx"
                    Height="20px" ToolTip ="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />
                <asp:TextBox ID="TxtValidateCode" runat="server" CssClass="vercode" Style="width: 52px;"
                    TabIndex="4"></asp:TextBox></span></li>
            <li>
                <asp:ImageButton ID="IbtnEnter" ImageUrl="../App_Themes/AdminDefaultTheme/images/signin.jpg"
                    runat="server" Style="cursor: hand;" OnClick="IbtnEnter_Click" TabIndex="5" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <label>
                    <input type="image" name="ImageButton2" id="ImageButton2" src="../App_Themes/AdminDefaultTheme/images/reset.jpg"
                        onclick="javascript:window.close();" tabindex="6" causesvalidation="false" /></label>
            </li>
            <li>
                <asp:RequiredFieldValidator ID="ValrUserName" runat="server" ErrorMessage="请输入用户名！"
                    ControlToValidate="TxtUserName" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="ValrPassword" runat="server" ErrorMessage="请输入密码！"
                    ControlToValidate="TxtPassword" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="ValrAdminValidateCode" runat="server" ErrorMessage="请输入管理认证码！"
                    ControlToValidate="TxtAdminValidateCode" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="ValrValidateCode" runat="server" ErrorMessage="请输入验证码！"
                    ControlToValidate="TxtValidateCode" Display="None" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                    ShowSummary="False" />
            </li>
        </ul>
    </div>
</div>
<div id="bottom">
</div>
<div id="copyright">
    Copytight (C) Jiangxi Joined Industries CO.,LTD all rights reserved
</div>
</form>
</body>
</html>
