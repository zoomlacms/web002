<%@ page language="C#" autoeventwireup="true" inherits="manage_User_ServiceInfo, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>客服信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;客服管理&gt;&gt;<a href='CustomerService.aspx'>客服信息</a>&gt;&gt;查询客服记录</div>
  <div style="white-space:normal">
    <asp:Repeater ID="rpServiceInfo" runat="server" >
      <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"") %> </ItemTemplate>
    </asp:Repeater>
  </div>
  <table cellpadding="0" cellspacing="0" border="0" width="100%">
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