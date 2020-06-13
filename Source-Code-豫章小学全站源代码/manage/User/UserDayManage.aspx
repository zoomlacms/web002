<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UserDayManage, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>用户节日管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/pacalendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; <a href="UserManage.aspx">用户管理</a> &gt;&gt; 用户节日管理</div>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbgleft">
      <td> 选择日期：
        <asp:TextBox ID="txtdate" runat="server" Width="150px" CssClass="l_input" onclick="calendar('txtdate')"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="C_input"  onclick="Button1_Click" /></td>
    </tr>
  </table>
  <div class="clearbox"></div>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr class="tdbg">
      <td align="center" class="spacingtitle" colspan="7"> 用户节日管理 </td>
    </tr>
    <tr class="tdbgleft" style="text-align: center; font-weight: bold" height="26px">
      <td width="10%">ID</td>
      <td width="20%">时间</td>
      <td width="30%">节日标题</td>
      <td width="10%">用户</td>
      <td width="10%">邮件发送状态</td>
      <td width="10%">短信发送状态</td>
      <td width="10%">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                style="text-align: center;" height="23px">
          <td width="200px"><%#Eval("id") %></td>
          <td><%#Eval("D_date","{0:d}")%></td>
          <td><%#Eval("D_name")%></td>
          <td><%#Getusername(Eval("d_userid","{0}")) %></td>
          <td><%#Eval("D_mail","已发送 {0} 次")%></td>
          <td><%#Eval("D_mobile", "已发送 {0} 次")%></td>
          <td><a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr>
      <td colspan="7" align="center"> 共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server"  Text="" />
        页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
              Width="30px"></asp:TextBox>
        条信息/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
        页
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></td>
    </tr>
  </table>
</form>
</body>
</html>