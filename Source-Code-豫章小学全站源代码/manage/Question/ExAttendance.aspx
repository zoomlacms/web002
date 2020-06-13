<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_ExAttendance, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
<script src="/JS/calendar.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<body>
    <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>在线考试系统</span> &gt;&gt;
            <span>考勤管理</span>
        </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="left" class="tdbg">
            <td >
                    选择考勤日期：开始时间：<asp:TextBox ID="TextBox1" runat="server" CssClass="l_input" Width="140" onclick="calendar()"></asp:TextBox>    结束结束：<asp:TextBox ID="TextBox2" runat="server" CssClass="l_input" Width="140" onclick="calendar()"></asp:TextBox> 
                考生姓名：<asp:TextBox ID="UserName" runat="server" CssClass="l_input"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="确定" CssClass="C_input" />
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
                登陆时间
            </td>
            <td width="10%">
                当前位置
            </td>
            
            <td width="6%" class="title">
                操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                    id="<%#Eval("AttID") %>" ondblclick="ShowTabs(this.id)">
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%#Eval("AttID") %>' />
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Stuid")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("LogTime")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Location")%>
                    </td>
                    <td height="22" align="center">
                        <a href="ExExamination.aspx?cid=<%#Eval("GroupID")%>">修改</a> <a href="?menu=delete&cid=<%#Eval("GroupID")%>"
                            onclick="return confirm('确实要删除此学员吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="5" align="center" class="tdbg">
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
