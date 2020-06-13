<%@ page language="C#" autoeventwireup="true" inherits="manage_File_ShowFtpFile, App_Web_lz1ef1my" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>文件列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;文件管理&gt;&gt;<a href="FtpAll.aspx">云端存储</a>&gt;&gt;文件列表</div>
  <div>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:HiddenField ID="HdnPath" runat="server" />
  </div>
  <table width="100%">
    <tr>
      <td> 当前目录：
        <asp:Label ID="LblCurrentDir" runat="server"></asp:Label>
        <asp:HiddenField ID="hiddenField" runat="server" /></td>
      <td align="right"><a href="<%=strBack %>">↑返回上一级</a></td>
    </tr>
  </table>
  <table width="100%" cellpadding="0" cellspacing="1" border="0" runat="server" id="hiddentitle" style=" display:none;" class="border">
    <tr class="title" align="center" style="height:24px">
      <td style="width:375px">文件信息</td>
      <td style="width: 110px">文件类型</td>
      <td style="width: 110px">文件大小</td>
      <td style="width:250px">存储时间</td>
      <td>操作</td>
    </tr>
  </table>
  <asp:GridView ID="GridView1" CssClass="border" border="0" cellpadding="0" cellspacing="1" RowStyle-HorizontalAlign="Center" HeaderStyle-CssClass="tdbg" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" 
      AllowPaging="True" PageSize="20" Width="100%"  OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="true"  OnRowDataBound="Egv_RowDataBound" onsorting="GridView1_Sorting" onrowcommand="GridView1_RowCommand" >
    <Columns>
    <asp:TemplateField HeaderStyle-Height="24px" HeaderText="文件信息">
      <ItemTemplate> <%#Eval("dir")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="left" Width="375px" />
    </asp:TemplateField>
    <asp:TemplateField HeaderStyle-Height="24px" HeaderText="文件类型">
      <ItemTemplate> <%#Eval("type")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" Width="110px" />
    </asp:TemplateField>
    <asp:TemplateField HeaderStyle-Height="24px" HeaderText="文件大小">
      <ItemTemplate> <%#Eval("size")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" Width="110px" />
    </asp:TemplateField>
    <asp:TemplateField HeaderStyle-Height="24px" HeaderText="存储时间">
      <ItemTemplate> <%#Eval("time")%> </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" Width="250px" />
    </asp:TemplateField>
    <asp:TemplateField HeaderStyle-Height="24px" HeaderText="操作">
      <ItemTemplate>
        <asp:LinkButton ID="LbtnDelte" CommandName='<%# (Eval("type")) =="文件夹" ? "DelDir":"DelFiles" %>' CommandArgument='<%# Eval("ID")%>' OnClientClick="if(!this.disabled) return confirm('确定要删除所选对象？');" runat="server"><%# (Eval("type")) =="文件夹" ? "":"删除" %></asp:LinkButton>
      </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" Width="250px" />
    </asp:TemplateField>
    </Columns>
    <RowStyle HorizontalAlign="Center"></RowStyle>
  </asp:GridView>
</form>
</body>
</html>