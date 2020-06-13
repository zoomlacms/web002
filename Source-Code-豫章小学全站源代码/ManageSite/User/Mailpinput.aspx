<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_Mailpinput, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮址列表</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
       当前位置：功能导航 >><a href="Mailpinput.aspx"> 邮箱列表</a> </div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg" style="height:24px">
                    <td align="left" >
                        来源：<asp:DropDownList ID="SubscribeToType" runat="server">
                        </asp:DropDownList></td>
                </tr>
                <tr class="tdbg">
                <td align="left">
                    导入邮箱地址：<asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="287px" />
                    <asp:Button ID="Button2"
                    runat="server" Text="导 入" OnClick="Button2_Click" />&nbsp;支持换行的.txt与.csv格式，点击<a href="/UploadFiles/邮件文件模板.csv">【这里】</a>下载邮件文件模板
                   </td>
                </tr>
                <tr class="tdbg">
                    <td  align="left">
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
