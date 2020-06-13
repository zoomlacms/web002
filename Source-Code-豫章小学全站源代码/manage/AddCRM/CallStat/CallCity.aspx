<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_CallCity, App_Web_5bajtehy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>统计样式</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt;邮件订阅&gt;&gt;订阅管理</div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="center" class="spacingtitle">订阅管理</td>
      </tr>
      <tr class="tdbg">
        <td> 添加地区或城市：
          <asp:DropDownList ID="DropDownList2" runat="server"  >
            <asp:ListItem Value="1">显示简单样式信息</asp:ListItem>
            <asp:ListItem Value="2">显示复杂样式信息</asp:ListItem>
            <asp:ListItem Value="3">统计但不显示信息</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox ID="txtTepy" class="l_input" runat="server"></asp:TextBox>
          <asp:Button ID="Button1" class="C_input" runat="server" Text="添  加" OnClick="Button1_Click" /></td>
      </tr>
      <tr class="tdbg">
        <td><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="C_Nid">
            <Columns>
            <asp:TemplateField HeaderText="编号">
              <HeaderStyle Width="5%" />
              <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("C_Nid") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="地区名称">
              <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CName") %>'></asp:TextBox>
              </EditItemTemplate>
              <HeaderStyle Width="15%" />
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("CName") %>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="代码类型">
              <EditItemTemplate>
                <asp:DropDownList ID="DropDownList2" runat="server" >
                  <asp:ListItem Value="1" >显示简单样式信息</asp:ListItem>
                  <asp:ListItem Value="2">显示复杂样式信息</asp:ListItem>
                  <asp:ListItem Value="3">统计但不显示信息</asp:ListItem>
                </asp:DropDownList>
              </EditItemTemplate>
              <HeaderStyle Width="15%" />
              <ItemTemplate> <%#Gettype(DataBinder.Eval(Container.DataItem, "Ctype").ToString())%> </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="调用代码">
              <HeaderStyle Width="47%" />
              <ItemTemplate> <%#GetCode(DataBinder.Eval(Container.DataItem, "C_Nid").ToString(),DataBinder.Eval(Container.DataItem, "Ctype").ToString())%> </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" ItemStyle-HorizontalAlign="Center" >
              <HeaderStyle Width="8%" />
            </asp:CommandField>
            <asp:CommandField ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" >
              <HeaderStyle Width="5%" />
            </asp:CommandField>
            </Columns>
          </asp:GridView></td>
      </tr>
      <tr class="tdbg">
        <td align="center"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          &nbsp;
          <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
          <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
          <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
          <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
          页次：
          <asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>
          /
          <asp:Label ID="PageSize" runat="server" Text=""></asp:Label>
          页
          <asp:Label ID="pagess" runat="server" Text=""></asp:Label>
          个/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
          页</td>
      </tr>
    </table>
</form>
</body>
</html>