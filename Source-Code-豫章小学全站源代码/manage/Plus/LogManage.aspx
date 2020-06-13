<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Log.LogManage, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>日志管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/Main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.rap { word-wrap: break-word; word-break: break-all;}
#Egv  td{ border:1px solid #fff; width:auto}
.user_t{border:1px solid #9bbde6; border-top:none}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">后台管理&gt;&gt; 扩展功能 &gt;&gt; 日志管理<asp:Label  ID="LblCate" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="user_t">
    <asp:GridView ID="Egv" class="border" DataKeyNames="LogID" runat="server" AutoGenerateColumns="False"
        AllowPaging="True" PageSize="20" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging"
        OnRowCommand="Lnk_Click" EmptyDataText="无相关数据">
        <Columns>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <ItemStyle CssClass="TdWrap" HorizontalAlign="Center" />
                <HeaderStyle Width="3%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="标题">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="View" CommandArgument='<%# Eval("LogID") %>'><%# Eval("Title")%></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle CssClass="rap" HorizontalAlign="left" />
                <HeaderStyle Width="12%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="类型">
                <ItemTemplate>
                    <%# GetCate(Eval("Category", "{0}"))%>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="8%" />
            </asp:TemplateField>
            <asp:BoundField DataField="ScriptName" HeaderText="访问地址">
                <ItemStyle CssClass="rap" HorizontalAlign="left" />
            </asp:BoundField>
            <asp:BoundField DataField="Timestamp" HeaderText="操作时间">
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="UserIP" HeaderText="IP地址">
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="10%" />
            </asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="操作人">
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="6%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="查看">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View" CommandArgument='<%# Eval("LogID") %>'>查看</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="5%" />
            </asp:TemplateField>
        </Columns>
        <RowStyle CssClass="tdbg" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
    </asp:GridView>
    <div style="text-align: center" class="tdbgleft">
        <span style="text-align: center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
            Width="30px"></asp:TextBox>条信息/页  转到第<asp:DropDownList ID="DropDownList1" 
            runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
          </asp:DropDownList>页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div></div>
    <div class="clearbox">
    </div>
    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="全选" />
    &nbsp; &nbsp;
    <asp:Button ID="btndelete" class="C_input" runat="server" OnClientClick="return confirm('确定要删除选中的日志吗？')" Text="删除选定的日志" OnClick="btndelete_Click" />
    <asp:HiddenField ID="HdnCate" runat="server" />
    </form>
</body>
</html>