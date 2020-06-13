<%@ page language="C#" autoeventwireup="true" inherits="User_Info_UserDeducExp, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>用户下载内容扣除积分</title>
<script type="text/javascript">
    function Tips(obj) {
        if (obj == "0") { //未登录
            // alert("请先登录");
            location.href = "/user/login.aspx";
        }
        if (obj == "-1") {  //用户积分不够
            //alert("您的积分不够");

        }
        if (obj == "-3") {  //系统没有设置扣分
           
        }
        if (obj == "-2") {  //用户更新积分失败
            alert("扣除积分失败");
        }
        if (obj == "1") {  //扣除积分成功
            alert("扣除积分成功");
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
</form>
</body>
</html>
