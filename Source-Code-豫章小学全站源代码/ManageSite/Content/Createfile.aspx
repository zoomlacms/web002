<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_Createfile, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>生成文件页</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

</head>
<body>
    <form id="myForm" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> <a href="Createfile.aspx">生成文件页</a></div>
        <table width="95%" align="center" cellpadding="3" cellspacing="3">
            <tr>
                <td width="160" align="left">
                    <strong>生成文件页：</strong>
                </td>
                <td align="left">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="295px" Width="180px">@/utils/seach.html</asp:TextBox>
                    &nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" BorderStyle="Double" Width="96px"></asp:CheckBox>
                    <label for="CheckAll">全选</label>
                </td>
            </tr>
            <tr style="background-position: center 50%; background-image: url(../pic/line.gif);
                background-repeat: repeat-x">
                <td width="160" align="left">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td width="160" align="left">
                    <strong>生成全部文件页：</strong>
                    <!-- 把所有文件页重新生成 -->
                </td>
                <td align="left">
                    <asp:Button class="button" Style="margin-bottom: 0px;" ID="CreateFileButton" Text="生成选定文件" runat="server" />
                </td>
            </tr>
            <tr>
                <td width="160" align="left">
                    <strong>删除全部文件页：</strong>
                    <!--删除所有已生成的文件页-->
                </td>
                <td align="left">
                    <asp:Button class="button" ID="DeleteFile" Text="删 除" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
