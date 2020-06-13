<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_RegValidateMail, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮件内容</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="column">
        <div class="columntitle">
       当前位置：功能导航 >> <a href="RegValidateMail.aspx"> 验证邮件内容</a></div>
            <table width="100%" height="227" border="0" cellpadding="2" cellspacing="1">
                <tr style="width: 100%" class="tdbg">
                    <td style="white-space: normal; width: 30%;"  align="right">
                        <strong>邮件标题：</strong>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtTitle" runat="server" Width="400px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="width: 100%" class="tdbg">
                    <td style="white-space: normal; width: 30%; height: 69px;" align="right">
                        <strong>邮件内容：<br />
                            (请在内容中使用<br />
                            {UserName},{Url}<br />
                            两个关键字符)</strong>
                        
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtContext" runat="server" Width="400px" TextMode="multiLine" Rows="15"></asp:TextBox>
                   
                   </td>
                </tr>
                
                <tr style="width: 100%" class="tdbg">
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" CssClass="button" runat="server" Text="提  交" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
