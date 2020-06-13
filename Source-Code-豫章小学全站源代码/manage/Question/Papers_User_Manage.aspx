<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Papers_User_Manage, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>用户试卷管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 扩展功能 &gt;&gt; <a href="Papers_User_Manage.aspx">用户试卷管理</a></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无试题信息</div>
    <div>
        <asp:GridView ID="gvPapers" runat="server" AutoGenerateColumns="False" class="border"
            RowStyle-HorizontalAlign="Center" RowStyle-CssClass='tdbg' Width="100%" RowStyle-VerticalAlign="Middle"
            OnRowDataBound="gvPapers_RowDataBound" OnRowCommand="gvPapers_RowCommand" HeaderStyle-Height="28px"
            RowStyle-Height="26px">
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id") %>' />
                        <asp:CheckBox ID="chkSel" runat="server" /><%# Eval("id"," {0}") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试卷名称">
                    <ItemTemplate>
                        <asp:HyperLink ID="hlName" runat="server"><%#Eval("p_name") %></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试卷分类" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfClassId" runat="server" />
                        <asp:Label ID="lblClassId" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:BoundField DataField="P_User" HeaderText="所属用户" />
                <asp:TemplateField HeaderText="操作">
                    <ItemTemplate>
                        <asp:HyperLink ID="hlQuestions" runat="server">浏览试题</asp:HyperLink>
                        <asp:LinkButton ID="lbAdd" CommandName="btAdd" CommandArgument='<%#Eval("id") %>'
                            runat="server">添加为系统试卷</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr class="tdbg">
            <td>
                <div class="tdbg">
                    <span>
                        <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" Text="全选" OnCheckedChanged="CheckSelectAll_CheckedChanged" />
                        <asp:Button ID="BtnAdd" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定添加？')}"
                            Text="批量添加为系统试题" Width="134px" OnClick="BtnAdd_Click" />
                    </span><span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：
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
