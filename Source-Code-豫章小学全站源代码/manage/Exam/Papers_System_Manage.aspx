<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Papers_System_Manage, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>系统试卷管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt;教育模块 &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt; <a href="Papers_System_Manage.aspx">系统试卷管理</a><font color="red">[<a href="Add_Papers_System.aspx?menu=Add" style="color: Red">添加系统试卷</a>]</font></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无试卷信息</div>
    <div>
        <asp:GridView ID="gvPapers" runat="server" AutoGenerateColumns="False"  AllowSorting="true" CellPadding="2" CellSpacing="1" BackColor="White"
        ForeColor="Black" CssClass="border" EnableTheming="False" GridLines="None"
            RowStyle-CssClass='tdbg' Width="100%" DataKeyNames="id" OnRowDataBound="gvPapers_RowDataBound" HeaderStyle-Height="28px">
            <RowStyle CssClass="tdbg" Height="26px"></RowStyle>
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("id") %>' />
                        <asp:CheckBox ID="chkSel" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试卷标题" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <%#Eval("p_name") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试卷分类" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfClassId" runat="server" Value='<%#Eval("p_class") %>' />
                        <asp:Label ID="lblClassId" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="出题方式" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                          <%#GetModus(Eval("p_type", "{0}"))%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="阅卷方式" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                       <%#GetRType(Eval("p_rtype", "{0}"))%>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <a href="Paper_QuestionManage.aspx?pid=<%#Eval("id") %>">大题管理</a>&nbsp;|&nbsp;
                        <%--<a href="Paper_Subject_Manage.aspx?pid=<%#Eval("id") %>">浏览试题</a>&nbsp;|&nbsp;--%>
                        <a href="Add_Papers_System.aspx?menu=Edit&paper_id=<%#Eval("id") %>">修改试卷</a>
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
