<%@ page language="C#" autoeventwireup="true" inherits="User.UserManageLogin, App_Web_tskucmgh" title="会员管理" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员管理</title>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="AdminManage.aspx">用户管理</a>&gt;&gt;会员管理<asp:Label ID="LblGroup" runat="server" Text="Label"></asp:Label></div>
  <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
    <tr>
      <td class="spacingtitle"  align="center"> 会员登录 </td>
    </tr>
    <tr class="tdbgleft">
      <td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
          <asp:ListItem Value="1" Selected="True">按会员组查找</asp:ListItem>
          <asp:ListItem Value="2">按登陆日期查找</asp:ListItem>
        </asp:DropDownList>
        <strong id="strtime" runat="server" visible="false">
        <asp:TextBox ID="txtSteatTime" runat="server" Width="102px" onclick="calendar()"></asp:TextBox>
        到
        <asp:TextBox ID="txtEndTime" runat="server"  Width="102px" onclick="calendar()"></asp:TextBox>
        </strong> <strong id="strgroup" runat="server" visible="true">
        <asp:DropDownList ID="ddlGroup" runat="server" DataTextField="GroupName" DataValueField="GroupID"> </asp:DropDownList>
        </strong>
        <asp:Button ID="Button1" runat="server" Text="查  找" OnClick="Button1_Click1"  style="height: 20px" Width="62px" class="C_input"/>
        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
          <asp:ListItem Selected="True" Value="3" >ID</asp:ListItem>
          <asp:ListItem Value="4">会员名</asp:ListItem>
          <asp:ListItem Value="5">Email</asp:ListItem>
        </asp:DropDownList>
        <strong id="IdUser" runat="server" visible="true">
        <asp:TextBox ID="IDName" runat="server" Width="70px" EnableTheming="true" ></asp:TextBox>
        </strong>
        <asp:Button ID="Button2" runat="server" Text="搜  索" style="height:20px" onclick="Button2_Click" Width="63px"  />
        <asp:HiddenField ID="HiddenField1" runat="server" /></td>
    </tr>
  </table>
  <div class="clearbox"> </div>
  <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="border" DataKeyNames="UserID" PageSize="20" OnRowCommand="Lnk_Click" OnPageIndexChanging="Egv_PageIndexChanging" Width="100%" AllowSorting="true" OnSorting="Egv_Sorting">
    <Columns>
<%--      <asp:TemplateField>
        <ItemTemplate>
            <asp:CheckBox ID="chkSel" runat="server" />
        </ItemTemplate>
        <HeaderStyle Width="3%" />
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:TemplateField>--%>
    <asp:BoundField DataField="UserID" HeaderText="ID" SortExpression="UserID" HeaderStyle-ForeColor="#1e860b">
      <HeaderStyle ForeColor="#1E860B"></HeaderStyle>
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="会员名">
      <ItemTemplate> <a href="Userinfo.aspx?id=<%# Eval("UserID") %>">
        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
        </a> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="会员组">
      <ItemTemplate> <%# GetGroupName(Eval("GroupID","{0}")) %> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="Purse" HeaderText="资金余额" DataFormatString="{0:c}">
      <HeaderStyle Width="10%" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="RegTime" HeaderText="注册时间" SortExpression="RegTime">
      <HeaderStyle ForeColor="#1e860b" Width="13%" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="UserExp" HeaderText="积分">
      <HeaderStyle Width="5%" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="LoginTimes" HeaderText="登录次数" SortExpression="LoginTimes">
      <HeaderStyle Width="8%" ForeColor="#1e860b" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:BoundField DataField="LastLockTime" HeaderText="最后登录时间" SortExpression="LastLockTime">
      <HeaderStyle Width="13%" ForeColor="#1e860b" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="状态">
      <ItemTemplate> <%# GetStatus(Eval("Status","{0}")) %> </ItemTemplate>
      <HeaderStyle Width="5%" />
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate>
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Login" CommandArgument='<%# Eval("UserID")%>'>登录</asp:LinkButton>
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
  <%--<asp:CheckBox ID="cbAll" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="cbAll_CheckedChanged" Text="全选" />--%>
  <asp:Button ID="btnCan" runat="server" Text="批量认证" Visible="false" onclick="btnCan_Click" class="C_input" />
  <asp:Button ID="btnLock" runat="server" Text="批量锁定" Visible="false" OnClick="btnLock_Click"  class="C_input"/>
  <asp:Button ID="btnDel" runat="server" Text="批量删除" Visible="false" OnClick="btnDel_Click" class="C_input" />
  <asp:Button ID="btnNormal" runat="server" Text="批量解锁" Visible="false" OnClick="btnNormal_Click"  class="C_input"/>
  <asp:DropDownList ID="UserGroup" runat="server" Visible="false">
    <asp:ListItem Selected="True" Value="1">普通会员</asp:ListItem>
    <asp:ListItem Value="2">企业会员</asp:ListItem>
  </asp:DropDownList>
  <asp:Button ID="GroupMove" runat="server" Text="批量移动" Visible="false" OnClick="GroupMove_Click" class="C_input" />
  <asp:HiddenField ID="HdnGroupID" runat="server" />
</form>
</body>
</html>