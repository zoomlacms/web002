<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Questions_Knowledge_Show, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>知识点管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 扩展功能 &gt;&gt; 知识点管理<asp:HyperLink ID="hlAdd" runat="server">[添加知识点]</asp:HyperLink></div>
<table style="width: 100%; margin: 0 auto; margin-top: 5px;" cellpadding="0" cellspacing="0"
	class="border">
	<tr class="tdbg">
		<td style="height: 24px">
			<asp:Label ID="lblClass" runat="server" Text=""></asp:Label>
		</td>
	</tr>
</table>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无知识点信息</div>
    <div>
        <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border" AllowSorting="true" CellPadding="3" CellSpacing="1" BackColor="White"
        ForeColor="Black" CssClass="border" EnableTheming="False" GridLines="None"
            Width="100%" RowStyle-HorizontalAlign="Center" RowStyle-CssClass='tdbg' RowStyle-VerticalAlign="Middle"
            OnRowCommand="gvCard_RowCommand" HeaderStyle-Height="28px" RowStyle-Height="26px">
            <RowStyle CssClass="tdbg"></RowStyle>
            <Columns>
                <asp:BoundField DataField="k_name" HeaderText="知识点" />
                <asp:BoundField DataField="k_OrderBy" HeaderText="排序" />
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("k_id") %>'>修改</asp:LinkButton>
                        |
                        <asp:LinkButton ID="lbDetele" runat="server" CommandName="Del" CommandArgument='<%#Eval("k_id") %>'
                            OnClientClick="if(confirm('确定删除?')) return true; else return false;">删除</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr class="tdbg">
            <td>
                <div class="tdbg">
                    <span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" /> 页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
