<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProjectsModelField, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>字段列表</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&nbsp;&gt;&gt;&nbsp;<span>CRM应用</span>&nbsp;&gt;&gt;&nbsp;<span>字段列表</span>&nbsp;&gt;&gt;&nbsp;【<a href="AddProjectModelField.aspx?ModelID=<%=Request.QueryString["ModelID"] %>" style="color:Red">添加字段</a>】
	</div>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" style="height:25px;">
            <td width="10%" height="20"><strong>字段名</strong></td>
            <td width="10%"><strong>字段别名</strong></td>
            <td width="10%"><strong>字段类型</strong></td>
            <td width="10%"><strong>字段级别</strong></td>
            <td width="10%"><strong>是否必填</strong></td>
            <td width="20%"><strong>排序</strong></td>
            <td width="30%"><strong>操作</strong></td>
        </tr>
        <asp:Repeater ID="RepSystemModel" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td><%#Eval("FieldName")%></td>
                    <td align=center><%#Eval("FieldAlias")%></td>
                    <td align=center><%# Eval("FieldType", "{0}")%></td>
                    <td align=center><font color="#339900">系统</font></td>
                    <td align=center><%# GetStyleTrue(Eval("IsNotNull", "{0}"))%></td>
                    <td></td>
                    <td align="center"></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater ID="RepModelField" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td><%#Eval("ShowList", "{0}") == "False" ? "<font color=#999999>" : ""%><%#Eval("FieldName")%><%#Eval("ShowList", "{0}") == "False" ? "</font>" : ""%></td>
                    <td align=center><%#Eval("FieldAlias")%></td>
                    <td align=center><%# Eval("FieldType", "{0}")%></td>
                    <td align=center>自定义</td>
                    <td align=center><%# GetStyleTrue(Eval("IsNotNull", "{0}"))%></td>
                    <td align=center><asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("FieldID") %>'>上移</asp:LinkButton> | <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("FieldID") %>'>下移</asp:LinkButton></td>
                    <td align="center"><a href="UpdateProjectModelField.aspx?FieldID=<%# Eval("FieldID") %>">修改</a> | <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?\r\n\r\n删除字段后需要重新生成静态Html代码')">删除</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <div class="clearbox"></div>
    </form>
</body>
</html>
