<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.GradeOption, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
<title>多级数据字典管理</title>
    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span>&gt;&gt;<span>附件管理</span> &gt;&gt;<a href="GradeCateManage.aspx">多级数据字典分类:</a><span style="color:Red"><asp:Label ID="lblCateName" runat="server" Text=""></asp:Label></span>&gt;&gt;<span><asp:Label ID="LblGradeLevel" runat="server" Text=""></asp:Label>选项列表</span>
</div>
<div class="clearbox"></div>
<asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="GradeID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="15" Width="100%" OnRowDataBound="Gdv_RowDataBound" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" OnRowEditing="Gdv_Editing" EmptyDataText="无相关数据">
    <Columns>            
        <asp:BoundField DataField="GradeID" HeaderText="序号">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="5%" />
        </asp:BoundField>                                                           
        <asp:BoundField DataField="GradeName" HeaderText="选项">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="50%" />
        </asp:BoundField>            
        <asp:TemplateField HeaderText="操作">                
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("GradeID") %>'>修改</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("GradeID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DicList" CommandArgument='<%# Eval("GradeID") %>'>下级选项列表</asp:LinkButton>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
        </asp:TemplateField>
    </Columns>
     <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
     <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
     <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
     <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
     <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />                
</asp:GridView>
<div class="clearbox"></div>
<table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:20%;height: 21px;text-align:right">
                所属分类：
        </td>
        <td>
            <asp:Label ID="LblCate" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:20%;height: 21px;text-align:right">
                级别：
        </td>
        <td>
            <asp:Label ID="LblLevel" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:20%;height: 21px;text-align:right">
                上级选项：
        </td>
        <td>
            <asp:Label ID="LblPreGrade" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:20%;height: 21px;text-align:right">
                分级选项：
        </td>
        <td>
            <asp:TextBox ID="txtGradeName" runat="server" Width="300px" class="l_input"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2">
            <asp:HiddenField ID="HdnGradeID" Value="0" runat="server" />
            <asp:HiddenField ID="HdnParentID" Value="0" runat="server" />
            <asp:HiddenField ID="HdnCateID" Value="0" runat="server" />
            <asp:HiddenField ID="HdnLastLevel" Value="0" runat="server" />
            <asp:Button ID="btnSave" runat="server" Text="添 加" OnClick="btnSave_Click" class="C_input"/>
            <asp:Button ID="Button1" runat="server" Text="返 回" OnClick="btnBack_Click" class="C_input"/>
        </td>
    </tr>
</table> 
</form>
</body>
</html>
