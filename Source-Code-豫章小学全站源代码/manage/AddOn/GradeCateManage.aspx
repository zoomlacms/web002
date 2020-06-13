<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.GradeCateManage, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>多级数据字典管理</title>
    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>多级数据字典</span>
</div>
<div class="clearbox"></div> 
<asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="CateID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="15" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" OnRowEditing="Gdv_Editing" EmptyDataText="无相关数据">
    <Columns>            
        <asp:BoundField DataField="CateID" HeaderText="序号">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="5%" />
        </asp:BoundField>                                               
        <asp:BoundField DataField="CateName" HeaderText="分类名">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="20%" />
        </asp:BoundField>
        <asp:BoundField DataField="Remark" HeaderText="备注">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="20%" />
        </asp:BoundField>
        <asp:BoundField DataField="GradeField" HeaderText="分级选项名">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="30%" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="操作">                
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("CateID") %>'>修改</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("CateID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DicList" CommandArgument='<%# Eval("CateID") %>'>一级选项列表</asp:LinkButton>
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
                分类名：
        </td>
        <td>
            <asp:TextBox ID="txtCateName" runat="server" Width="200px" class="l_input"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:20%;height: 21px;text-align:right">
                备注：
        </td>
        <td>
            <asp:TextBox ID="txtRemark" runat="server" Width="500px" class="l_input"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:20%;height: 21px;text-align:right">
                分级选项别名：<br />
                一行一个名称&nbsp;<br />
                例如：<br />
                省份&nbsp;&nbsp;<br />
                城市&nbsp;&nbsp;
        </td>
        <td>
            <asp:TextBox ID="txtGradeField" runat="server" Width="300px" 
                TextMode="MultiLine" Rows="5" class="l_input" Height="89px"></asp:TextBox>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2">
            <asp:HiddenField ID="HdnCateID" Value="0" runat="server" />
            <asp:Button ID="btnSave" runat="server" Text="添 加" OnClick="btnSave_Click" class="C_input"/>
        </td>
    </tr>
</table>

</form>
</body>
</html>
