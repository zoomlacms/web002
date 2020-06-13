<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_Mailpinput, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮址列表</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>附件管理</span> &gt;&gt; <span>邮件订阅 </span>&gt;&gt;
            <span>邮箱列表</span>
        </div>
        <div class="clearbox">
        </div>
        <div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg">
                    <td align="center" class="spacingtitle">
                        邮箱列表</td>
                </tr>
                <tr class="tdbg" style="height:24px" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td >
                        来源：<asp:DropDownList ID="SubscribeToType" runat="server">
                        </asp:DropDownList></td>
                </tr>
                <tr class="tdbg">
                <td>
                    导入邮箱地址：<asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="287px" class="l_input"/>
                    <asp:Button ID="Button2"
                    runat="server" Text="导 入" OnClick="Button2_Click" class="C_input"/>&nbsp;支持换行的.txt与.csv格式，点击<a href="/UploadFiles/邮件文件模板.csv">【这里】</a>下载邮件文件模板
                   </td>
                </tr>
                <tr class="tdbg">
                    <td align="center">
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
