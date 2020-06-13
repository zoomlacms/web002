<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_StatVisitorReport, App_Web_5bajtehy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>访问统计</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt;访问统计&gt;&gt;访问记录</div>
  <div>
    <table width="100%">
      <tr>
        <td><asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CssClass="title">
            <Columns>
            <asp:BoundField DataField="IP" HeaderText="IP">
              <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Height="24px"  Width="90px" />
              <HeaderStyle Height="26px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="登陆地区" >
              <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Height="24px" />
              <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#GetIP(DataBinder.Eval(Container.DataItem,"IP").ToString())%>'></asp:Label>
              </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CallTime" HeaderText="登陆时间" >
              <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Width="130px" Height="24px" HorizontalAlign="Center" />
              <HeaderStyle Height="26px" />
            </asp:BoundField>
            <asp:BoundField DataField="CallSystem" HeaderText="登陆系统" >
              <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Width="130px" HorizontalAlign="Center"  Height="24px" />
              <HeaderStyle Height="26px" />
            </asp:BoundField>
            <asp:BoundField DataField="CallBrowser" HeaderText="登陆浏览器" >
              <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Width="130px"  Height="24px" HorizontalAlign="Center" />
              <HeaderStyle Height="26px" />
            </asp:BoundField>
            </Columns>
          </asp:GridView></td>
      </tr>
      <tr class="tdbg">
        <td height="24" colspan="6" align="center" class="tdbgleft"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          &nbsp;
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server" Text="" />
          页
          <asp:Label ID="pagess" runat="server" Text="" />
          个/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
          页</td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>