<%@ page language="C#" autoeventwireup="true" inherits="User_Message_MessageLeft, App_Web_4fbteau0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/Default.css"rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
<title>信息管理</title>
</head>
<body style="background-color:#E6F2F8">
    <form id="form1" runat="server">
    <table width="124" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
            <tr>
                <td height="22" valign="top" class="left_font">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="25">
                                <img src="../../App_Themes/UserThem/images/icon.gif" width="15" height="15" style="cursor: hand"
                                    onclick="show('td2')">
                            </td>
                            <td valign="top">
                                <div class="left_font" style="cursor: hand" onclick="show('td2')">信息管理</div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td id="td2">
                    <table width="100%" border="0" cellpadding="6" cellspacing="1" bgcolor="D6E7EF" class="leftmenu">
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">
                                &nbsp;&nbsp;<a href="Message.aspx"target="main_right">收信箱</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="MessageDraftbox.aspx"target="main_right">草稿箱</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="MessageOutbox.aspx"target="main_right" >发信箱</a>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="MessageGarbagebox.aspx" target="main_right">垃圾箱</a>
                            </td>
                        </tr>
                       <tr>
                            <td bgcolor="#FFFFFF">
                                <img src="../../App_Themes/UserThem/images/icon_02.gif" width="5" height="5" align="middle">&nbsp;&nbsp;
                                <a href="Mobile.aspx" target="main_right">手机短信</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
