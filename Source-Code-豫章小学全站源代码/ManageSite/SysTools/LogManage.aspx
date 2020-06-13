<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.ManageSite.SysTools.LogManage, App_Web_grzskapq" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>日志管理</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
    <style type="text/css">
    .rap{ word-wrap:break-word;word-break:break-all}
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >>
        <a href="LogManage.aspx?Cate=1&nid=0">
		<asp:Label ID="LblCate" runat="server" Text="Label"></asp:Label>
		</a>
	</div>
	<asp:GridView ID="Egv" DataKeyNames="LogID" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="20" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging" OnRowCommand="Lnk_Click" EmptyDataText="无相关数据" OnRowDataBound="RowChangetest">
        <Columns>
            <asp:TemplateField HeaderText="">                            
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <ItemStyle  CssClass="TdWrap" HorizontalAlign="Center" />
                <HeaderStyle Width="3%" />
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="标题" HeaderStyle-BackColor="#F0F6FC">
                <ItemStyle  CssClass="rap" HorizontalAlign="left" />
                <HeaderStyle Width="28%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="类型" HeaderStyle-BackColor="#F0F6FC">
                <ItemTemplate>                                
                   <%# GetCate(Eval("Category", "{0}"))%>
                </ItemTemplate>
                 <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                 <HeaderStyle Width="8%" />
            </asp:TemplateField>
            <asp:BoundField DataField="ScriptName" HeaderText="访问地址" HeaderStyle-BackColor="#F0F6FC">
                <ItemStyle  CssClass="rap" HorizontalAlign="left" />
            </asp:BoundField> 
            <asp:BoundField DataField="Timestamp" HeaderText="操作时间" HeaderStyle-BackColor="#F0F6FC">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="16%" />
            </asp:BoundField>
            <asp:BoundField DataField="UserIP" HeaderText="IP地址" HeaderStyle-BackColor="#F0F6FC">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="12%" />
            </asp:BoundField> 
            <asp:BoundField DataField="UserName" HeaderText="操作人" HeaderStyle-BackColor="#F0F6FC">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="8%" />
            </asp:BoundField>    
            <asp:TemplateField HeaderText="查看" HeaderStyle-BackColor="#F0F6FC">                
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View" CommandArgument='<%# Eval("LogID") %>'>查看</asp:LinkButton>
            </ItemTemplate>
            <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
            <HeaderStyle Width="5%" />
            </asp:TemplateField>
        </Columns>
         <RowStyle CssClass="tdbg" Height="25px" />
         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"/>
         <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
         <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
         <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />                
    </asp:GridView>
    <div class="clearbox"></div> 
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
    &nbsp; &nbsp;
    <asp:Button ID="btndelete" runat="server" OnClientClick="return confirm('确定要删除选中的日志吗？')" Text="删除选定的日志" OnClick="btndelete_Click" />
    <asp:HiddenField ID="HdnCate" runat="server" />
    </div>
    </form>
</body>
</html>
