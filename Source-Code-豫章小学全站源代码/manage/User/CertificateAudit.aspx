<%@ page language="C#" autoeventwireup="true" inherits="manage_User_CertificateAudit, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>证书审核列表</title>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
</head>
<body style="background: none">
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="AdminManage.aspx">用户管理</a>&gt;&gt;<a href="CertificateAudit.aspx">证书审核</a></div>
  <table cellpadding="2" cellspacing="1" class="border" style="background-color: white;" width="100%">
    <tr>
      <td class="spacingtitle" align="center" colspan="3"> 证书审核 </td>
    </tr>
    <tr class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td> 关键字：
        <asp:TextBox ID="TextBox1" runat="server" Width="102px" CssClass="l_input"></asp:TextBox>
        认证状态：
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="text">
          <asp:ListItem Value="3" Selected="True">选择</asp:ListItem>
          <asp:ListItem Value="1">待认证</asp:ListItem>
          <asp:ListItem Value="2">认证成功</asp:ListItem>
          <asp:ListItem Value="0">认证失败</asp:ListItem>
        </asp:DropDownList>
        指定用户：
        <asp:TextBox ID="TextBox2" runat="server" Width="102px" CssClass="l_input"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="搜  索" class="C_input" Style="height: 20px" Width="63px" OnClick="Button2_Click" /></td>
    </tr>
  </table>
  <div class="clearbox"> </div>
  <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" CssClass="border" Width="100%" OnRowCommand="Lnk_Click">
    <Columns>
    <asp:TemplateField HeaderText="用户名称">
      <ItemTemplate> <%#Eval("UserName")%> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="公司名称">
      <ItemTemplate> <%#Eval("CompanyName")%> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="认证状态">
      <ItemTemplate> <%# getStrstate((int)Eval ("State"))%> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="认证类型">
      <ItemTemplate> <%#Eval("ApproveType")%> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate>
        <asp:LinkButton ID="LnkDelete" runat="server" CommandName="DeleteUser" OnClientClick="if(!this.disabled) return confirm('确实要删除此会员吗？');" CommandArgument='<%# Eval("UserID")%>'>删除</asp:LinkButton>
        | <a href='CertificateAuditInfo.aspx?UserID=<%# Eval("UserID")%>'>进行认证</a> </ItemTemplate>
      <HeaderStyle Width="10%" />
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
  </asp:GridView>
  <table>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbg" colspan="4" align="center"> 共
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
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
        条信息/页 转到第
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
</form>
</body>
</html>