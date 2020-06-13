<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddPaper, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择试卷</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script>
	function clickext(id,name) {
		var mainright = window.top.main_right;
		var txt_Exarinfo = mainright.frames["main_right_" + parent.nowWindow].document.getElementById("Exarinfo");
		var pageidtxt = mainright.frames["main_right_" + parent.nowWindow].document.getElementById("pageid");
		pageidtxt.value = id;

		txt_Exarinfo.innerHTML = name + " <a href='javascript:void(0)' onclick='deletepage()'>删除</a>";
		parent.Dialog.close();
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 教育模块 &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt; <a href="Papers_System_Manage.aspx">系统试卷管理</a></div>
<div class="divbox" id="nocontent" runat="server" style="display: none">暂无试卷信息</div>
    <div>
        <asp:GridView ID="gvPapers" runat="server" AutoGenerateColumns="False"  AllowSorting="true" CellPadding="2" CellSpacing="1" BackColor="White"
        ForeColor="Black" CssClass="border" EnableTheming="False" GridLines="None"
            RowStyle-CssClass='tdbg' Width="100%" DataKeyNames="id" OnRowDataBound="gvPapers_RowDataBound" HeaderStyle-Height="28px">
            <RowStyle CssClass="tdbg" Height="26px"></RowStyle>
            <Columns>
                <asp:TemplateField HeaderText="ID" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <%# Eval("id") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试卷名称" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <%#Eval("p_name") %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="试卷分类" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <asp:HiddenField ID="hfClassId" runat="server" Value='<%#Eval("P_type") %>' />
                        <asp:Label ID="lblClassId" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                    <ItemTemplate>
                        <a href="javascript:void(0)" onclick="clickext('<%# Eval("id") %>','<%#Eval("p_name") %>')">选择</a>
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
            <td align="center">
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
