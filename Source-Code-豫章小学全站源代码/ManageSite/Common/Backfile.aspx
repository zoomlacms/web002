<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Common_Contribute, App_Web_j0pyfnwa" contenttype="text/html" responseencoding="gb2312" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投稿所选内容</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript">
    function onChanged() {
        var obj = document.getElementById("TextBox1").value;
        if (obj == "") {
            document.getElementById("hide").style.display = "block";
            return false;
        } else {
        return true;
        }
    }
</script>
<style type="text/css">
    .style1
    {
        width: 200px;
    }
    .style2
    {
        height: 34px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >><a href="Backfile.aspx">退稿所选内容：</a></div>
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td align="right" class="style1">
                                        此操作将删除退搞所选内容</td>
                <td align="left">
                    <asp:ListBox ID="ListBox1" runat="server" Width="250px" Height="300px" 
                        SelectionMode="Multiple"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    请输入 退搞原因：</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server" Width="247px"></asp:TextBox>
                    <span id="hide" style="display:none">
                          退搞原因不能为空 ！！                 
                    </span>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style2">
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="确定" 
                        onclick="Button1_Click" />&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="button" Text="取消" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
