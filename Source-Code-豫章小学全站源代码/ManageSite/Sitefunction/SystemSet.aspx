<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Sitefunction_SystemSet, App_Web_zczmicyg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>系统配置</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
    <link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script src="/JS/RiQi.js" type="text/javascript"></script>
    <script src="/JS/calendar.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >> <a href="SystemSet.aspx">系统配置</a>
         </div>
            
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
        <tr class="tdbg">
            <td style="width: 35%" align="right">
                站点间内容转移同时转移相关文件：</td>
            <td align="left">
                <asp:RadioButtonList ID="MoveFile" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">转移</asp:ListItem>
                    <asp:ListItem Selected="True" Value="0">不转移</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" >
            <td align="right">
                内容归档时间设置：</td>
            <td align="left">                
                <asp:TextBox ID="GetDownTime" runat="server" onclick="calendar()" ></asp:TextBox>(将此时间之前的所有内容归档)
            </td>
        </tr>
        
        <tr >
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />
                &nbsp;&nbsp;
                <input name="Cancel" type="button" class="inputbutton" id="Cancel" value="取消" onclick="window.location.href='SystemSet.aspx?nid=0';" />                
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
