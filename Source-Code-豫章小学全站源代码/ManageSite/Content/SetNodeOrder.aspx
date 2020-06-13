<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.SetNodeOrder, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>栏目排序</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal> 当前位置：功能导航 >><a href="SetNodeOrder.aspx">栏目排序</a></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1" align="center">
            <tr class="gridtitle" align="center" style="height: 25px;">
                <td style="width: 10%; height: 20px;">
                    <strong>栏目ID</strong>
                </td>
                <td style="width: 20%; height: 20px;">
                    <strong>栏目名</strong>
                </td>
                <td style="width: 20%">
                    <strong>栏目目录</strong>
                </td>
                <td style="width: 20%">
                    <strong>栏目类型</strong>
                </td>
                <td style="width: 20%">
                    <strong>排序</strong>
                </td>
            </tr>
            <asp:Repeater ID="RepSystemModel" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" >
                        <td align="center">
                            <%#Eval("NodeID")%>
                        </td>
                        <td align="center">
                            <%#Eval("NodeName")%>
                        </td>
                        <td align="center">
                            <%# Eval("NodeDir")%>
                        </td>
                        <td align="center">
                            <%# GetNodeType(Eval("NodeType", "{0}"))%>
                        </td>
                        <td align="center">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="UpMove" CommandArgument='<%# Eval("NodeID") %>'>上移</asp:LinkButton>
                            |
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="DownMove" CommandArgument='<%# Eval("NodeID") %>'>下移</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
    </form>
</body>
</html>
