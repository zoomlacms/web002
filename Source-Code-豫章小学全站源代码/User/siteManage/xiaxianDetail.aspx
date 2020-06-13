<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_xiaxianDetail, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>下线详情</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1"  runat="server">
<div class="main_user_bg"></div>
<div class="user_con">
<h2>分站详情</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table user_table2">
  <tr>
  <td colspan="3">
  实时详情：<a href="xiaxianDetail.aspx?type=all&day=-3">全部分站</a>
  <a href="xiaxianDetail.aspx?type=par&day=-3">下级分站</a>
  <a href="xiaxianDetail.aspx?type=nexpar&day=-3">下下级分站</a></td >
  <td style="text-align:right"  colspan="2">
    按时间：
   <asp:DropDownList ID="ddtime" runat="server">
   <asp:ListItem Value="0">今日</asp:ListItem>
   <asp:ListItem Value="1">昨天</asp:ListItem>
   <asp:ListItem Value="2">7天</asp:ListItem>
   <asp:ListItem Value="3">本月</asp:ListItem>
   <asp:ListItem Value="4">上月</asp:ListItem>
   <asp:ListItem Value="5">全年</asp:ListItem>
   <asp:ListItem Value="6">全部</asp:ListItem>
   </asp:DropDownList>
   <asp:Button ID="subm" runat="server" class="login_btn" Text="查看" onclick="submit_Click" />
  </td>
  </tr>
  <tr>
  <th width="20%">分站帐号</th>
  <th width="20%">分站级别</th>
  <th width="15%">下一级分站</th>
  <th width="20%">注册时间</th>
  <th width="25%">业绩收入(为我创造的收入)</th>
  </tr>
</table>
<asp:Repeater ID="rep" runat="server" onitemdatabound="rep_ItemDataBound">
<HeaderTemplate><table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table user_table2"></HeaderTemplate>
<ItemTemplate>
<tr>
<td width="20%"><%#Eval("username")%></td>
<td width="20%"><%#Eval("group")%></td>
<td width="15%">
<asp:HiddenField ID="hfuserid" runat="server" Value='<%#Eval("userid") %>' />
<asp:HyperLink ID="hlNexnum" runat="server" Text='<%#Eval("nexnum") %>'></asp:HyperLink></td>
<td width="20%"><%#Eval("regdata") %></td>
<td width="25%"><%#Eval("money") %></td>
</tr>
</ItemTemplate>
<FooterTemplate></table></FooterTemplate>
</asp:Repeater>
<div align="center"> 
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
