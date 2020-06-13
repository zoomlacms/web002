<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_PayWindow, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>订单支付</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function onch() {
        document.getElementById("TextBox2").value = (Number(document.getElementById("Label5").innerText) +
                                                                        Number(document.getElementById("Label7").innerText) +
                                                                        Number(document.getElementById("TextBox1").value)).toFixed(2);
        //Number(document.getElementById("Label4").innerText) +
        document.getElementById("Label3").innerText = document.getElementById("TextBox2").value;
    }

    function getAjaxXml(url) {
        var xml = new ActiveXObject("Microsoft.XMLHTTP");
        xml.open("GET", url, true);
        xml.send();
        return xml.responseText;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="us_seta" style="margin-top: 10px;">
        <h1 style="text-align: center">其他金额</h1>
    </div>
    <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">订单编号：</li>
        <li style="text-align: left; background-color: #F7F7F7">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </li>
    </ul>
    <ul style="height: 30px; display:none">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">其他费用：</li>
        <li style="text-align: left; background-color: #F7F7F7">
            <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            其它商品金额</li>
    </ul>
        <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">商品差额：</li>
        <li style="line-height: 24px; text-align: left; background-color: #F7F7F7">
            <asp:TextBox ID="TextBox1" runat="server" 
                onKeyUp=" value=value.replace(/[^-|+|.|0-9]/g,'')" onblur="onch();" 
                Width="85px" Enabled="false"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="0"></asp:Label>
        </li>
    </ul>
    <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">代购服务费：</li>
        <li style="line-height: 24px; text-align: left; background-color: #F7F7F7">
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </li>
     </ul>
     <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">国际运费：</li>
        <li style="line-height: 24px; text-align: left; background-color: #F7F7F7">
            <asp:Label ID="Label7" runat="server" Text="0"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
        </li>
     </ul>
    <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">合计：</li>
        <li style="text-align: left; background-color: #F7F7F7">
            <asp:Label ID="Label3" runat="server" Text="0" ></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Text="0" style="display:none"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            注：人民币价格</li>
    </ul>
    <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">付款状态：</li>
        <li style="line-height: 24px; text-align: left; background-color: #F7F7F7">
            <asp:Label ID="Label6" runat="server" Text="无"></asp:Label>
        </li>
    </ul>
    <ul style="height: 30px;">
        <li style="width: 40%; float: left; text-align: center; background-color: #F7F7F7">支付方式：</li>
        <li style="line-height: 24px; text-align: left; background-color: #F7F7F7">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3" AutoPostBack="True"
                OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Value="1" Selected="True">人民币支付</asp:ListItem>
                <asp:ListItem Value="2">英镑支付</asp:ListItem>
                <asp:ListItem Value="3">其他货币支付</asp:ListItem>
            </asp:RadioButtonList>
        </li>
    </ul>
    <ul>
        <li style=" margin-left:40%; text-align: left; background-color: #F7F7F7">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Visible="false" RepeatColumns="2">
            <asp:ListItem Value="1" Selected="True">其他支付</asp:ListItem>
            <asp:ListItem Value="2">Paypal支付</asp:ListItem>
            </asp:RadioButtonList>
        </li>
    </ul>
    <ul>
        <li style="width: 100%; line-height: 24px; text-align: center; background-color: #F7F7F7">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="支 付" Enabled="true"  OnClick="Button3_Click" />
        </li>
    </ul>
    </form>
</body>
</html>