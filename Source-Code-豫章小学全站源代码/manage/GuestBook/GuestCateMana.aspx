<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Plus.GuestCateMana, App_Web_x4o5jstt" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title><%=lang.Get("M_GuestCateMana_guestboolClass") %></title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span><%=lang.Get("M_SpecContent_manage") %></span>&gt;&gt;<span><%=lang.Get("M_GuestCateMana_guestbool")%></span> &gt;&gt;<span><%=lang.Get("M_GuestCateMana_guestboolClass2")%></span>
        <div style="float: right; padding-right: 10px; margin-top:-30px;">
            <%=lang.Get("M_GuestCateMana_categoryName")%>：<asp:TextBox ID="txtCateName" class="l_input" runat="server" Width="150px"></asp:TextBox><asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server" ErrorMessage="必填项" ControlToValidate="txtCateName"></asp:RequiredFieldValidator>
            <%=lang.Get("M_GuestCateMana_openAnonyGuest")%>：<asp:DropDownList ID="NeedLog" runat="server">
                <asp:ListItem Value="0">是</asp:ListItem>
                <asp:ListItem Value="1">否</asp:ListItem>
            </asp:DropDownList>
            &nbsp;<asp:Button ID="addCate" class="C_input" runat="server" Text="添加分类" 
                OnClick="addCate_Click" Height="26px" />
         </div>
    </div>
    <div class="clearbox">
    </div>
    <asp:GridView ID="Gdv" RowStyle-HorizontalAlign="Center" DataKeyNames="CateID" runat="server"
        AutoGenerateColumns="False" AllowPaging="True" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging"
        EmptyDataText="无相关数据" OnRowDataBound="Gdv_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="序号" HeaderStyle-Width="10%" >
                <ItemTemplate>
                    <%#Eval("CateID")%>
                </ItemTemplate>
                <HeaderStyle Width="10%"></HeaderStyle>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="分类名称" HeaderStyle-Width="40%">
                <ItemTemplate>
                    <%#Eval("CateName")%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" class="l_input" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "CateName")%>'>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderStyle Width="40%"></HeaderStyle>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="允许匿名留言">
                <ItemTemplate>
                    <%#(Eval("NeedLog").ToString()=="0")?"是":"否"%>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">是</asp:ListItem>
                        <asp:ListItem Value="1">否</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" class="C_input" runat="server" Text="确定" OnClick="Button1_Click"
                        CausesValidation="false" />
                </EditItemTemplate>
                <ItemStyle></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('确实要删除吗？当系统无分类数据时，则不能发表留言!');"
                        OnClick="LinkButton2_Click" CausesValidation="false">删除</asp:LinkButton>
                    | <a href='Default.aspx?CateID=<%# Eval("CateID") %>'>留言列表</a>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None"
            Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast"
            NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <asp:HiddenField ID="HdnCateID" Value="0" runat="server" />
    </form>
</body>
</html>
