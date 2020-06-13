<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectsType, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目分类管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
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

<span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span>CRM应用</span>&nbsp;&gt;&gt;&nbsp;<span><a href="Projects.aspx">项目管理</a></span>&nbsp;&gt;&gt;&nbsp;<span><a href="ProjectsType.aspx">分类管理</a></span>&nbsp;&gt;&gt;&nbsp;【<a href="ProjectsAddType.aspx" style="color:Red">添加类型</a>】
</div>
<div class="clearbox"></div>
<table class="border" cellpadding="0" cellspacing="1" width="100%" border="0">
    <tbody>
        <tr class="gridtitle" align="center" height="25px">
            <td width="10%" >选择</td>
            <td width="10%">序号ID</td>
            <td width="20%">项目类型名称</td>
            <td width="30%">项目类型简介</td>
            <td width="30%">操作</td>
        </tr>
        <asp:Repeater ID="Repeat" runat="server" onitemcommand="Repeat_ItemCommand">
            <ItemTemplate>
            <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" height="30px" class="tdbg">
                <td><asp:CheckBox ID="Chck" runat="server" /><asp:Label ID="Lbl" runat="server" Text='<%#Eval("ProjectTypeID") %>' Visible="false"></asp:Label></td>
                <td><%#Eval("ProjectTypeID")%></td>
                <td><a href="ProjectsAddType.aspx?projecttypeID=<%#Eval("ProjectTypeID") %>"><%#Eval("ProjectTypeName")%></a></td>
                <td><%#Eval("ProjectTypeInfo")%></td>
                <td><asp:LinkButton ID="LbtnDel" runat="server" OnClientClick="return confirm('您确定要删除吗？')" CommandArgument='<%#Eval("ProjectTypeID") %>' CommandName="Del">删除</asp:LinkButton>&nbsp;|
                    <asp:LinkButton ID="LbtnUpdate" runat="server" CommandArgument='<%#Eval("ProjectTypeID") %>' CommandName="Update">修改</asp:LinkButton>
                </td>
            </tr>
            </ItemTemplate>
        </asp:Repeater>
        
    </tbody>
</table>
<div class="clearbox"></div>
<table width="25%">
<tr align="center">
    <td width="10%"><asp:CheckBox ID="ChkBx" runat="server" onclick="javascript:CheckAll(this);" Text="全部选择"/></td>
    <td width="15%"><asp:Button ID="BtnChck" runat="server" Text="全部删除" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项删除吗？')}" onclick="BtnChck_Click" /></td>             
</tr></table>
</form>
</body>
</html>