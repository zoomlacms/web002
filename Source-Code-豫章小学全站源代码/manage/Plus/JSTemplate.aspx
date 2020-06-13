<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.JSTemplate, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>广告管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理 &gt;&gt; 扩展功能&gt;&gt; <a href="ADZoneManage.aspx" title="广告版位管理">版位管理</a>&gt;&gt; 广告模板管理</div>
  <div class="clearbox"></div>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="10" Width="100%" OnRowCommand="GridView1_RowCommand" CssClass="border">
    <Columns>
    <asp:BoundField DataField="JSTemplateID" HeaderText="类型ID" >
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  />
    </asp:BoundField>
    <asp:BoundField DataField="JSTemplateName" HeaderText="版块类型名称"  >
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  />
    </asp:BoundField>
    <asp:BoundField DataField="JSTemplatePath" HeaderText="版块文件所在路径" >
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center"  />
    </asp:BoundField>
    <asp:BoundField DataField="JSTemplateSize" HeaderText="版块大小">
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center"/>
    </asp:BoundField>
    <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" >
      <ItemTemplate>
        <asp:LinkButton ID="LinkButton1"  runat="server" CommandName="Modify" CommandArgument='<%# Eval("JSTemplateID")%>'>修改模板</asp:LinkButton>
      </ItemTemplate>
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center"/>
    </asp:TemplateField>
    </Columns>
  </asp:GridView>
</form>
</body>
</html>