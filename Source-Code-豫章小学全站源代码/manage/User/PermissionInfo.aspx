<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_PermissionInfo, App_Web_own0w3ym" enableviewstate="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>角色管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 角色管理&gt;&gt;<a href="PermissionInfo.aspx">角色管理</a>&nbsp;&nbsp;<a href="Permissionadd.aspx">[添加角色]</a></div>
  <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
    <tr class="gridtitle" align="center" style="height:25px;">
      <td height="26" colspan="6"><strong>角色管理</strong></td>
    </tr>
    <tr class="tdbgleft">
      <td width="5%" height="24" align="center"><strong>ID</strong></td>
      <td width="15%" height="24" align="center"><strong>角色名称</strong></td>
      <td width="40%" height="24" align="center"><strong>角色说明</strong></td>
      <td width="10%" height="24" align="center"><strong>优先级别</strong></td>
      <td width="10%" height="24" align="center"><strong>是否启用</strong></td>
      <td width="20%" height="24" align="center"><strong>相关操作</strong></td>
    </tr>
    <asp:Repeater ID="Pagetable" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#Eval("ID") %></td>
          <td height="24" align="center"><a href="Permissionadd.aspx?menu=edit&id=<%#Eval("ID") %>"><%#Eval("RoleName") %></a></td>
          <td height="24" align="center"><%#Eval("info")%></td>
          <td height="24" align="center"><%#Eval("Precedence")%></td>
          <td height="24" align="center"><%#Eval("IsTrue","{0}")=="True"?"<font color=green>启用</font>":"<font color=red>停用</font>"%></td>
          <td height="24" align="center"><a href="Permissionadd.aspx?menu=edit&id=<%#Eval("ID") %>">修改</a>　<a href="Permissionadd.aspx?menu=del&id=<%#Eval("ID") %>" onclick="return confirm('确实要删除此角色吗？');">删除</a></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td class="tdbgleft" colspan="6" align="center">共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />
        /
        <asp:Label ID="PageSize" runat="server" Text="" />
        页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input"  OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
        条信息/页  转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
</form>
</body>
</html>