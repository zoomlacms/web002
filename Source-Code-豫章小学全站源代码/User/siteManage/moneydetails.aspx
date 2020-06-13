<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_moneydetails, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>佣金明细</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="formq" runat="server">
<div class="main_user_bg"></div>
  <div class="user_con">
<h2>佣金明细</h2>   
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
<tr>
    <td colspan="7">
    <a href="?T=0" style="color:#ff0000">全部佣金</a>
    <a href="?T=1" >待返佣金</a>
    <a href="?T=2" >已返佣金</a></td></tr>
  <tr>
    <th width="20%">日期</th>
    <th width="20%">类型</th>
    <th width="20%">金额</th>
    <th width="20%">状态</th>
    <th  width="20%">详细说明</th>
  </tr>
</table>
<div id="nocon" runat="server" style="color:Red" align="center" visible="false">暂无记录</div>
<asp:Repeater ID="rep" runat="server">
<ItemTemplate>
<table  width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
  <tr>
    <td align="center" width="20%"><%# Eval("Orderdata") %></td>
    <td align="center" width="20%"><%#Eval("type") %></td>
    <td align="center" width="20%"><%# Eval("profileMoney") %></td>
    <td align="center" width="20%"><%# Eval("state") %></td>
    <td align="center" width="20%"><%# Eval("remark") %></td>
  </tr>
  </table>
</ItemTemplate>
</asp:Repeater>
<table  width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
  <tr>
    <td align="center" width="20%"><strong>总计</strong></td>
    <td align="center" width="20%"><asp:Label ID="lblCount" runat="server">0</asp:Label>&nbsp;元</td>
    <td style="color:#f00;" align="center"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<div  align="right" id="pages" runat="server"> 
    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页 
    <span style="text-align: center">
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
    </span>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>页
</div>
</div>
</form>
</body>
</html>
