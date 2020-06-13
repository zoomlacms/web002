<%@ page language="C#" autoeventwireup="true" inherits="manage_User_SystemUserModel, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员模型字段列表</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">当前位置：功能导航 >><a href="SystemUserModel.aspx"> 系统会员模型字段列表</a>&nbsp;&nbsp;【<a href="AddUserModel.aspx" style="color: Red">添加字段</a>】</div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1"  align="center">
        <tr align="center" style="height: 25px;">
            <td style="width: 10%; height: 20px;">
                <strong>字段名</strong>
            </td>
            <td style="width: 10%;">
                <strong>字段别名</strong>
            </td>
            <td style="width: 10%;">
                <strong>字段类型</strong>
            </td>
            <td style="width: 10%;">
                <strong>字段级别</strong>
            </td>
            <td style="width: 10%;">
                <strong>是否必填</strong>
            </td>
            <td style="width: 20%;">
                <strong>排序</strong>
            </td>
            <td style="width: 30%;">
                <strong>操作</strong>
            </td>
        </tr>
        <asp:Repeater ID="RepSystemModel" runat="server">
            <ItemTemplate>
                <tr class="tdbg" >
                    <td>
                        <%#Eval("FieldName")%>
                    </td>
                    <td align="center">
                        <%#Eval("FieldAlias")%>
                    </td>
                    <td align="center">
                        <%# Eval("FieldType", "{0}")%>
                    </td>
                    <td align="center">
                        <span style="color: #339900">系统</span>
                    </td>
                    <td align="center">
                        <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                    </td>
                    <td>
                    </td>
                    <td align="center">
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater ID="RepModelField" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <tr class="tdbg">
                    <td>
                    <%#Eval("FieldName")%>
                    </td>
                    <td align="center">
                        <%#Eval("FieldAlias")%>
                    </td>
                    <td align="center">
                    
                        <%# GetFieldType(Eval("FieldType", "{0}").ToString ())%>
                    </td>
                    <td align="center">
                        自定义
                    </td>
                    <td align="center">
                        <%# GetStyleTrue(Eval("IsNotNull", "{0}"))%>
                    </td>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("FieldID") %>'>上移</asp:LinkButton>
                        |
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("FieldID") %>'>下移</asp:LinkButton>
                    </td>
                    <td align="center">
                        <a href="ModifySysUserField.aspx?FieldID=<%# Eval("FieldID") %>">修改</a> |
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?')">删除</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </div>
    </form>
</body>
</html>
