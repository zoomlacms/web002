<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_Paper_Subject_Manage, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>试卷试题管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt;教育模块 &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt; <a href="Papers_System_Manage.aspx">试卷试题管理</a><asp:Literal ID="liQuestion" runat="server"></asp:Literal> </div>
    <table style="width: 100%; margin: 0 auto; margin-top: 5px;" cellpadding="0" cellspacing="0"
        class="border">
        <tr class="tdbg">
         <td><asp:Label ID="lblPaper" runat="server" Text="Label"></asp:Label></td>
            <td style="height: 24px">
                题型：<asp:DropDownList ID="ddType" runat="server" 
                    onselectedindexchanged="ddType_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </td>
            <td align="right"><asp:LinkButton ID="lbAdd" runat="server" onclick="lbAdd_Click">添加试题</asp:LinkButton>&nbsp;
            <a href="Paper_QuestionManage.aspx?pid=<%=Request.QueryString["pid"] %>">大题管理</a>&nbsp;<asp:LinkButton ID="lbUpd" runat="server">更新排序</asp:LinkButton>
            &nbsp;&nbsp;</td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
     <tr align="center" class="title">
        <td width="5%">选择</td>
        <td width="20%">试题标题</td>
        <td width="20%">创建日期</td>
        <td width="10%">难易程度</td>
        <td width="10%">缺省分数</td>
        <td width="10%">排序</td>
        <td width="20%" class="title">操作</td>
    </tr>
     <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <input name="Item" type="checkbox" value='<%#Eval("p_id") %>' />
                </td>
                <td height="22" align="center">
                    <%#Eval("p_title")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("p_CreateTime")%>
                </td>
                <td height="22" align="center">
                    <%#GetDiff(Eval("p_Difficulty", "{0}"))%>
                </td>
                <td height="22" align="center">
                    <%#Eval("p_defaultScores")%>
                </td>
                <td height="22" align="center">
                 <asp:TextBox ID="txtOrder" runat="server" Text='<%#Eval("p_Order")%>' class="l_input" Width="50px"> </asp:TextBox>
                </td>
                <td height="22" align="center">
                    <a href="AddPaperQuestion.aspx?id=<%#Eval("p_id")%>&pid=<%=Request.QueryString["pid"] %>">修改</a> <a href="?menu=delete&id=<%#Eval("p_id")%>&pid=<%=Request.QueryString["pid"] %>" OnClick="return confirm('确实要删除此题吗？');">删除</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    </table>
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
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：
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
