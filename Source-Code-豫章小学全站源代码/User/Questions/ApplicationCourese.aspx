<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_ApplicationCourese, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>申请课程</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 97%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a href="ApplicationCourese.aspx">申请课程</a>
</div>
  <div class="s_body" style="width: 100%">
    <div class="s_bleft" style="width: 20%; float: left;">
      <iframe frameborder="0" width="100%" height="800px" src="TreeNode.aspx?Type=2" scrolling="auto" id="I1" name="I1"></iframe>
    </div>
    <div style="width: 80%; float: left">
	  <div class="us_seta" style="margin-top: 5px;">
    <h1 align="center"> 申请课程</h1>
  </div>
      <div class="divbox" id="nocontent" runat="server"> 暂无课程信息</div>
      <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" AllowSorting="True" EnableTheming="False" Width="100%" RowStyle-CssClass='tdbg' HeaderStyle-Height="28px" EnableModelValidation="True">
        <HeaderStyle Height="28px"></HeaderStyle>
        <RowStyle CssClass="tdbg" Height="35px"></RowStyle>
        <Columns>
        <asp:TemplateField HeaderText="课程名称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="50%">
          <ItemTemplate> <%#Eval("CourseName")%> </ItemTemplate>
          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50%"></ItemStyle>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="课时" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="25%">
          <ItemTemplate> <%#GetClass(Eval("ID", "{0}"))%> </ItemTemplate>
          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25%"></ItemStyle>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center"  ItemStyle-VerticalAlign="Middle" ItemStyle-Width="25%">
          <ItemTemplate> <%# getStr(Convert.ToInt32(Eval("ID").ToString()))%> </ItemTemplate>
          <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25%"></ItemStyle>
        </asp:TemplateField>
        </Columns>
      </asp:GridView>
      <table id="Conten" runat="server" width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr class="tdbg" align="center">
          <td> 共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 </td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>