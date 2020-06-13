<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_AddSettlement, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>添加结算</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="2" style="height: 30px;">
                <asp:Label ID="lblText" runat="server" Text="添加结算"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 30%;">
                结算编号：
            </td>
            <td>
                <asp:TextBox ID="SettlementTitle" runat="server" Width="250px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td valign="top" align="right" style="width: 30%;">
                结算总资金：
            </td>
            <td>
                <asp:TextBox ID="SettlementAllMoney" runat="server" Width="163px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                中标者分成：
            </td>
            <td>
                <asp:TextBox ID="SuccessfulMoney" runat="server" Width="163px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                达标者分成：
            </td>
            <td>
                <asp:TextBox ID="ComplianceMoney" runat="server" Width="163px" class="l_input" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width: 30%;">
                网站商分成：
            </td>
            <td>
                <asp:TextBox ID="WebSiteMoney" runat="server" Width="163px" class="l_input" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="EBtnSubmit" runat="server" Text="保存" class="C_input" 
                    onclick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" 
                    OnClientClick="parentDialog.close();return false;" class="C_input" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
