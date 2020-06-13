<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.BankRollList, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>资金明细</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="BankRollList.aspx">明细记录</a>
        &gt;&gt; <span>资金明细</span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabs">
            <tr class="tdbg">
                <td width="34%" height="24" align="center" class="title">
                    快速查找：
                    <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="true">
                        <asp:ListItem Value="1">所有资金明细记录</asp:ListItem>
                        <asp:ListItem Value="2">10天内的资金明细记录</asp:ListItem>
                        <asp:ListItem Value="3">一个月内的资金明细记录</asp:ListItem>
                        <asp:ListItem Value="4">上一月的资金明细记录</asp:ListItem>
                        <asp:ListItem Value="5">当前月的资金明细记录</asp:ListItem>
                        <asp:ListItem Value="6">所有已确认的记录</asp:ListItem>
                        <asp:ListItem Value="7">所有未确认的记录</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="66%" align="center" class="title">
                    高级查询：
                    <asp:DropDownList ID="souchtable" runat="server">
                        <asp:ListItem Value="SuccessTime">交易时间</asp:ListItem>
                        <asp:ListItem Value="UserID" Selected="True">用户名</asp:ListItem>
                        <asp:ListItem Value="PaymentNum">支付序号</asp:ListItem>
                        <asp:ListItem Value="MoneyPay">金额</asp:ListItem>
                        <asp:ListItem Value="MoneyTrue">实际金额</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="souchkey" runat="server" class="l_input" />
                    <asp:Button ID="souchok" runat="server" Text="搜索" class="C_input" OnClick="souchok_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr class="tdbg">
            <td width="15%" height="24" align="center" class="title">
                <span class="tdbgleft">交易时间</span>
            </td>
            <td width="10%" align="center" class="title">
                <span class="tdbgleft">用户名</span>
            </td>
            <td width="15%" align="center" class="title">
                <span class="tdbgleft">交易方式</span>
            </td>
            <td width="10%" align="center" class="title">
                <span class="tdbgleft">支付序号</span>
            </td>
            <td width="15%" align="center" class="title">
                <span class="tdbgleft">金额</span>
            </td>
            <td width="15%" align="center" class="title">
                <span class="tdbgleft">实际金额</span>
            </td>
            <td width="10%" align="center" class="title">
                <span class="tdbgleft">交易状态</span>
            </td>
            <td width="10%" align="center" class="title">
                <span class="tdbgleft">处理状态</span>
            </td>
        </tr>
        <asp:Repeater ID="paymanage" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td height="24" align="center">
                    <%#DataBinder.Eval(Container.DataItem, "PayTime", "{0:yyyy-MM-dd hh:mm:ss}")%>
                    </td>
                    <td height="24" align="center">
                        <%#getusername(Eval("UserID","{0}"))%>
                    </td>
                    <td height="24" align="center">
                    <%#GetContent(Eval("PayPlatID", "{0}"))%>
                    </td>
                    <td height="24" align="center">
                        <%#Eval("PaymentNum") %>
                    </td>
                    <td height="24" align="right">
                        <%#Eval("MoneyPay","{0:f}") %>
                    </td>
                    <td height="24" align="right">
                        <%#Eval("MoneyTrue","{0:f}") %>
                    </td>
                    <td height="24" align="center">
                        <%# GetStatus(Eval("Status","{0}"))%>
                    </td>
                    <td height="24" align="center">
                        <%# GetCStatus(Eval("CStatus","{0}"))%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td height="24" colspan="4" align="right">
                总计金额：
            </td>
            <td height="24" align="right">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            </td>
            <td height="24" align="right">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            </td>
            <td height="24" colspan="4" align="right">
                &nbsp;
            </td>
        </tr>
        <tr class="tdbg">
            <td height="22" colspan="10" style="position:relative;" align="center" class="tdbgleft">
               共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条记录
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页  <asp:TextBox ID="txtPage" runat="server"  AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
               条记录/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页
                <div id="divBack" style="float:left;text-align:right;display:none;">
                    <input type="button" value="返回" style="right:5px;bottom:-2px;" class="C_input" onclick="history.go(-1)" />
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
