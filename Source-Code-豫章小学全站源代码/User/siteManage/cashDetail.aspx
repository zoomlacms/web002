<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_cashDetail, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>提现记录</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="main_user_bg"></div>
  <div class="user_con">
 <h2>提现记录</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
  <tr>
    <th align="center" bgcolor="#edf6fe" width="14%">申请日期</th>
    <th align="center" bgcolor="#edf6fe" width="14%">支付帐户</th>
    <th align="center" bgcolor="#edf6fe" width="18%">支付帐号</th>
    <th align="center" bgcolor="#edf6fe" width="14%">开户名</th>
    <th align="center" bgcolor="#edf6fe" width="10%">金额</th>
    <th align="center" bgcolor="#edf6fe" width="18%">联系手机</th>
    <th align="center" bgcolor="#edf6fe" width="10%">进度</th>
  </tr>
 </table>
 <asp:Repeater ID="rep" runat="server">
 <ItemTemplate>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
 <tr>
 <td width="14%" align="center" ><asp:Label ID="lblorderdate" runat="server" Text='<%#Eval("orderdata") %>'></asp:Label></td>
  <td width="14%" align="center" ><asp:Label ID="lbluseid" runat="server" Text='<%#Eval("userid") %>'></asp:Label></td>
  <td width="18%" align="center" ><asp:Label ID="lblacc" runat="server" Text='<%#Eval("accinfo") %>'></asp:Label></td>
  <td width="14%" align="center" ><asp:Label ID="lblde" runat="server" Text='<%#Eval("accuser") %>'></asp:Label></td>
  <td width="10%" align="center" ><asp:Label ID="lblmoney" runat="server" Text='<%#Eval("money") %>'></asp:Label></td>
  <td width="18%" align="center" ><asp:Label ID="lblmobil" runat="server" Text='<%#Eval("mobile") %>'></asp:Label></td>
  <td width="10%" align="center" ><asp:Label ID="lblstate" runat="server" Text='<%#Eval("state") %>'></asp:Label></td>
 </tr>
 </table>
 </ItemTemplate>
 </asp:Repeater>
 <div align="center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条信息
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
