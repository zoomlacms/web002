<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.GroupManage, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员组管理</title>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;会员管理&gt;&gt; 会员组管理 &gt;&gt;【<a href="Group.aspx" style="color:Red">添加会员组</a>】</div>
  <div class="divbox" id="nocontent" runat="server">暂无会员组</div>
  <asp:GridView ID="Gdv" runat="server" CssClass="border" border="0" cellpadding="0" cellspacing="1" DataKeyNames="GroupID" PageSize="20" OnRowDataBound="Egv_RowDataBound" OnPageIndexChanging="Gdv_PageIndexChanging" OnRowCommand="Lnk_Click" Width="100%" AutoGenerateColumns="False">
    <Columns>
    <asp:BoundField HeaderText="ID" DataField="GroupID">
      <HeaderStyle Width="3%" />
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="会员组名" >
      <HeaderStyle Width="15%" />
      <ItemStyle  HorizontalAlign="Center" />
      <ItemTemplate> <a href="Group.aspx?id=<%# Eval("GroupID","{0}")%>"><%# Eval("GroupName")%></a> </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField HeaderText="会员组说明" DataField="Description">
      <HeaderStyle Width="20%" />
      <ItemStyle  HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="注册可选">
      <HeaderStyle Width="7%" />
      <ItemTemplate> <%# GetReg(Eval("RegSelect").ToString()) %> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="默认">
      <HeaderStyle Width="5%" />
      <ItemTemplate> <%# GetDefault(Eval("IsDefault").ToString())%> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="会员数">
      <HeaderStyle Width="8%" />
      <ItemTemplate> </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="设置">
      <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Default" CommandArgument='<%# Eval("GroupID") %>'>默认</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GroupID") %>'>修改</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("GroupID") %>' OnClientClick="return confirm('你确定要删除用户组吗？')">删除</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Permission" CommandArgument='<%# Eval("GroupID") %>'>权限</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton5" runat="server" CommandName="Model" CommandArgument='<%# Eval("GroupID") %>'>模型</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton6" runat="server" CommandName="View" CommandArgument='<%# Eval("GroupID") %>'>会员列表</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton7" runat="server" CommandName="Customize" CommandArgument='<%# Eval("GroupID") %>'>个性字段</asp:LinkButton>
      </ItemTemplate>
      <ItemStyle  HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
  </asp:GridView>
</form>
</body>
</html>