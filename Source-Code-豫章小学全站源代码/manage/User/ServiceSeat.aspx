<%@ page language="C#" autoeventwireup="true" inherits="manage_User_ServiceSeat, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;客服管理&gt;&gt;客服席位&nbsp;&nbsp;<a href='AddSeat.aspx'>[<font color="red">添加席位</font>]</a></div>
  <div>
    <asp:GridView ID="gvUser" runat="server" CssClass="tdbg" AutoGenerateColumns="False"  DataKeyNames="S_ID" Width="100%" >
      <Columns>
      <asp:BoundField DataField="S_ID" HeaderText="编号" ItemStyle-HorizontalAlign="Center"/>
      <asp:TemplateField HeaderText="席位名称" ItemStyle-HorizontalAlign="Center">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem, "S_Name")%> </ItemTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="管理员" ItemStyle-HorizontalAlign="Center" ItemStyle-Height="26px" HeaderStyle-Height="26px">
        <ItemTemplate> <%#GetAdminName(DataBinder.Eval(Container.DataItem, "S_AdminID").ToString())%> </ItemTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="显示位置" ItemStyle-HorizontalAlign="Center">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem, "S_Index")%> </ItemTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="默认客服" ItemStyle-HorizontalAlign="Center">
        <ItemTemplate> <%#(DataBinder.Eval(Container.DataItem, "S_Default","{0}") == "1") ? "是" : "否"%> </ItemTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderText="操作" HeaderStyle-Width="200px" ItemStyle-HorizontalAlign="Center">
        <ItemTemplate >
          <asp:LinkButton ID="lbtEdit" runat="server" onclick="lbtEdit_Click">修改</asp:LinkButton>
          |
          <asp:LinkButton ID="lbtDel" runat="server" onclick="lbtDel_Click" OnClientClick="javascript:return confirm('你确定要删除这个客服席位吗？')">删除</asp:LinkButton>
        </ItemTemplate>
      </asp:TemplateField>
      </Columns>
    </asp:GridView>
  </div>
</form>
</body>
</html>