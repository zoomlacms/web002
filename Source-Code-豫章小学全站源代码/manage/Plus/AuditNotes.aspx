<%@ page language="C#" autoeventwireup="true" inherits="manage_Plus_AuditNotes, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>审核记录</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.Egv td{ border:1px solid #fff; width:auto; text-align:center; background:#e8f5ff}
</style>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; 日志管理&gt;&gt;内容审核记录</asp:Label></div>
    <div class="user_t">
	<asp:GridView ID="Egv"  runat="server" AutoGenerateColumns="False"  PageSize="20" Width="100%"  EmptyDataText="无相关数据">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="内容标题">
                <ItemStyle  CssClass="rap" />
                <ItemStyle HorizontalAlign="Center" />
                <HeaderStyle Width="18%" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="状态">
                <ItemTemplate>
                    <%# GetStatus(Eval("Status", "{0}")) %>
                </ItemTemplate>
                <HeaderStyle Width="10%" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="UpDateTime" HeaderText="更新时间">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="16%" />
            </asp:BoundField>
            <asp:BoundField DataField="because_back" HeaderText="审核原因">
                <ItemStyle  CssClass="tdbg" HorizontalAlign="Center" />
                <HeaderStyle Width="20%" />
            </asp:BoundField> 
        </Columns>
         <RowStyle CssClass="tdbg" Height="25px" />
         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
         <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
         <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />          
    </asp:GridView>
    <div style="text-align: center" class="tdbgleft">
        <span style="text-align: center">
        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />/
            <asp:Label ID="PageSize" runat="server" Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        ontextchanged="DropDownList1_TextChanged" ></asp:DropDownList>
            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </span>
    </div></div>
    &nbsp; &nbsp;
    <asp:HiddenField ID="HdnCate" runat="server" />
    </form>
</body>
</html>