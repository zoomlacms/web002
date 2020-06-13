<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_ExAnswerManage, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>考试成绩管理</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
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
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>在线考试系统</span> &gt;&gt;
            <span>考试成绩管理</span>
        </div>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="left" class="tdbg">
            <td >
搜索  阅卷人<asp:TextBox ID="Examiners" runat="server" CssClass="l_input"></asp:TextBox>     姓名<asp:TextBox ID="StuName" runat="server" CssClass="l_input"></asp:TextBox> <asp:Button
    ID="Button1" runat="server" Text="搜索" CssClass="C_input" />
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center" class="title">
            <td width="2%">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td width="10%">
                考生姓名
            </td>
            <td width="10%">
                考场
            </td>
            <td width="10%">
                学习组
            </td>
            <td width="10%">
                试题分数
            </td>
            <td width="10%">
                所得分数
            </td>
            <td width="10%">
                答题时间
            </td>
            <td width="6%" class="title">
                操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                    id="<%#Eval("GroupID") %>" ondblclick="ShowTabs(this.id)">
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%#Eval("GroupID") %>' />
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Stuid")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("RoomID")%>
                    </td>
                    <td height="22" align="center">
                        <%#GetGroup(Eval("Stuid","{0}"))%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Fraction")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Scores")%>
                    </td>
                    <td height="22" endtime="center">
                        <%#Eval("AnswerTime")%>
                    </td>
                    <td height="22" align="center">
                        <a href="ExExamination.aspx?cid=<%#Eval("GroupID")%>">修改</a> <a href="?menu=delete&cid=<%#Eval("GroupID")%>"
                            onclick="return confirm('确实要删除此学员吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="8" align="center" class="tdbg">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>条信息/页 转到第<asp:DropDownList
                    ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="x_input">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    <div>
        <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
            Text="批量删除" OnClick="Button3_Click" /></div>
    </form>
</body>
</html>
