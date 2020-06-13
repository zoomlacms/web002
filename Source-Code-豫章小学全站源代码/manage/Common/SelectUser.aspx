<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_SelectUser, App_Web_krvwsitc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    function GetUser(username, userid, obj) {
        var cb=document.getElementById(obj);
        if (cb.checked) {
            opener.buttonclick(username, userid);
        }
        else {
            opener.deldata(userid);
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <table width="100%" border="0" cellpadding="0" cellspacing="1" >
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    <asp:Label ID="lblhead" runat="server" Text="查找用户"></asp:Label>
                </td>
            </tr>
            <tr >
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">搜索所有用户</asp:ListItem>
                        <asp:ListItem Value="1">通过用户ID搜索</asp:ListItem>
                        <asp:ListItem Value="2">通过用户名搜索</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtSelect" runat="server" class="l_input"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="搜  索" class="C_input"  onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td ID="lbldt" runat="server" >
                </td>
            </tr>
        </table>

    </div>
    </form>
    <script type="text/javascript" language="javascript">
        var objlist = window.opener.document.getElementById("ListBox1");
        var obj = document.getElementsByName("Box");
        if (typeof (objlist.length) != "undefined" && typeof (obj.length) != "undefined") {
            for (var i = 0; i < objlist.length; i++)     //移除所有项
            {
                for (var j = 0; j < obj.length; j++) {
                    if (obj[j].value == objlist.options[i].value) {
                        obj[j].checked = true; 
                    }
                }
            }
        }
</script>
</body>
</html>
