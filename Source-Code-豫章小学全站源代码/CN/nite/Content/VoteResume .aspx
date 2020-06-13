<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_VoteResume_, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>投递简历</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <span>
                    <asp:Label ID="txtTitle" runat="server" Text="投递简历"></asp:Label></span>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" align="right" valign="top">
                <strong>职位名称：</strong>
            </td>
            <td height="22" valign="middle">
                <%=jname %>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" style="width: 200px" align="right" valign="top">
                <strong>职位所需人数：</strong>
            </td>
            <td valign="middle">
                <%=jnum %>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" align="right" valign="top">
                <strong>工作地点：</strong>
            </td>
            <td height="22" valign="middle">
                <%=jadd %>
            </td>
        </tr>
        <tr class="WebPart">
            <td align="right">
                <strong>职位描述：</strong>
            </td>
            <td valign="middle">
                <%=jinfo %>
            </td>
        </tr>
        <tr class="WebPart" runat="server" id="Tr1">
            <td height="22" align="right" valign="top">
                <strong>职位截止时间：</strong>
            </td>
            <td valign="middle">
                <%=jendtime %>
            </td>
        </tr>
    </table>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <br />
     <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <span>
                    <asp:Label ID="Label1" runat="server" Text="选择简历"></asp:Label></span>
            </td>
        </tr>
        <tr>
        <td>
            <asp:RadioButtonList ID="RadioButtonList1" RepeatColumns="3" runat="server" DataTextField="vidtitle" DataValueField="vid">
            </asp:RadioButtonList>
        </td>
        </tr>
        </table>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" >
        <tr align="center">
        <td>
            <asp:Button ID="Button1" runat="server" Text="提  交" onclick="Button1_Click" /></td>
        </tr>
        </table>
    </form>
</body>
</html>
