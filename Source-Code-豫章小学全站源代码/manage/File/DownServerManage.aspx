<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_DownServerManage, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>下载服务器管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;文件管理&gt;&gt; 下载服务器 [<span class="red"><a href="DownServer.aspx">添加下载服务器</a></span>] </div>
  <asp:GridView ID="GridView1" CssClass="border" border="0" cellpadding="0" cellspacing="1" RowStyle-HorizontalAlign="Center" DataKeyNames="ServerID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="Egv_RowDataBound">
    <Columns>
    <asp:TemplateField HeaderText="选中" HeaderStyle-Height="24" ItemStyle-Height="22">
      <ItemTemplate>
        <asp:CheckBox ID="SelectCheckBox" runat="server" />
      </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="ServerID" HeaderText="序号">
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="服务器名">
      <ItemTemplate> <%# DataBinder.Eval(Container.DataItem, "ServerName")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="服务器LOGO">
      <HeaderStyle />
      <ItemTemplate> <%#Getico(Eval("ServerLogo","{0}"))%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="显示方式">
      <ItemTemplate> <%#Convert.ToInt32(Eval("ShowType"))==0?"显示名称":"显示LOGo"%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="服务器地址">
      <ItemTemplate> <%#Eval("ServerUrl")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <HeaderStyle Width="19%" />
      <ItemTemplate> <a href='DownServer.aspx?Action=Modify&DSId=<%# Eval("ServerID")%>'>修改</a> <a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='DownServerManage.aspx?SId=<%# Eval("ServerID")%>';"> 删除</a> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
  </asp:GridView>
  <div class="clearbox"> </div>
  <table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
    <tr>
      <td style="height: 24px"><asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"  Text="全选" />
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndelete" class="C_input" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" Text="批量删除" OnClick="btndelete_Click" />
        &nbsp; </td>
    </tr>
  </table>
</form>
</body>
</html>