<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_SendMailList, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮件订阅</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;邮件订阅&gt;&gt;发送邮件列表</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr class="tdbg">
        <td align="center" class="spacingtitle"> 发送邮件列表</td>
      </tr>
      <tr>
        <td><asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="ID">
            <Columns>
            <asp:TemplateField HeaderText="标题">
              <ItemTemplate> <a href='MailShow.aspx?id=<%#DataBinder.Eval(Container.DataItem,"ID")%>'><%#DataBinder.Eval(Container.DataItem, "MailTitle")%></a> </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="发送时间" DataField="MailSendTime" />
            <asp:TemplateField HeaderText="邮件状态">
              <ItemTemplate> <%#GetState(DataBinder.Eval(Container.DataItem, "MailState").ToString())%> </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" HeaderStyle-Width="30px" ItemStyle-HorizontalAlign="center" />
            </Columns>
          </asp:GridView></td>
      </tr>
      <tr>
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
  </div>
</form>
</body>
</html>