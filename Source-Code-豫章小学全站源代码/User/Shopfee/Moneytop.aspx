<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_Moneytop, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>支付跳转页</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function sterline(s) {
    if (s == 1) {
        document.getElementById("sterline").style.display = 'block';
        document.getElementById("other").style.display = 'none';
    } else {
        document.getElementById("other").style.display = 'block';
        document.getElementById("sterline").style.display = 'none';
    }
}
</script>
</head>
<body>
<form id="form1" runat="server">
<table cellspacing="0" cellpadding="0" width="100%" border="0">
    <tbody>
        <tr>
            <td align="left">
                <div class="toptitle">
                <asp:LinkButton ID="Button1" runat="server" Text="人民币支付"  PostBackUrl="UserOrderinfo.aspx" />
                 <a href="javascript:sterline(1)">英镑支付</a>
                 <a href="javascript:sterline(2)">美元货币</a>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="topline"></td>
        </tr>
    </tbody>
</table>
<div id="sterline" style="display: none">
    <asp:LinkButton ID="LinkButton1" runat="server" Text="线下汇款"  PostBackUrl="UserOrderinfo.aspx?page=1" /><br />
    <asp:LinkButton ID="LinkButton2" runat="server" Text="Paypal支付"  PostBackUrl="PaypalDefray.aspx?page=1" />
</div>
<div id="other" style="display: none">
    <asp:LinkButton ID="LinkButton3" runat="server" Text="Paypal支付"  PostBackUrl="PaypalDefray.aspx?page=2" />
</div>
</form>
</body>
</html>