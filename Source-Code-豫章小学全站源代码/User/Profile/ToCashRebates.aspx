<%@ page language="C#" autoeventwireup="true" inherits="User_Profile_ToCashRebates, App_Web_ktmoec40" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>兑现记录</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a>&gt;&gt;<a href="Default.aspx">我的返利</a>&gt;&gt;<a href="ToCashRebates.aspx">兑现记录</a>
</div>
    <div class="us_seta"  style="margin-top:5px;"><h1 align="center">兑现记录</h1></div>
    <div align="center" class="us_seta">
        <table width="100%" >
            <tr>
                <td align="center" width="15%">申请时间</td>
                <td align="center" width="15%">兑现金额(元)</td>
                <td align="center" width="15%">扣除手续费(元)</td>
                <td align="center" width="20%">支付信息</td>
                <td align="center" width="20%">状态</td>
                <td align="center" width="15%">支付日期</td>
            </tr>  
        </table>
                <asp:Repeater ID="repf" runat="server" >
                <ItemTemplate>
                <table width="100%">
                <tr>
                    <td align="center" width="15%">
                    <asp:HiddenField ID="hfId" runat="server" Value='<%#Eval("id") %>' />
                    <%#DataBinder.Eval(Container.DataItem, "OrderData", "{0:yyyy-MM-dd}")%></td>
                    <td align="center" width="15%"><%# DataBinder.Eval(Container, "DataItem.HonorMoney", "{0:N2}")%></td>
                    <td align="center" width="15%"><%#DataBinder.Eval(Container, "DataItem.Fee", "{0:N2}")%></td>
                    <td align="center" width="20%"><%#Eval("Payinfo") %></td>
                    <td align="center" width="20%"><%# GetStatus(Eval("State", "{0}")) %></td>
                    <td align="center" width="15%">
                    <asp:Label id="lblpayData" runat="server" Text='<%#GetDataBypay(Eval("State","{0}"),Eval("payData","{0}")) %>'></asp:Label></td>
                </tr>  
        </table>
                </ItemTemplate>
                </asp:Repeater>
                <table> <tr class="tdbg">
            <td height="24" colspan="7" align="center" class="tdbgleft">
                共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
                <span style="text-align: center">
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input"
                    Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
                    </span>条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>页
            </td>
        </tr></table>
</div>
</form>
</body>
</html>