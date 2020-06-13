<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_UpdatePwd, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>网即通-修改密码</title>
<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" rel="stylesheet" type="text/css" />
<link href="/User/Develop/Css/global.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="wrap">
<div class="cssHeight20"></div>
<div id="title_L">修改密码</div><div id="title_R"></div>
<div class="clear"></div>
<div id="Busi_main">
    <div class="us_seta" style="width: 100%; border:none; margin:0px; ">
    <div class="cssHeight20"></div>
        <table align="center" border="0">
            <tr><td align="center" width="30%"><strong>原 密 码：</strong></td>
                <td>
                    <asp:TextBox ID="TxtOldPassword" runat="server" CssClass="f_input" Height="18px" TextMode="Password" />
                    <font style="color: Red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="原密码不能为空" ControlToValidate="TxtOldPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="30%"><strong>新 密 码：</strong></td>
                <td><asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="f_input" Height="18px" /><font style="color: Red">*</font></td>
            </tr>
            <tr>
                <td align="center" width="30%"><strong>确认密码：</strong></td>
                <td><asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" CssClass="f_input" Height="18px" /><font style="color: Red">*</font>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="TxtPassword2" ControlToCompare="TxtPassword" ErrorMessage="两次输入的密码不一致！" runat="server" />
                </td>
            </tr>
            <tr align="center">
                <td align="center" colspan="2">
                    <asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" class="i_bottom" />&nbsp;&nbsp;
                    <asp:Button ID="BtnCancle" runat="server" Text="取消" OnClick="BtnCancle_Click" ValidationGroup="BtnCancel" class="i_bottom" />
                </td>
            </tr>
        </table>
        <div style="width: 100%; text-align: center; margin-top: 10px">
            <div style="width: 100%; text-align: center"></div>
        </div>
    </div>
</div>
</div>
</form>
</body>
</html>