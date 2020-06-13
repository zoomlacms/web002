<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_StudioInfoListByTech, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>教师管理</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script type="text/javascript" src="../../js/Drag.js"></script>
    <script type="text/javascript" src="../../js/Dialog.js"></script>
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

        function openurls(url) {
            Dialog.open({ URL: url });
        }
        function open_window() {
            var diag = new Dialog();
            diag.Width = 600;
            diag.Height = 400;
            diag.Title = "导入招生资料<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
            diag.URL = "InputUser.aspx?Tid=<%=Request.QueryString["id"] %>";
            diag.show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt;
        <span>培训资料库</span> <a href="AddStudioInfo.aspx?id=<%=Request.QueryString["id"] %>" >[添加学员信息]</a> <a href="javascript:void(0)" onclick="open_window()">[导入招生资料]</a>
    </div>
    <div class="clearbox">
    </div>

    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center" class="title">
            <td width="5%">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td width="10%" class="title">
                ID
            </td>
            <td width="10%" class="title">
                学员姓名
            </td>
            <td width="10%" class="title">
                预设用户名
            </td>
            <td width="10%" class="title">
                联系电话
            </td>
            <td width="15%" class="title">
                登记时间
            </td>
            <td width="15%" class="title">
                操作
            </td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%#Eval("ssid") %>' />
                    </td>
                    <td height="22" align="center">
                        <%#Eval("ssid", "{0}")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Studioname", "{0}")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("PriorUserName")%>
                    </td>
                    <td height="22" align="center">
                       <%#Eval("Tel")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("WriteTime")%>
                    </td>
                    <td height="22" align="center">
                    <a href="AddStudioInfo.aspx?stuid=<%#Eval("ssid")%>">修改</a> 
                        <a href="?menu=delete&id=<%#Eval("ssid")%>"
                            onclick="return confirm('确实要删除此信息吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="7" align="center" class="tdbg">
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
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                    ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
    </table>
    <div>
        <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
            Text="批量删除" OnClick="Button3_Click" />
            <asp:Button ID="Button1" class="C_input" Style="width: 110px;" runat="server"
            Text="导出Excel" OnClick="Button1_Click" />
            </div>
    </form>
</body>
</html>
