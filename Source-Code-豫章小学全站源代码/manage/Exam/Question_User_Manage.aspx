<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Question_User_Manage, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户试题管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt;教育模块 &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt; <a href="Question_User_Manage.aspx">用户试题管理</a></div>
    <table style="width: 100%; margin: 0 auto; margin-top: 5px;" cellpadding="0" cellspacing="0"
        class="border">
        <tr class="tdbg">
            <td style="height: 24px">
                <asp:Label ID="lblPaper" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <div class="divbox" id="nocontent" runat="server" style="display: none">暂无试题信息</div>
    <div>
        <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
            Width="100%" RowStyle-CssClass='tdbg' OnRowDataBound="gvCard_RowDataBound" HeaderStyle-Height="28px" RowStyle-Height="26px">
            <RowStyle CssClass="tdbg"></RowStyle>
            <Columns>
                <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("p_id") %>' />
                        <asp:CheckBox ID="chkSel" runat="server" /><%# Eval("p_id"," {0}") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试题标题">
                    <ItemTemplate>
                        <asp:HyperLink ID="lbTitle" runat="server"><%# Eval("p_title")%></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="p_Inputer" HeaderText="作者" ItemStyle-HorizontalAlign="Center" />
                <asp:TemplateField HeaderText="难度" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lbldiff" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="类别" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblClass" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="p_Views" HeaderText="使用次数" ItemStyle-HorizontalAlign="Center" />
                <asp:TemplateField HeaderText="题型" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblType" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="知识点" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblKnow" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="p_CreateTime" HeaderText="创建时间" ItemStyle-HorizontalAlign="Center" />
                <%--<asp:BoundField DataField="p_User" HeaderText="相关操作" ItemStyle-HorizontalAlign="Center" />--%>
                
                <asp:TemplateField HeaderText="相关操作" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                   <a href="Questions_User_Show.aspx?p_Id=<%# Eval("p_id") %>">查看</a> <a href="Question_User_Manage.aspx?menu=del&p_Id=<%# Eval("p_id") %>" onclick="return confirm('你确定将该数据删除吗？');">删除</a>
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
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
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
