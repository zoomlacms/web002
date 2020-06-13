<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_Default, App_Web_zuybre3k" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>声明.合作.友链管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; Wap管理 &gt;&gt; <a href="FSLinks.aspx">文章页管理</a><a href="Default_Add.aspx?menu=add">[添加文章页]</a></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无文章页信息</div>
    <div>
        <asp:GridView ID="gvClass" runat="server" AutoGenerateColumns="False" class="border"
            RowStyle-CssClass='tdbg' Width="100%" DataKeyNames="id"  
            HeaderStyle-Height="28px" onrowcommand="gvClass_RowCommand" >
            <RowStyle CssClass="tdbg" Height="26px"></RowStyle>
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id") %>' />
                        <asp:CheckBox ID="chkSel" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="名称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:Label ID="hlName" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="类型" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                     <%#Eval("Type")%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:LinkButton ID="hlQuestions" runat="server" CommandName="Upd" CommandArgument='<%#Eval("id") %>'>修改</asp:LinkButton>&nbsp;/&nbsp;
                        <asp:LinkButton ID="hlUpdate" runat="server" CommandName="Del"  CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('确定删除？')">删除</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div class="clearbox">
        </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr class="tdbg">
            <td>
                <div class="tdbg">
                    <span>
                        <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" Text="全选" OnCheckedChanged="CheckSelectAll_CheckedChanged" />
                        <asp:Button ID="BtnDelete" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}"
                            Text="批量删除选定内容" Width="134px" OnClick="BtnDelete_Click" />
                    </span><span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" /> 页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
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