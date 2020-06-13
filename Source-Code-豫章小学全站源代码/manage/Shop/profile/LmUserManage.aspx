<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profile_LmUserManage, App_Web_j5qlofg5" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>联盟会员</title>
<link rel="stylesheet" type="text/css" href="../../../App_Themes/AdminDefaultTheme/index.css" />
<link rel="stylesheet" type="text/css" href="../../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="../../../JS/jquery.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>联盟会员</span>
</div>
<table cellpadding="2" cellspacing="1" class="border" style="background-color: white;"
    width="100%">
    <tr>
        <td class="spacingtitle" align="center">
            联盟会员管理
        </td>
    </tr>
</table>
<div class="clearbox">
</div>
<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" CssClass="border"
    DataKeyNames="UserID" Width="100%" AllowSorting="True" GridLines="None" RowStyle-CssClass="tdbg"
    CellPadding="2" CellSpacing="1" EnableModelValidation="True" OnRowDataBound="Egv_RowDataBound">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:CheckBox ID="chkSel" runat="server" />
            </ItemTemplate>
            <HeaderStyle Width="3%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="会员名">
            <ItemTemplate>
                <a href="/manage/User/Userinfo.aspx?id=<%# Eval("UserID") %>">
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </a>
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:BoundField DataField="RegTime" HeaderText="注册时间" SortExpression="RegTime" DataFormatString="{0:yyyy-MM-dd}">
            <HeaderStyle Width="20%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <%--<asp:BoundField HeaderText="已付款" />
    <asp:BoundField HeaderText="待批" />
    <asp:BoundField HeaderText="拒批" />
    <asp:BoundField HeaderText="状态" />--%>
        <asp:TemplateField HeaderText="点击">
            <ItemTemplate>
                <%#GetCli(Eval("userid").ToString())%>
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="销售">
            <ItemTemplate>
                <%#GetXs(Eval("userid").ToString())%>
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="引导">
            <ItemTemplate>
                <%#GetGuide(Eval("userid").ToString())%>
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="批准">
            <ItemTemplate>
                <%#GetYj(Eval("userid").ToString())%>
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="上级">
            <ItemTemplate>
                <a href='<%#Hrefnone(Eval("parentuserid").ToString()) %>'>
                    <%# Eval("tjr") %>
                </a>
            </ItemTemplate>
            <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="操作" ShowHeader="False"></asp:TemplateField>
    </Columns>
    <PagerStyle CssClass="tdbg" />
    <RowStyle CssClass="tdbg"></RowStyle>
    <SelectedRowStyle BackColor="#9471DE" CssClass="tdbg" />
</asp:GridView>
<span id="Fy" style="text-align: center" runat="server">共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    条数据
    <asp:LinkButton ID="Toppage" runat="server" OnClick="Toppage_Click">首页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Nextpage" runat="server" OnClick="Nextpage_Click">上一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Downpage" runat="server" OnClick="Downpage_Click">下一页</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="Endpage" runat="server" OnClick="Endpage_Click">尾页</asp:LinkButton>&nbsp;
    &nbsp;页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />
    /
    <asp:Label ID="PageSize" runat="server" Text="" />
    页
    <asp:Label ID="pagess" runat="server" Text="" />
    <asp:TextBox ID="txtPage" name="page" runat="server" AutoPostBack="true" class="l_input"
        Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged">10</asp:TextBox>
    条数据/页 转到第
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
    页
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
</span>
<br />
</form>
</body>
</html>
