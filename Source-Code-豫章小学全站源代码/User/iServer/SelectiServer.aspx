<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_SelectiServer, App_Web_clmp4qkv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>问题列表</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/bidding.css"rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style>
th{	background: url(Images/title.gif) #E7F3FF repeat-x top;padding:2px;color: #656766;	font-weight: bold;}
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="有问必答" href="FiServer.aspx">有问必答</a>
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
<tr class="tdbg">
<td>
查找：<asp:TextBox ID="TextBox1" runat="server" Height="18px" class="f_input"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="搜索" class="i_bottom" />
</td>
</tr>
 <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无问题</div>
<asp:Repeater ID="resultsRepeater_w" runat="server">
<HeaderTemplate>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
            <tr align="center" class="title" style="height:25px">
                <td> 编号 </td>
                <td> 标题</td>
                <td>用户名</td>
                <td>用户类型</td>
                <td>优先级</td>
                <td>问题类型</td>
                <td>已读次数</td>
                <td>提交时间</td>
                <td>状态</td>
            </tr>
</HeaderTemplate>

<ItemTemplate>
    <tr align="center"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
        <td>
            <%# Eval("QuestionId")%>
        </td>
        <td>
            <a href="FiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>"> <%# ZoomLa.Common.BaseClass.CheckInjection(Eval("Title", "{0}"))%></a>
        </td>
        <td><%# GetUserName(Eval("UserId","{0}"))%></td>
        <td><%# GetGroupName()%></td>
        <td><%# Eval("Priority")%></td>
        <td><%# Eval("Type")%></td>
        <td><%# Eval("ReadCount")%></td>
        <td><%# Eval("SubTime")%></td>
        <td><asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label></td>
    </tr>
</ItemTemplate>
<FooterTemplate>
    </tbody> </table>
</FooterTemplate>
</asp:Repeater>
<span>共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />页次：
        <asp:Label ID="Nowpage" runat="server" Text="" />/
        <asp:Label ID="PageSize" runat="server" Text="" />页
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
     onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></span>
</form>
</body>
</html>