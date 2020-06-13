<%@ page language="C#" autoeventwireup="true" inherits="User_Shopfee_MyAuctionList, App_Web_xj23mn1f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>竞拍记录</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您好<asp:Label ID="LblUserName" runat="server" Text="" />！您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;购物订单管理
</div>

<div class="us_topinfo" style="margin-top: 10px;">
    <a href="../PreViewOrder.aspx?menu=Cartinfo">购物车管理</a> <a href="../PreViewOrder.aspx?menu=Orderinfo">
        订单管理</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=1">已确定的订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=2">
            已发货订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=3">正常订单</a>
    <a href="../PreViewOrder.aspx?menu=Orderinfo&type=4">已成交订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=5">
        已作废订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=6">代购订单</a> <a href="../PreViewOrder.aspx?menu=Orderinfo&type=1&panel=1">
            代购历史订单</a> <a href="MyAuctionList.aspx">竞拍记录</a>
</div>
<div class="us_seta" style="margin-top: 10px;">
    <h1 style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="竞拍记录"></asp:Label></h1>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td width="10%" align="center" class="title">
                    <span class="tdbgleft">ID</span>
                </td>
                <td width="20%" align="center" class="title">商品名称</td>
                <td width="10%" align="center" class="title">竞拍类型</td>
                <td width="10%" align="center" class="title">竞拍状态</td>
                <td width="10%" align="center" class="title">竞拍结果</td>
                <td width="30%" align="center" class="title">竞拍时间</td>
                <td width="5%" align="center" class="title">
                    <span class="tdbgleft">操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Promotions" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="24" align="center">
                            <%#Eval("ProID")%>
                        </td>
                        <td height="24" align="center">
                            <%#GetName(Eval("ProID"))%>
                        </td>
                        <td height="24" align="center">
                            <%#GetType(Eval("ProID"))%>
                        </td>
                        <td height="24" align="center">
                            <%#GetState(Eval("ProID"))%>
                        </td>
                        <td height="24" align="center">
                            <%#GetCart(Eval("ProID"))%>
                        </td>
                        <td height="24" align="center">
                            <%#GetTime(Eval("ProID"))%>
                        </td>
                        <td height="24" align="center">
                            &nbsp;<a href="ShowAuction.aspx?id=<%#Eval("ProID") %>">查看</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="6" align="center" class="tdbgleft">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条记录
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
                    条记录/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
        </tbody>
    </table>
</div>
</form>
</body>
</html>