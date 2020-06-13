<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_BselectiServer, App_Web_isi4n0xy" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>有问必答</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" >
    <div class="r_navigation">
        <span>后台管理</span>&gt;&gt;<span><a href="BiServer.aspx">有问必答</a></span>&gt;&gt;<span>问题列表</span>
    </div>
    <div class="clearbox">
    </div>
    查找：<input class="l_input" type="text" class="lineinput" name="search_title" value=""><asp:Button
        ID="Button1" CssClass="C_input" runat="server" Text="查找" OnClick="Button1_Click" />
        通知方式：
        <asp:Button ID="btnEmailNotice" CssClass="C_input" runat="server" Text="启用邮件通知" OnClick="btnEmailNotice_Click" />
        <asp:Button ID="btnSMSNotice" runat="server" CssClass="C_input" Text="启用短信通知" OnClick="btnSMSNotice_Click" />
    
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无问题</div>
    <asp:Repeater ID="resultsRepeater_w" runat="server">
        <HeaderTemplate>
            <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                <tr class="title" style="text-align: center; height: 25px;">
                    <td>
                        编号
                    </td>
                    <td>
                        标题
                    </td>
                    <td>
                        用户名
                    </td>
                    <td>
                        用户类型
                    </td>
                    <td>
                        优先级
                    </td>
                    <td>
                        问题类型
                    </td>
                    <td>
                        已读次数
                    </td>
                    <td>
                        提交时间
                    </td>
                    <td>
                        状态
                    </td>
                    <td>
                        操作
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr align="center" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td>
                    <%# Eval("QuestionId")%>
                </td>
                <td>
                    <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>">
                        <%# ZoomLa.Common.BaseClass.CheckInjection(Eval("Title", "{0}"))%></a>
                </td>
                <td>
                    <%# GetUserName(Eval("UserId","{0}"))%>
                </td>
                <td>
                    <%# GetGroupName()%>
                </td>
                <td>
                    <%# Eval("Priority")%>
                </td>
                <td>
                    <%# Eval("Type")%>
                </td>
                <td>
                    <%# Eval("ReadCount")%>
                </td>
                <td>
                    <%# Eval("SubTime")%>
                </td>
                <td>
                    <asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label>
                </td>
                <td>
                    <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>">编辑</a> &nbsp;&nbsp;
                    <a href="BIServerDel.aspx?QuestionId=<%#Eval("QuestionId")%>" onclick="return confirm('确认删除此项?')">
                        删除</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    </table> <span>共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
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
            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></span>
    </form>
</body>
</html>
