<%@ page language="C#" title="角色管理" autoeventwireup="true" inherits="User.RoleManage, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>管理角色</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script>
    debugger
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >>  <a href="RoleManage.aspx"> 管理角色</a></div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="border" Width="100%" ForeColor="#333333" AutoGenerateColumns="False" DataKeyNames="RoleID" PageSize="20" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="LnkModify_Click">
        <Columns>
            <asp:BoundField DataField="RoleID" HeaderText="ID" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="RoleName" HeaderText="角色名" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="描述" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                <HeaderStyle Width="50%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>                            
            <asp:TemplateField HeaderText="操作" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
            <ItemTemplate>
                <asp:LinkButton ID="Userlist" CommandName="ListRolelist" CommandArgument='<%# Eval("RoleID")%>'
                    runat="server">成员管理</asp:LinkButton>
                <asp:LinkButton ID="LinkEdit" CommandName="ModifyRole" CommandArgument='<%# Eval("RoleID")%>'
                    runat="server">修改</asp:LinkButton>
                <asp:LinkButton ID="LnkDel" CommandName="Del" Enabled='<%# Returnuser(Eval("RoleID").ToString()) %>' CommandArgument='<%# Eval("RoleID")%>' OnClientClick="returb confirm('你确定要删除该角色吗？')"
                    runat="server">删除</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" Enabled='<%# Returnuser(Eval("RoleID").ToString()) %>' CommandName="ModifyPower" CommandArgument='<%# Eval("RoleID")%>'
                    runat="server">权限设置</asp:LinkButton>
            </ItemTemplate>
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
                 <div class="clearbox"></div>
         <div class="columntitle">
           <img src="../../Images/notice.gif" >&nbsp;<b>说明：超级管理员拥有最高的权限，不能修改其权限，删除该组！</b>
            </div>
        </div>
    </form>
</body>
</html>
