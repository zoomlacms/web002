<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_SiteManageList, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>站点列表</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script>
    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
        //parent.bottomframes.location = "../" + url; void (0);
        parent.site_left.location = "../" + url;
        
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >>系统频道管理</div>
    <asp:GridView ID="gvSiteList" runat="server" Width="100%"  DataKeyNames="NodeID"  AutoGenerateColumns="False" AllowPaging="True"  onpageindexchanging="gvSiteList_PageIndexChanging">
      <Columns>
      <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderText="频道名称">
        <ItemTemplate> <%#GetName(Eval("NodeName").ToString())%> </ItemTemplate>
      </asp:TemplateField>
      <asp:TemplateField HeaderStyle-Width="10%" HeaderText="操作" ItemStyle-HorizontalAlign="Center">
        <ItemTemplate> <a href="AddSite.aspx?ID=<%#Eval("NodeID") %>">修改</a>
          <asp:LinkButton ID="LinkButton1" runat="server" Enabled="<%#b %>" OnClientClick="if(!confirm('你确定要删除该频道吗？删除该站点，将会将该站下的所有内容，以及子站点一起删除'))return false;" OnClick="LinkButton1_Click">删除</asp:LinkButton>
        </ItemTemplate>
        <HeaderStyle Width="10%"></HeaderStyle>
        <ItemStyle HorizontalAlign="Center"></ItemStyle>
      </asp:TemplateField>
      </Columns>
    </asp:GridView>
  </div>
</form>
</body>
</html>