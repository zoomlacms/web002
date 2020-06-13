<%@ page language="C#" autoeventwireup="true" inherits="manage_File_FtpAll, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>所有配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;文件管理&gt;&gt;云端存储<span class="red"><a href="FtpConfig.aspx">[添加云端服务器]</a></span></div>
  <asp:GridView ID="GridView1" CssClass="border" border="0" cellpadding="0" cellspacing="1" HeaderStyle-CssClass="tdbg" RowStyle-HorizontalAlign="Center" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" Width="100%" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="Egv_RowDataBound">
    <Columns>
    <asp:TemplateField HeaderText="选中" HeaderStyle-Height="24" ItemStyle-Height="22">
      <ItemTemplate>
        <asp:CheckBox ID="SelectCheckBox" runat="server" />
      </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:BoundField DataField="ID" HeaderText="序号">
      <ItemStyle HorizontalAlign="Center" />
    </asp:BoundField>
    <asp:TemplateField HeaderText="服务器名">
      <ItemTemplate> <%#Eval("Alias")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="IP">
      <ItemTemplate> <%#Eval("FtpServer")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="端口">
      <ItemTemplate> <%#Eval("FtpPort")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="用户名">
      <ItemTemplate> <%#Eval("FtpUsername")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="密码">
      <ItemTemplate> <%#Eval("FtpPassword")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="超时时间" Visible="false">
      <ItemTemplate> <%#Eval("OutTime")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="访问URL">
      <ItemTemplate> <%#Eval("Url")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="目录">
      <ItemTemplate>
        <%#Eval("SavePath")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <HeaderStyle Width="19%" />
      <ItemTemplate> <a href='ShowFtpFile.aspx?FId=<%# Eval("ID")%>'>文件管理</a> | <a href='FtpConfig.aspx?DSId=<%# Eval("ID")%>'>修改</a> | <a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='FtpAll.aspx?SId=<%# Eval("ID")%>';">删除</a> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" />
    </asp:TemplateField>
    </Columns>
  </asp:GridView>
  <div class="clearbox"> </div>
  <table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
    <tr>
      <td style="height: 24px"><asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="全选" />
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndelete" class="C_input" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" Text="批量删除" OnClick="btndelete_Click" />
        &nbsp;
        </tr>
  </table>
</form>
</body>
</html>