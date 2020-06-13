<%@ page language="C#" autoeventwireup="true" inherits="profile_ref_email, App_Web_d2gkw33d" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>自助查询红包函注册链接</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
 <script language="javascript">
     //email检查
     function isValidEmail(inEmail) {
         var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
         if (filter.test(inEmail)) return true;
         else return false;
     }

     function check() {
         var email = document.getElementById("email_name").value;
         if (!isValidEmail(email)) {
             alert("您填写的电子邮件地址, 可能不是一个有效的邮件地址，请检查后重新提交！");
             document.getElementById("email_name").focus();
             return false;
         }
         else if (email.length > 32) {
             alert("您输入的电子邮件地址长度超过允许范围，请检查后重新提交。");
             document.getElementById("email_name").focus();
             return false;
         }

     }
</script>
</head>
<body style="margin-left: 10px;">
<form id="from1" runat="server" >
    <table width="510" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" style="border: 1px solid #ccc; margin-top: 20px;">
    <tr>
        <td align="center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                <tr bgcolor="#86a73c">
                    <td height="30" colspan="2"  style="font-size: 14px; color: #ffffff;">
                        &nbsp;&nbsp;<b>自助查询红包函注册链接：</b>
                    </td> 
                </tr>
                <tr bgcolor="#effec8"> <td> &nbsp; </td>
                    <td style='padding-left: 5px'>&nbsp;</td>
                </tr>
                <tbody id="mail" runat="server" >
                    <tr bgcolor="#effec8">
                        <td height="35">&nbsp;</td>
                        <td height="30" style='padding-left: 5px'>
                            <table width="500" align="left" cellpadding="2" cellspacing="2">
                            <tr><td height="25" align="left"> 请输入接收红包的Email地址: </td> </tr>
                            <tr>
                                <td height="35" align="left">&nbsp;
                                <asp:TextBox ID="email_name" runat="server" name="email_name"></asp:TextBox>&nbsp;&nbsp;
                                    <asp:Button ID="btnsubmit" runat="server"  Text="查询注册链接" 
                                        OnClientClick ="return check();" onclick="btnsubmit_Click" /></td>
                            </tr>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </td>
    </tr>
</table>
</form>
</body>
</html>