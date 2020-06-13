<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_InputProcess, App_Web_orznmsil" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>导入流程</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
        <script>
            function onstr() {
                parent.Dialog.close();
            }

            function setvalue(objname, valuetxt) {
                parent.document.getElementById(objname).value = valuetxt;
            }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="center" colspan="3" class="title" width="100%">流 程 列 表</td>
        </tr>
        <tr class="tdbg">
            <td align="center" class="tdbgleft" style="height: 24px; width: 5%; font-weight: bold">ID</td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 15%; font-weight: bold">流程名称</td>
            <td align="center" class="tdbgleft" style="height: 24px; width: 10%; font-weight: bold">操作</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="center" style="height: 24px;"><%#Eval("WorkID")%></td>
                    <td align="center" style="height: 24px;"><%#Eval("WorkName")%></td>
                    <td align="center" style="height: 24px;"><a href="InputProcess.aspx?menu=select&id=<%#Eval("WorkID") %>">选择</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td align="center" class="tdbg" style="height: 24px;" colspan="3">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
