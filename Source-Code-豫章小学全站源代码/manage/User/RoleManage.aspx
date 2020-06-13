<%@ page language="C#" title="角色管理" autoeventwireup="true" inherits="User.RoleManage, App_Web_tskucmgh" enableeventvalidation="false" viewStateEncryptionMode="Never" %>
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
<div class="r_navigation">后台管理&gt;&gt;<a href="AdminManage.aspx">管理员管理</a>&gt;&gt;角色管理&nbsp;&nbsp;<a href="AddRole.aspx">[添加角色]</a></div>
  <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="border"
    Width="100%" ForeColor="#333333" AutoGenerateColumns="False" DataKeyNames="RoleID"
    PageSize="20" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="LnkModify_Click" OnRowDataBound="GridView1_RowDataBound" >
    <Columns>
    <asp:BoundField DataField="RoleID" HeaderText="ID">
      <HeaderStyle Width="10%" />
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="RoleName" HeaderText="角色名">
      <HeaderStyle Width="10%" />
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="Description" HeaderText="描述">
      <HeaderStyle Width="50%" />
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate>
        <asp:LinkButton ID="Userlist" CommandName="ListRolelist" CommandArgument='<%# Eval("RoleID")%>' runat="server">成员管理</asp:LinkButton>
        <asp:LinkButton ID="LinkEdit" CommandName="ModifyRole" CommandArgument='<%# Eval("RoleID")%>'  runat="server">修改</asp:LinkButton>
        <asp:LinkButton ID="LnkDel" CommandName="Del" Enabled='<%# Returnuser(Eval("RoleID").ToString()) %>' CommandArgument='<%# Eval("RoleID")%>' OnClientClick="return confirm('您确认删除该记录吗?')" runat="server">删除</asp:LinkButton>
        <asp:LinkButton ID="LinkButton1" Enabled='<%# Returnuser(Eval("RoleID").ToString()) %>' CommandName="ModifyPower" CommandArgument='<%# Eval("RoleID")%>' runat="server">权限设置</asp:LinkButton>
      </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"  Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"  NextPageText="下一页" PreviousPageText="上一页" />
  </asp:GridView>
  <div class="clearbox"> </div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tr class="tdbg">
      <td class="tdbgleft"><img src="../../Images/notice.gif" align="absmiddle">&nbsp;<b>说明：超级管理员拥有最高的权限，不能修改其权限，删除该组！</b></td>
    </tr>
  </table>
</form>
</body>
</html>