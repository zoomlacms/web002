<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_LecturerManage, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>讲师管理</title>
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
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt; <span>讲师管理</span> <a href="AddLecturer.aspx">[添加讲师]</a>
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center" class="title">
        <td width="5%">
            <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
        </td>
        <td width="7%" class="title">类别</td>
        <td width="10%" class="title">名称</td>
        <td width="6%" class="title">性别</td>
        <td width="7%" class="title">职位</td>
        <td width="10%" class="title">电话</td>
        <td width="15%" class="title">创建时间</td>
        <td width="15%" class="title">特长</td>
        <td width="15%" class="title">介绍</td>
        <td width="15%" class="title">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <input name="Item" type="checkbox" value='<%#Eval("ID") %>' />
                </td>
                <td height="22" align="center">
                  <%#Eval("TechType")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("TechName")%>
                </td>
                <td height="22" align="center">
                    <%#GetSex(Eval("TechSex","{0}"))%>
                </td>
                <td height="22" align="center">
                    <%#GetClass(Eval("TechDepart", "{0}"))%>
                </td>
                  <td height="22" align="center">
                    <%#Eval("TechPhone")%>
                </td>
                <td height="22" align="center">
                  <%#Eval("CreateTime")%>
                </td>
                <td height="22" align="center">
                    <%#GetContent(Eval("TechSpecialty", "{0}"))%>
                </td>
                 <td height="22" align="center">
                    <%#GetContent(Eval("TechIntrodu", "{0}"))%>
                </td>
                <td height="22" align="center">
                    <a href="AddLecturer.aspx?id=<%#Eval("ID")%>">修改</a> <a href="?menu=delete&id=<%#Eval("ID")%>" OnClick="return confirm('确实要删除此教师吗？');">删除</a>
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
