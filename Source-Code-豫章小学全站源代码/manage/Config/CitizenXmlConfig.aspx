<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_CitizenXmlConfig, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>国籍数据字典管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation"> 后台管理&gt;&gt;附件管理 &gt;&gt;<a href="GradeCateManage.aspx">多级数据字典分类:</a><span	style="color: Red">
    <asp:Label ID="lblCateName" runat="server" Text=""></asp:Label>
    </span>&gt;&gt;<span>
    <asp:Label ID="LblGradeLevel" runat="server" Text=""></asp:Label>
    选项列表</span> </div>
  <asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" runat="server" AutoGenerateColumns="False"
	AllowPaging="True" PageSize="20" Width="100%" OnRowDataBound="Gdv_RowDataBound"
	OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" OnRowEditing="Gdv_Editing"
	EmptyDataText="无相关数据">
    <Columns>
    <asp:TemplateField HeaderText="选项">
      <ItemTemplate> <%#Eval("FileName")%> </ItemTemplate>
      <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
      <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("FileName") %>'>修改</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("FileName") %>'
					OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton>
        |
        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DicList" CommandArgument='<%# Eval("FileName") %>'>下级选项列表</asp:LinkButton>
      </ItemTemplate>
      <ItemStyle HorizontalAlign="Center" CssClass="tdbg" Width="60%" ></ItemStyle>
    </asp:TemplateField>
    </Columns>
    <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
    <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
    <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
		NextPageText="下一页" PreviousPageText="上一页" />
  </asp:GridView>
  <div class="clearbox"> </div>
  <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%; height: 21px; text-align: right"> 所属分类： </td>
      <td><asp:Label ID="LblCate" runat="server" Text="国省市三级联动"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%; height: 21px; text-align: right"> 级别： </td>
      <td><asp:Label ID="LblLevel" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%; height: 21px; text-align: right"> 上级选项： </td>
      <td><asp:Label ID="LblPreGrade" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="width: 20%; height: 21px; text-align: right"> 分级选项： </td>
      <td><asp:TextBox ID="txtGradeName" runat="server" Width="300px" class="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td colspan="2"><asp:HiddenField ID="HdnFileName" Value="0" runat="server" />
        <asp:HiddenField ID="HdnCountry" Value="0" runat="server" />
        <asp:Button ID="btnSave" runat="server" Text="添 加" OnClick="btnSave_Click" class="C_input" />
        <asp:Button ID="Button1" runat="server" Text="返 回" OnClick="btnBack_Click" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>