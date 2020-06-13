<%@ page language="C#" autoeventwireup="true" inherits="User_Info_PunchManage, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>打卡领取奖励</title>
<script>
    function oper(val) {
        if (val == -1) {
            alert("对不起,您今天已打卡");
        }
        if (val == 0) {  //系统设置为不奖励
            alert("对不起,该系统设置为不奖励");
        }
        if (val > 1) {
            alert("成功");
        }
        if (val == -2) {
            alert("打卡失败");
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server" >
<div align="center" style="width:200px;height:200px;line-height:200px">
   <asp:LinkButton ID="su" runat="server" PostBackUrl="~/User/Info/PunchManage.aspx?menu=sub">打卡领取奖励</asp:LinkButton>
</div>
</form>
</body>
</html>
