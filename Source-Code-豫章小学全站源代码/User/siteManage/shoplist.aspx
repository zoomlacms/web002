<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_shoplist, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>博客内容推广</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="main_user_bg"></div>
<div class="user_con">
 <h2>商家推广列表</h2>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table user_table2">
  <tr>
  <td style="text-align:left">
   商家：<asp:DropDownList ID="ddlShop" runat="server"> </asp:DropDownList>
   <asp:Button ID="subm" runat="server" class="login_btn" Text="查看" onclick="submit_Click" />
  </td>
  </tr>
  </table>
 <asp:Repeater ID="rep" runat="server">
 <HeaderTemplate>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
 <tr align="center">
  <td>推广标题</td>
  <td>推广商家</td>
  <td>最高返利</td>
  <td>获取推广代码</td>
  </tr>
 </HeaderTemplate>
 <ItemTemplate>
 <tr align="center">
  <td><a href="ShopDetail.aspx?gid=<%#Eval("id") %>" target="_blank"><%#Eval("Title") %></a></td>
  <td><%#GetShop(Eval("ShopId","{0}")) %></td>
  <td><%#Eval("Rebate") %></td>
  <td><a href="ShopDetail.aspx?gid=<%#Eval("id") %>" target="_blank">获取推广代码</a></td>
 </tr>
 </ItemTemplate>
 <FooterTemplate> </table></FooterTemplate>
 </asp:Repeater>
 <div align="center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页 
    <span style="text-align: center">
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true"  class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged" ></asp:TextBox>
        </span>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>页</div>
</div>
</form>
</body>
</html>
