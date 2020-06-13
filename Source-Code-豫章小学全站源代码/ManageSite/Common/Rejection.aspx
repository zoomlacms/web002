<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Common_Rejection, App_Web_1vl4rnat" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>退稿</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >>退稿</a></div>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td style="width:30%" align="right">
                    <strong> 退稿原因：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="txtRejection" runat="server" TextMode="MultiLine" Width="300px" Height="80px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRejection" ErrorMessage="请输入退稿原因"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height:40px">
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="确定" 
                        onclick="Button1_Click" />&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="button" Text="取消" 
                        onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
            <td  colspan="2" style="background-position: center 50%; width: 100%; height: 10px; background-image: url(../images/line.gif);
            background-repeat: repeat-x"></td>
            </tr>
            <tr>
                <td colspan="2" style="height:40px" align="left">
                    <asp:Repeater ID="Repeater1" runat="server" >
                    <ItemTemplate>
                    &nbsp;<%#Eval("GeneralID") %>、&nbsp;<%#Eval("Title") %><br />
                    </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
