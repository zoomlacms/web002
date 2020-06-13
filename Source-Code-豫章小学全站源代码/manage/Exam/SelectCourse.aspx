<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_SelectCourse, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>选择课程</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/Dialog.js"></script>
<script>
    function onstr() {
        window.opener = null;
        parent.Dialog.close();
    }

    function setvalue(objname, valuetxt) {
        var mainright = window.top.main_right;
        mainright.frames[parent.nowWindow].document.getElementById(objname).value = valuetxt;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<table width="100%" cellspacing="1" cellpadding="0" class="border">
    <tr class="tdbg">
        <td align="center" colspan="7" class="title" width="100%">课 程 列 表</td>
    </tr>
    <tr class="tdbg">
        <td align="center" class="tdbgleft" style="height: 24px;  font-weight: bold">ID</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">课程名称</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">课程缩写</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">课程代码</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">热门课程</td>
        <td align="center" class="tdbgleft" style="height: 24px; font-weight: bold">负责人</td>
        <td align="center" class="tdbgleft" style="height: 24px;  font-weight: bold">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="center" style="height: 24px;"><%#Eval("ID")%></td>
                <td align="center" style="height: 24px;"><%#Eval("CourseName")%></td>
                <td align="center" style="height: 24px;"><%#Eval("CoureseThrun")%></td>
                <td align="center" style="height: 24px;"><%#Eval("CoureseCode")%></td>
                <td align="center" style="height: 24px;"><%#GetHot(Eval("Hot","{0}"))%></td>
                <td align="center" style="height: 24px;"><%#GetAdminName(Eval("AddUser", "{0}"))%></td>                 
                <td align="center" style="height: 24px;">
                    <a href="SelectCourse.aspx?menu=select&id=<%#Eval("ID") %>&name=<%#Eval("CourseName") %>">选择</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td align="center" class="tdbg" style="height: 24px;" colspan="7">
            共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条信息
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                Text="" />页
            <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
            页
        </td>
    </tr>
</table>
</form>
</body>
</html>
