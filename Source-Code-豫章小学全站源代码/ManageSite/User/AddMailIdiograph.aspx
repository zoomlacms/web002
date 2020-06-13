<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_AddMailIdiograph, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>
    <%=type %>签名</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><%=type %>签名</div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1">
            <tr class="tdbg">
                <td width="35%" align="left">
                    <strong>签名标签：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="35%" align="left">
                    <strong>签名内容：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtContext" runat="server" Rows="3" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg">
                <td width="35%" align="left">
                    <strong>签名状态：</strong>
                </td>
                <td align="left">
                    <asp:RadioButtonList ID="rblState" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="True" Selected="true">启用</asp:ListItem>
                        <asp:ListItem Value="False">禁用</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg">
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="提  交" CssClass="button" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
