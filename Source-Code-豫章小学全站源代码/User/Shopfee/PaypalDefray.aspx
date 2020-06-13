<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_PaypalDefray, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择支付平台</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function paypalSuccess() {
        var st = 'Request.QueryString["state"]';
        if (st == "OK") {
            document.getElementById("success").style.display = "block";
        }
    }
    function submit() {
        alert(document.getElementById("paypal").innerHTML);
    }

</script>
</head>
<body>
<form name="f1" id="f1" runat="server" action="https://www.paypal.com/cgi-bin/webscr"
method="post">
<asp:PlaceHolder ID="PlaceHolder1" runat="server">
    <table>
        <tr>
            <td align="center">
                货币代码
            </td>
            <td align="center">
                货币名称
            </td>
            <td align="center">
                <span>货币符号</span>
            </td>
            <td align="center">
                当前汇率
            </td>
            <td align="center">
                <span>默认货币</span>
            </td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 金额
            </td>
            <td align="center">
                操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server">
                    <td align="center">
                        <%#Eval("Money_code")%>
                    </td>
                    <td align="center">
                        <%#Eval("Money_descp")%>
                    </td>
                    <td align="center">
                        <%#Eval("Money_sign")%>
                    </td>
                    <td align="center">
                        <%#Eval("Money_rate","{0:0.0000}")%>
                    </td>
                    <td align="center">
                        <%#(Eval("Is_flag").ToString()=="1")?"是":"否"%>
                    </td>
                    <td>
                        <%# getbind(Eval("Is_flag").ToString(),Eval("Money_rate").ToString()) %>
                    </td>
                    <td align="center">
                 <asp:LinkButton ID="LinkButton1" runat="server" CommandName='<%# Eval("Flow") %>' >PayPal支付</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:PlaceHolder>
    <input type="hidden"  id="projuct" name="projuct" runat="server" />
    <input type="hidden" id="Stock" name="Stock" runat="server" /><!--数量 -->
    <input type="hidden" id="GuestName" name="GuestName" runat="server"/><!-- 客户名称 -->
    <input type="hidden" id="comedate" name="comedate" runat="server" /> <!-- 入住时间 -->
    <input type="hidden" id="GuestMobile" name="GuestMobile" runat="server" /> <!-- 客户手机 -->
    <input type="hidden" id="cityname" name="cityname" runat="server"/><!-- 城市名称 -->
    <input type="hidden" id="preID" name="preID" runat="server"/><!-- 证件号码 -->
    <input type="hidden" id="Type" name="Type" runat="server" /> 
</form>
<div id="dd" runat="server"></div>
</body>
</html>