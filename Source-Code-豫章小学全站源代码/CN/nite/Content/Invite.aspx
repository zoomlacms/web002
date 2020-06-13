<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_Invite, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>邀请用户</title>
    <link href="../CSS/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <font color="red" size="30px">暂时不用</font> 
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="6" class="spacingtitle">
                <span>发出邀请</span>
            </td>
        </tr>        
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>面试时间：</strong>
            </td>
            <td valign="middle">
                <asp:TextBox ID="txtViewTime1" runat="server" onclick="calendar();"></asp:TextBox>~
                <asp:TextBox ID="txtViewTime2" runat="server" onclick="calendar();"></asp:TextBox>
            </td>
          </tr>
         <tr class="WebPart">
            <td class="tdbgleft" height="22" align="right" valign="top" style="width: 40%">
                <strong>面试职位：</strong>
            </td>
            <td valign="middle" >
                <asp:DropDownList ID="DropDownList1" runat="server" Width="130px">
                </asp:DropDownList>
            </td>               
        </tr>        
        <tr class="tdbgbottom">
            <td colspan="6">               
                <asp:Button ID="EBtnSubmit" Text="邀请" runat="server" />
                &nbsp;
                <input name="Cancel" type="button" id="Cancel" value="取消" onclick="window.location.href='#';" />
                &nbsp;               
            </td>
        </tr>              
    </table>
    </form>
</body>
</html>
