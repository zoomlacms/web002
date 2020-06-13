<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_SpecList, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>专题列表</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
     <div class="columntitle">当前位置：功能导航 >>专题列表</div>
        <div id="nonspc" style="height:28px; display:none;" runat="server">暂时没有专题</div>
        <div id="spclist" runat="server"><asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" AllowPaging="true" DataKeyNames="SpecID" PageSize="20" Width="100%" OnPageIndexChanging="GV_PageIndexChanging" OnRowCommand="Lnk_Click">
        <Columns>
            <asp:BoundField DataField="SpecID" HeaderText="ID" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="6%" />
            </asp:BoundField>
            <asp:BoundField DataField="SpecName" HeaderText="专题名称" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="SpecDir" HeaderText="专题目录" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="10%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="打开方式" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="10%"  HeaderStyle-BackColor="#F0F6FC">
                <ItemTemplate>
                    <%# GetOpenType(DataBinder.Eval(Container, "DataItem.OpenType", "{0}"))%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="SpecDesc" HeaderText="专题描述" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="30%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="#F0F6FC">
                <ItemTemplate>
                    <asp:LinkButton ID="LnkModify" CommandName="Modify" CommandArgument='<%# Eval("SpecID")%>' runat="server">修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LnkDelete" runat="server" CommandName="Del" OnClientClick="return confirm('确实要删除此专题吗？');" CommandArgument='<%# Eval("SpecID")%>'>删除</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <RowStyle ForeColor="Black" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    </div>
    </div>
    </form>
</body>
</html>
