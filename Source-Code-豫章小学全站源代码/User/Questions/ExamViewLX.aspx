<%@ page language="C#" autoeventwireup="true" inherits="User_Questions_ExamViewLX, App_Web_vlyb51rz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>系统试题管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server" target="_top">
<div class="r_navigation">
    <span>考试权限判断</span>
</div>
        <table align="center" width="100%">
        <tr>
            <td align="center">
                你确定要参加本次考试吗？
                 <br /><br />
            </td>
        </tr>           
        <tr>
            <td align="center">
                <asp:Button type="submit" runat="server" name="Button1" Text="进入考试"  id="Button1" class="C_input" onclick="Button1_Click" />
                <input type="submit" name="Button2" value="放弃考试" onclick="cl();" id="Button2" class="C_input" />
            </td>
        </tr>
        </table>
        </form>
<script type="text/javascript">
    function cl() { window.close(); }
</script>
</body>
</html>