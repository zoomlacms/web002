<%@ page language="C#" autoeventwireup="true" inherits="manage_User_ModuleList, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>企业信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt;企业信息管理</div>
  <table width="100%" cellpadding="0" cellspacing="0" border="0">
    <tr>
      <td style="height: 20px"><asp:DropDownList ID="DropDownList1" runat="server" DataTextField="ModelName" DataValueField="ModelID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"> </asp:DropDownList></td>
    </tr>
    <tr>
      <td><asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PageSize="30" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
          <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
          <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
          <Columns>
          <asp:TemplateField HeaderText="选择">
            <ItemTemplate>
              <asp:CheckBox ID="chkSel" runat="server" />
            </ItemTemplate>
            <HeaderStyle Width="5%" />
            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
          </asp:TemplateField>
          <asp:BoundField DataField="ID" HeaderText="系统ID" />
          <asp:BoundField DataField="UserID" HeaderText="用户ID" />
          <asp:BoundField DataField="UserName" HeaderText="用户名" />
          <asp:CommandField ShowSelectButton="True" SelectText="查看" />
          <asp:CommandField ShowDeleteButton="True" />
          </Columns>
        </asp:GridView></td>
    </tr>
    <tr>
      <td><asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
        <asp:Button ID="Button1" runat="server" Font-Size="9pt" Text="取消" OnClick="Button1_Click" class="C_input" />
        <asp:Button ID="Button2" runat="server" Font-Size="9pt" Text="批量删除" OnClick="Button2_Click" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>