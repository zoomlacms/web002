<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.Dictionary, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>数据字典项目列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation"><span>后台管理</span>&gt;&gt;<span>其他管理</span> &gt;&gt;数据字典分类:<span style="color:Red"><asp:Label ID="lblCateName" runat="server" Text=""></asp:Label></span>&gt;&gt;<span>数据字典项目列表</span>
</div>
<div class="clearbox"></div> 
<asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="DicID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" OnRowEditing="Gdv_Editing" EmptyDataText="无相关数据">
        <Columns>
            <asp:TemplateField HeaderText="选中">                            
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="5%" />
            </asp:TemplateField>
            <asp:BoundField DataField="DicID" HeaderText="序号">
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="5%" />
            </asp:BoundField>                                               
            <asp:TemplateField HeaderText="字典项目">
                <ItemTemplate>                                
                   <%# Eval("DicName")%>
                </ItemTemplate>
                 <ItemStyle  CssClass="tdbg" HorizontalAlign="Left" />
                 <HeaderStyle Width="50%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="是否启用">
                <ItemTemplate>
                  <%# GetUsedFlag(Eval("IsUsed","{0}")) %>
                </ItemTemplate>
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="10%" />
            </asp:TemplateField>                                      
            <asp:TemplateField HeaderText="操作">
            <HeaderStyle Width="19%" />
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CommandArgument='<%# Eval("DicID") %>'>修改</asp:LinkButton> | 
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Del" CommandArgument='<%# Eval("DicID") %>' OnClientClick="return confirm('确实要删除吗？');">删除</asp:LinkButton> | 
                
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
    <table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="sleall">
    <tr>
        <td style="height: 21px">                   
          <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                Text="全选" />
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelete" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" Text="批量删除" OnClick="btndelete_Click" class="C_input"/>
            &nbsp;                        
            <asp:Button ID="btnSetUsed" runat="server" Text="批量启用" OnClick="btnSetUsed_Click" class="C_input"/>
            &nbsp;                        
            <asp:Button ID="btnSetUnUsed" runat="server" Text="批量停用" OnClick="btnSetUnUsed_Click" class="C_input"/>
            &nbsp;                        
            <asp:Button ID="btnSetAllUsed" runat="server" Text="全部启用" OnClick="btnSetAllUsed_Click" class="C_input"/><asp:HiddenField ID="HdnDicCateID" runat="server" />
            </td>
    </tr>                
</table>
<div class="clearbox"></div> 
          
<table  class="TableWrap"  border="0" cellpadding="0" cellspacing="0" width="100%" id="Table1">
<tr>
    <td style="height: 21px">
        字典项目名：<asp:TextBox ID="txtDicName" runat="server" Width="200px" class="l_input"></asp:TextBox>
        <asp:HiddenField ID="HdnDicID" Value="0" runat="server" />
        <asp:Button ID="btnSave" runat="server" Text="添 加" OnClick="btnSave_Click" class="C_input"/></td>
</tr>
</table>
</form>
</body>
</html>
