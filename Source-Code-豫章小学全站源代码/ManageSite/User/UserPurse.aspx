<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserPurse, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>会员积分</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> 
 <asp:Label ID="Lbl_t" runat="server" Text="会员资金操作"></asp:Label></div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border"> 
        <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                会员名：</td>
            <td align="left">
                <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></td>
         </tr>
         <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                会员资金：</td>
            <td align="left">
                <asp:Label ID="lblPurse" runat="server" Text=""></asp:Label></td>
         </tr>
         <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                资金操作：</td>
            <td align="left">
                <asp:RadioButtonList ID="rblPurse" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Selected="True">加资金</asp:ListItem>
                <asp:ListItem Value="2">减资金</asp:ListItem>
                </asp:RadioButtonList>
                </td>
         </tr>
         <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                资金：</td>
            <td align="left">
                <asp:TextBox ID="TxtScore" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="TxtScore" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator>
                </td>
         </tr>
         <tr class="tdbg">
            <td class="tdbgleft" style="width: 20%" align="right">                    
                备注：</td>
            <td align="left">
                <asp:TextBox ID="TxtDetail" runat="server" Rows="10" TextMode="MultiLine" Width="50%"></asp:TextBox></td>
         </tr>
         <tr class="tdbgbottom">
            <td colspan="2">
                <asp:HiddenField ID="Hdn_t" runat="server" />
                <asp:HiddenField ID="HdnUserID" runat="server" />
                <asp:Button ID="EBtnSubmit" Text="执 行"  CssClass="button" OnClick="EBtnSubmit_Click" OnClientClick="" runat="server" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server"  CssClass="button"  Text="返 回" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
