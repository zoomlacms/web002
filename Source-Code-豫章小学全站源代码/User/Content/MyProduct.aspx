<%@ page language="C#" autoeventwireup="true" inherits="User_Content_MyProduct, App_Web_3vjp1hjh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的内容</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/UserThem/bidding.css" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/js/SelectCheckBox.js"></script>
</head>
<body>
    <div class="us_pynews">
        <div class="us_seta">
            <asp:Label ID="lblAddContent" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    <div class="us_pynews">
        <form id="form1" runat="server">
        <div class="us_seta">
            <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyNames="GeneralID" PageSize="10" OnPageIndexChanging="Egv_PageIndexChanging"
                OnRowCommand="Lnk_Click" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:TemplateField HeaderText="选择">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSel" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="ID" HeaderText="ID">
                        <HeaderStyle Width="6%" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="商品图片">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <a href="ShowProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">
                                <%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="商品名称">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <a href="<%# GetUrl(Eval("ID", "{0}"))%>" target="_blank">
                                <%# Eval("Proname")%></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="单位">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%# Eval("ProUnit")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="库存">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%# Eval("stock")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="价格">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#formatcs(DataBinder.Eval(Container, "DataItem.LinPrice", "{0}"), Eval("ProClass", "{0}"), Eval("PointVal","{0}"))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="类型">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#formatnewstype(DataBinder.Eval(Container,"DataItem.ProClass","{0}"),Eval("id","{0}"))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="推荐">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#Eval("Dengji")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="商品属性">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#forisbest(DataBinder.Eval(Container,"DataItem.isbest","{0}"))%>
                            <%#forishot(DataBinder.Eval(Container,"DataItem.ishot","{0}"))%>
                            <%#forisnew(DataBinder.Eval(Container,"DataItem.isnew","{0}"))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="销售中">
                        <HeaderStyle Width="5%" />
                        <ItemStyle HorizontalAlign="Center" />
                        <ItemTemplate>
                            <%#formattype(DataBinder.Eval(Container,"DataItem.Sales","{0}"))%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="状态">
                        <ItemTemplate>
                            <%# GetStatus(Eval("istrue", "{0}")) %>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="已生成">
                        <ItemTemplate>
                            <%# GetCteate(Eval("MakeHtml", "{0}"))%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="操作">
                        <ItemTemplate>
                            <%#GetStendCon(Eval("Nodeid", "{0}"), Eval("ModelID", "{0}"), Eval("id", "{0}"), Eval("isStand", "{0}"), Eval("UserShopID","{0}"))%>
                            |
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Edit" CommandArgument='<%# Eval("ID") %>'>修改</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Del" CommandArgument='<%# Eval("ID") %>'
                                OnClientClick="return confirm('你确定将该数据删除到回收站吗？')">删除</asp:LinkButton>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" Height="25px" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
                    NextPageText="下一页" PreviousPageText="上一页" />
            </asp:GridView>
            <div style="width: 100%; float: left; line-height: 30px; margin-top: 5px;">
                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
                    Text="选中本页显示的所有项目" />
                <asp:Button ID="Button2" runat="server" Text="批量删除" OnClick="btnDeleteAll_Click"
                    OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}"
                    CssClass="i_bottom" UseSubmitBehavior="true" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">按标题查找</asp:ListItem>
                    <asp:ListItem Value="1">按ID查找</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TxtSearchTitle" runat="server"></asp:TextBox>
                <asp:Button ID="Btn_Search" runat="server" Text="搜索" CssClass="i_bottom" OnClick="Btn_Search_Click" />
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:HiddenField ID="HiddenField2" runat="server" />
            </div>
        </div>
        </form>
    </div>
</body>
</html>