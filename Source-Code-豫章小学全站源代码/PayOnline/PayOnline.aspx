<%@ page language="C#" responseencoding="utf-8" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.PayOnline, App_Web_l2jfqzx0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线支付</title>
    <link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <asp:PlaceHolder ID="form1" runat="server">
        <table class="border" cellspacing="0" id="display1" runat="server" style="margin: auto;
            margin-top: 10px; height: 180px;">
            <tr class="title">
                <td align="center">
                    <strong>在线支付操作（确认支付款项)</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付平台：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayPlatform" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    订单号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblOid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayMoney" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblRate" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际划款金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblvMoney" runat="server"> </asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2" align="center" style="height: 38px;">
                                    <strong>点击“确认支付”按钮后，将进入在线支付界面。</strong>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="5" align="center" style="height: 38px; padding-left: 140px;">
                                    <asp:Label ID="LblHiddenValue" runat="server" CssClass="fleft"></asp:Label><form
                                    runat="server">
                                    <input type="hidden" id="ddHid" name="ddHid" value=""  runat="server" />
                                   <input type="button" class="inputbutton" id="Cancel" value="取消支付" onclick="window.location.href='/User/PreViewOrder.aspx?menu=Cartinfo'" style=" float:left;" />
                                    <asp:Button runat="server" Text="余额支付" ID="BtnXuNi" OnClick="BtnXuNi_Click1" Style="float: left;" />
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <table class="border" style="margin:auto; text-align:center;" cellspacing="1" id="display2" runat="server">
            <tr class="title">
                <td>
                    <strong>恭喜您，下单成功！</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="title">
                                <td colspan="2">
                                    <b>确 认 款 项</b>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付方式：
                                </td>
                                <td align="left">
                                    <asp:Label ID="zfpt" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    订单号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="ddh" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="zfje" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="sxf" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="sjhbje" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2">
                                    <input id="bt2" type="button" value="返回商城" onclick="window.location.href='/User/Develop/AppStore.aspx'" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
</body>
</html>
