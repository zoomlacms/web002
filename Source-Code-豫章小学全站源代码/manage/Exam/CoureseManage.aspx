<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_CoureseManage, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>课程管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">考试管理</a>&gt;&gt; <span>课程管理</span> <a href="AddCoures.aspx">[添加课程]</a>
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center" class="title">
        <td width="5%">
            <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
        </td>
        <td width="10%">课程名称</td>
        <td width="8%">课程缩写</td>
        <td width="10%">课程代码</td>
        <td width="7%">热门课程</td>
        <td width="10%">课程分类</td>
        <td width="5%">学分</td>
        <td width="15%">简介</td>
        <td width="10%" class="title">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <input name="Item" type="checkbox" value='<%#Eval("ID") %>' />
                </td>
                <td height="22" align="center">
                    <%#Eval("CourseName")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("CoureseThrun")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("CoureseCode")%>
                </td>
                    <td height="22" align="center">
                    <%#GetHot(Eval("Hot","{0}"))%>
                </td>
                    <td height="22" align="center">
                    <%#GetClass(Eval("CoureseClass","{0}"))%>
                </td>
                <td height="22" align="center">
                    <%#Eval("CoureseCredit")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("CoureseRemark")%>
                </td>
                <td height="22" align="center">
                    <a href="AddCoures.aspx?id=<%#Eval("ID")%>">修改</a> <a href="?menu=delete&id=<%#Eval("ID")%>" OnClick="return confirm('确实要删除此课程吗？');">删除</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td height="22" colspan="9" align="center" class="tdbg">
          共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </td>
    </tr>
</table>
<div>
    <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
        Text="批量删除" onclick="Button3_Click" /></div>
</form>
</body>
</html>
