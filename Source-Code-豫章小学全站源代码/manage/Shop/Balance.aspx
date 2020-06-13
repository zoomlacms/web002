<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Balance, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script>

    function gotourl(url) {
        try {
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 100%; text-align: center; margin-left: auto;
        margin-right: auto;">
        <asp:HiddenField ID="hfId" runat="server" />
        <br />
        <table  style="margin-left: auto; margin-right: auto; background-color: white;"
            width="50%" cellpadding="2" cellspacing="1" class="border">
            <tr class="title">
                <td colspan="2" width="30%" height="28" align="center" style="background-color:#CBE6FC">
                    结算&nbsp;
                </td>
            </tr>
            <tr class="title">
                <td width="45%" height="28" align="right" style="background-color:#CBE6FC">
                    推广用户&nbsp;
                </td>
                <td width="70%" align="center" class="tdbg" style="color:Black;font-weight:normal">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="title">
                <td width="30%" height="28" align="right" style="background-color:#CBE6FC">
                    总额&nbsp;
                </td>
                <td width="70%" height="28" align="center" class="tdbg" style="color:Black;font-weight:normal">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr class="title">
                <td width="30%" height="28" align="right" style="background-color:#CBE6FC">
                    返利比例&nbsp;
                </td>
                <td width="70%" height="28" align="center" class="tdbg" style="color:Black;font-weight:normal">
                    &nbsp;<input ID="Label3" type="text" runat="server" style="width:35px; height:15px;" />%<asp:Label
                        ID="Label5" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="title">
                <td width="30%" height="28" align="right" style="background-color:#CBE6FC">
                    返利金额&nbsp;
                </td>
                <td width="70%" height="28" align="center" class="tdbg" >
                   <asp:Label ID="label4" Text="" runat="server"></asp:Label>元
                </td>
            </tr>
            <tr class="title">
                <td colspan="2" width="30%" height="28" align="center"  class="tdbg" style="color:Black;background-color:White;">
                <asp:Button ID="Button2" runat="server" Text="确定" title="结算" 
            class="C_input" style=" width:100px;" onclick="Button2_Click" />
                <asp:Button ID="Button1" runat="server" Text="取消" title="关闭" 
            class="C_input" style=" width:100px;" OnClientClick="Dialog.close();" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
