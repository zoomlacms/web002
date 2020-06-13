<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectIndex, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/js/Dialog.js"></script>
<script>
    var diag = new Dialog();
    function open_title(quid) {

        diag.Width = 900;
        diag.Height = 1000;
        diag.Title = "添加内容<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
        diag.URL = "/manage/iServer/BiServerInfo.aspx?QuestionId=" + quid;
        diag.show();
    }
</script>
<script type="text/javascript" language="javascript">
    function getinfo(id) {
        location.href = "ProjectsDetail.aspx?ProjectID=" + id + "";
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="clearbox">
    </div>
    <table width="100%" cellspacing="1" cellpadding="0" class="border" style="margin-bottom: 5PX">
        <tr align="left">
            <td colspan="5" class="tdbgleft">
                <span>后台管理</span> &gt;&gt; <span><a href="ManageProjects.aspx">项目管理</a></span>&nbsp;&nbsp;今天是：<asp:Literal runat="server" ID="litDate"></asp:Literal>
            </td>
        </tr>
    </table>
    <div style="margin-top:10px">
    <asp:Repeater ID="resultsRepeater_w" runat="server">
        <HeaderTemplate>
            <table width="100%" cellpadding="4" class="border" cellspacing="0">
                <thead>
                <tr class="tdbg"><td align="center" colspan="7" class="title" width="100%">最新问题</td></tr>
                    <tr class="tdbg" align="center" style="height: 24px; width: 5%; font-weight: bold">
                        <td class="tdbgleft">编号</td>
                        <td class="tdbgleft">标题</td>
                        <td class="tdbgleft">优先级</td>
                        <td class="tdbgleft">问题类型</td>
                        <td class="tdbgleft">已读次数</td>
                        <td class="tdbgleft">提交时间</td>
                        <td class="tdbgleft">状态</td>
                    </tr>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr align="center"  class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td><%# Eval("QuestionId")%></td>
                <td>
                <a href="/manage/iServer/BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>" ><%# ZoomLa.Common.BaseClass.CheckInjection(Eval("Title", "{0}"))%></a></td>
                <td><%# Eval("Priority")%></td>
                <td><%# Eval("Type")%></td>
                <td><%# Eval("ReadCount")%></td>
                <td><%# Eval("SubTime")%></td>
                <td><asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
        </tbody>
        </table>
        </FooterTemplate>
    </asp:Repeater>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="0" cellspacing="1" class="border" border="0" style="margin-top:5px">
        <tr class="tdbg">
            <td align="center" colspan="7" class="title" width="100%">
                最新项目
            </td>
        </tr>
        <tbody>
            <div id="aa" runat="server">
            </div>
            <tr class="tdbgleft" align="center" style="height: 25px;height: 24px; width: 5%; font-weight: bold">
                <td width="3%">
                    ID
                </td>
                <td width="10%">
                    项目名称
                </td>
                <td width="7%">
                    项目类型
                </td>
                <td width="5%">
                    项目价格
                </td>
                <td width="7%">
                    项目经理
                </td>
                <td width="6%">
                    当前进度
                </td>
                <td width="12%">
                    申请时间
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr id='<%#Eval("ID") %>' class="tdbg" align="center" style="height: 20px" onmouseover="this.className='tdbgmouseover'"
                        onmouseout="this.className='tdbg'" title="双击查看详情" ondblclick="getinfo(this.id)">
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' Visible="false" /><%# Eval("ID","{0}")%>
                        </td>
                        <td>
                            <a href="ProjectsDetail.aspx?ProjectID=<%# Eval("ID","{0}")%>">
                                <%# Eval("Name")%></a>
                        </td>
                        <td>
                            <%# GetProType(Eval("TypeID","{0}")) %>
                        </td>
                        <td>
                            <%# GetManageGroup(Eval("Leader","{0}")) == 1 ? Eval("Price", "￥{0}.00") : "******"%>
                        </td>
                        <td>
                            <a href="../AddCRM/ViewCustomer.aspx?FieldName=Person_Add&id=3">
                                <%#GetLeader(Eval("Leader","{0}"))%></a>
                        </td>
                        <td>
                            <a href='<%#Eval("ID","ProjectsProcesses.aspx?ID={0}") %>'>
                                <div style="width: 90%; border: solid 1px red; height: 5px">
                                    <div id="line" runat="server" style="background-color: green; height: 5px; float: left">
                                    </div>
                                </div>
                            </a>
                        </td>
                        <td>
                            <%# Eval("ApplicationTime")%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <table  width="100%" cellspacing="1" cellpadding="0" class="border" style="margin-top: 10PX">
        <tr class="tdbg">
            <td align="center" colspan="5" class="title" width="100%">
                最新客户
            </td>
        </tr>
        <tr class="tdbg">
            <td align="center" class="tdbgleft" style="height: 24px; width: 5%; font-weight: bold">
                ID
            </td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                客户名称
            </td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">
                客户类别
            </td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                客户编号
            </td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">
                客户来源
            </td>
        </tr>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center" style="height: 24px;">
                        <%#Eval("Flow")%>
                    </td>
                    <td align="center" style="height: 24px;">
                       <a href="/manage/AddCRM/ViewCustomer.aspx?FieldName=Person_Add&id=<%#Eval("Flow") %>"><%#Eval("P_name")%></a>
                    </td>
                    <td align="center" style="height: 24px;">
                        <%#Eval("Client_Type","{0}")=="1"?"企业":"个人"%>
                    </td>
                    <td align="center" style="height: 24px;">
                        <%#Eval("Code")%>
                    </td>
                    <td align="center" style="height: 24px;">
                        <%#Eval("Client_Source")%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </form>
</body>
</html>
