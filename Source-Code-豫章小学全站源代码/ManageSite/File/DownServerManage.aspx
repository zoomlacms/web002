<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_DownServerManage, App_Web_zscwa44e" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>下载服务器管理</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle">当前位置：功能导航 >><a href="DownServerManage.aspx">下载服务器管理</a>&nbsp;&nbsp;&nbsp; 【<a href="DownServer.aspx" style="color:Red">添加下载服务器</a>】&nbsp;&nbsp;&nbsp; </div>
    <asp:GridView ID="GridView1" RowStyle-HorizontalAlign="Center" DataKeyNames="ServerID"
        runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" Width="100%"
        OnPageIndexChanging="GridView1_PageIndexChanging">
      <Columns>
      <asp:TemplateField HeaderText="选中" HeaderStyle-Height="24" ItemStyle-Height="22">
        <ItemTemplate>
          <asp:CheckBox ID="SelectCheckBox" runat="server" />
        </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:BoundField DataField="ServerID" HeaderText="序号">
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:BoundField>
      <asp:TemplateField HeaderText="服务器名">
        <ItemTemplate> <%# DataBinder.Eval(Container.DataItem, "ServerName")%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="服务器LoGo">
        <HeaderStyle />
        <ItemTemplate> <%#Getico(Eval("ServerLogo","{0}"))%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="显示方式">
        <ItemTemplate> <%#Convert.ToInt32(Eval("ShowType"))==0?"显示名称":"显示LOGo"%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="服务器地址">
        <ItemTemplate> <%#Eval("ServerUrl")%> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      <asp:TemplateField HeaderText="操作">
        <HeaderStyle Width="19%" />
        <ItemTemplate> <a href='DownServer.aspx?Action=Modify&DSId=<%# Eval("ServerID")%>'>修改</a> <a href="javascript:if(confirm('你确定要删除吗?')) window.location.href='DownServerManage.aspx?SId=<%# Eval("ServerID")%>';"> 删除</a> </ItemTemplate>
        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
      </asp:TemplateField>
      </Columns>
    </asp:GridView>
    <div class="clearbox"> </div>
    <table class="TableWrap" border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
      <tr>
        <td style="height: 24px" align="left"><asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="全选" />
          &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btndelete" runat="server" OnClientClick="return confirm('确定要删除选中的服务器吗？')" Text="批量删除" OnClick="btndelete_Click" CssClass="button" />&nbsp; </td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>