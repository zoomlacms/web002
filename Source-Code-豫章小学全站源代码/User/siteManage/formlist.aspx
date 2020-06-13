<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_formlist, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>业绩详情</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="main_user_bg"></div>
  <div class="user_con">
<h2>分站分销业绩查询</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
  <tr>
    <td colspan="7">
    <a href="?T=1" style="color:#ff0000">全部订单</a>
    <a href="?T=2" >待返订单</a>
    <a href="?T=3" >已返订单</a>
    <a href="?T=4" >无效订单</a> 
    <a href="?T=5" >下级订单</a> <a href="?T=6" >下下级订单</a></td></tr>
  <tr>
    <th align="center" nowrap="nowrap" bgcolor="#F5F8FD" width="14%">订单号</th>
    <th nowrap="nowrap" bgcolor="#F5F8FD" width="20%">分站帐号</th>
    <th nowrap="nowrap" bgcolor="#F5F8FD" width="10%">分站级别</th>
    <th nowrap="nowrap" bgcolor="#F5F8FD" width="14%">状态</th>
    <th nowrap="nowrap" bgcolor="#F5F8FD" width="14%">注册时间</th>
    <th nowrap="nowrap" bgcolor="#F5F8FD" width="14%">下单时间</th>
    <th nowrap="nowrap" bgcolor="#F5F8FD" width="14%">预计收入</th>
  </tr>
</table>
<asp:Repeater ID="repf" runat="server">
    <ItemTemplate>
        <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="user_table">
            <tr>
                <td align="center" width="20%"><asp:Label ID="lblOrderNo" runat="server" Text='<%#Eval("OrderNo") %>'></asp:Label></td>
                <td align="center" width="10%"><asp:Label ID="lbluserid" runat="server" Text='<%#Eval("username") %>'></asp:Label></td>
                <td align="center" width="14%"><asp:Label ID="lbltype" runat="server" Text='<%#Eval("type") %>'> </asp:Label></td>
                <td align="center" width="14%"><asp:Label ID="lblState" runat="server" Text='<%#Eval("state") %>'></asp:Label></td>
                <td align="center" width="14%"><asp:Label ID="lblRegtime" runat="server" 
                Text='<%#DataBinder.Eval(Container, "DataItem.regdate", "{0:yyyy-MM-dd}")%>'></asp:Label></td>
                <td align="center" width="14%"><asp:Label ID="lblOrderdata" runat="server" 
                Text='<%#DataBinder.Eval(Container, "DataItem.Orderdata", "{0:yyyy-MM-dd}")%>'></asp:Label></td>
                <td align="center" width="14%"><asp:Label ID="lblProfileMoney" runat="server" 
                Text='<%#DataBinder.Eval(Container, "DataItem.profileMoney", "{0:N2}")%>'> </asp:Label></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:Repeater>
<div  align="center"> 
    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页 
    <span style="text-align: center">
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
        </span>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>页</div>
</div>
</form>
</body>
</html>
