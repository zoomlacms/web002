<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_AgioList, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>促销方案管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 促销管理 &gt;&gt; <span><a href="AgioProject.aspx">打折方案管理</a></span>
            &gt;&gt; <span>
                <%=proName %>
                方案打折信息管理</span> &nbsp; <a href='AddAgio.aspx?AID=<%=Request.QueryString["ID"].ToString()%>'>【添加打折信息】</a>
        </div>
        <div class="clearbox">
        </div>
        <table width="100%" cellpadding="0" cellspacing="0" border="0" class="r_navigation">
            <tr class="tdbg">
                <td>
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" Width="100%" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="编号" HeaderStyle-HorizontalAlign="Center"
                                ItemStyle-HorizontalAlign="Center">
                                <HeaderStyle Width="50px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="方案名称" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <%=proName %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="数量区限" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="150px">
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "SIULimit") + " 到 " + DataBinder.Eval(Container.DataItem, "SILLimit")%>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="折扣" HeaderStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "SIAgio")%>%
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                                <HeaderStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="50px">
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>
                                <a href='AddAgio.aspx?AID=<%=Request.QueryString["ID"].ToString()%>&ID=<%#DataBinder.Eval(Container.DataItem, "ID")%>'>修改</a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True">
                                <HeaderStyle Width="50px" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr class="tdbg">
                <td align="center">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True">
                    </asp:DropDownList>页
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
