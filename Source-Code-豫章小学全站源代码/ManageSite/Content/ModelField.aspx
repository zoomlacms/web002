<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.ModelField, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加字段</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="column">
        <div class="columntitle">
            当前位置：功能导航 &gt;&gt;<a href="ModelManage.aspx?nid=115">内容模型管理 </a></div>
           <table width="100%" style="background-color:#f2f1ee" >
           <tr>
           <td align="left">&nbsp;&nbsp;&nbsp;当前模型:[<asp:Literal ID="Literal1" runat="server"></asp:Literal>] &nbsp; &nbsp; <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp; 【<asp:LinkButton 
                   ID="LinkButton4" runat="server" ForeColor="Red" onclick="LinkButton4_Click">添加字段</asp:LinkButton>】<asp:Label
                       ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label></td>
           </tr>
           </table>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
        <tr class="gridtitle" align="center" style="height: 25px; background-color:#F0F6FC">
            <td width="10%" height="20">
                <strong>字段名</strong>
            </td>
            <td width="10%">
                <strong>字段别名</strong>
            </td>
            <td width="10%">
                <strong>字段类型</strong>
            </td>
            <td width="10%">
                <strong>字段级别</strong>
            </td>
            <td width="10%">
                <strong>是否必填</strong>
            </td>
            <td width="20%">
                <strong>排序</strong>
            </td>
            <td width="30%">
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
                        <font color="#339900">系统</font>
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
                <tr class="tdbg" >
                    <td>
                        <%#Eval("IsShow", "{0}") == "False" ? "<font color=#999999>" : ""%><%#Eval("FieldName")%><%#Eval("IsShow","{0}")=="False"?"</font>":"" %>
                    </td>
                    <td align="center">
                        <%#Eval("FieldAlias")%>
                    </td>
                    <td align="center">
                        <%# GetFieldType(Eval("FieldType", "{0}"))%>
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
                        <a href="UpdateModelField.aspx?FieldID=<%# Eval("FieldID") %>">修改</a> |
                        <asp:LinkButton ID="LinkButton1" runat="server" Enabled="<%#GetEna()%>"  CommandName="Delete" CommandArgument='<%# Eval("FieldID") %>' OnClientClick="return confirm('确定删除此字段吗?\r\n\r\n删除后请更新相应字段输出配置以确保应用')">删除</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
        <tr class="tdbg">
            <td width="30%" align="left" >
                <asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&nid=<%=nid %>&FilesDir=',650,480)" class="button" />
                <asp:Button ID="Button1" runat="server" Text="设定模板" OnClick="SetTemplate"  CssClass="button" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
