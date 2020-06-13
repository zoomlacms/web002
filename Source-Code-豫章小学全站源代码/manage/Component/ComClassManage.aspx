<%@ page language="C#" autoeventwireup="true" inherits="manage_Component_ComClassManage, App_Web_vh0dja20" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>组件分类管理</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>内容管理</span> &gt;&gt; 组件分类管理 &gt;&gt; <a href="AddComClass.aspx">[添加分类组件]</a>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tr class="tdbg" style="height: 26px">
            <td align="center" class="title" width="20%">
                组件名称
            </td>
            <td align="center" class="title" width="20%">
                子类组件数量
            </td>
            <td align="center" class="title" width="10%">
                排序编号
            </td>
            <td align="center" class="title" width="25%">
                说明
            </td>
            <td align="center" class="title" width="30%">
                操作
            </td>
        </tr>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <tr class="tdbg" style="height: 26px" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="center"  width="20%"><%# DataBinder.Eval(Container.DataItem,"ClassTitle")%></td>
    <td align="center"  width="20%"><%# GetParentCount(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"ClassID")))%></td>
    <td align="center"  width="10%"><%# DataBinder.Eval(Container.DataItem,"OrderNum") %></td>
    <td align="center"  width="35%"><%# DataBinder.Eval(Container.DataItem,"explain") %></td>
    <td align="center"  width="30%"><a href="AddComClass.aspx?menu=edit&id=<%# DataBinder.Eval(Container.DataItem,"ClassID") %>">修改</a> <a href="?menu=delete&id=<%# DataBinder.Eval(Container.DataItem,"ClassID") %>"
                                    onclick="return confirm('你确定要删除组件:[<%# DataBinder.Eval(Container.DataItem,"ClassTitle")%>] 吗？')">删除</a></td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
    </table>
    </form>
</body>
</html>
