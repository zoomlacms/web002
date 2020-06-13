<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.UserOrders, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员订单排名</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js">
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 商城管理&gt;&gt; 销售统计&gt;&gt; 会员订单排名</div>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;" id="TABLE1">
    <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="5%" class="title"> 用户ID</td>
      <td width="10%" class="title"> 用户名</td>
      <td width="10%" class="title"> 注册时间</td>
      <td width="10%" class="title"> 电子信箱</td>
      <td width="10%" class="title"> 最后登陆IP</td>
      <td width="10%" class="title"> 订单数量</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <tr class="" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="22"  align=center><%#Eval("UserID")%></td>
          <td height="22"  align=center><%#Eval("Username") %></td>
          <td height="22"  align=center><%#Eval("RegTime")%></td>
          <td height="22"  align=center><%#Eval("Email")%></td>
          <td height="22"  align=center><%#Eval("LastLoginIP")%></td>
          <td height="22"  align=center><%#Getordernum(Eval("Username","{0}"))%></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td height="22" colspan="10" align="center" class="tdbgleft">共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条记录
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server" Text="" />
        页
        <asp:Label ID="pagess" runat="server" Text="" />
        条记录/页  转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
        页</td>
    </tr>
  </table>
</form>
</body>
</html>