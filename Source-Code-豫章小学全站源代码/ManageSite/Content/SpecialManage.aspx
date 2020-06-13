<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.SpecialManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>专题分类</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
     <div class="columntitle">
        当前位置：功能导航 >> 专题分类管理&nbsp;&nbsp;【<a href="AddSpecCate.aspx?nid=<%=Request.QueryString["nid"]%>"  style="color:Red">添加专题类别</a>】
    </div>
    <div id="noncate" style="height:28px;display:none" runat="server">暂时没有专题类别</div>
     <div id="catelist" runat="server"><asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" AllowPaging="true" DataKeyNames="SpecCateID" PageSize="20" Width="100%" OnPageIndexChanging="GV_PageIndexChanging" OnRowEditing="Egv_RowEditing" OnRowDeleting="GV_RowDeleting" OnRowCommand="Lnk_Click">
        <Columns>
            <asp:BoundField DataField="SpecCateID" HeaderText="ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="6%" />
            </asp:BoundField>
            <asp:BoundField DataField="SpecCateName" HeaderText="专题类别名称" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="SpecCateDir" HeaderText="专题类别目录" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="SpecCateDesc" HeaderText="专题类别描述" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC">
                <HeaderStyle Width="30%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#F0F6FC">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" CommandName="AddSpec" CommandArgument='<%# Eval("SpecCateID")%>' runat="server">添加专题</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LinkButton2" CommandName="SpecList" CommandArgument='<%# Eval("SpecCateID")%>' runat="server">专题列表</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LnkModify" CommandName="Modify" CommandArgument='<%# Eval("SpecCateID")%>' runat="server">修改</asp:LinkButton>
                    |
                    <asp:LinkButton ID="LnkDelete" runat="server" CommandName="Delete" OnClientClick="if(!this.disabled) return confirm('确实要删除此专题类别吗？');" CommandArgument='<%# Eval("SpecCateID")%>'>删除</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    </div>   
    </div>
    </form>
</body>
</html>
