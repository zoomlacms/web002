<%@ page language="C#" autoeventwireup="true" inherits="Callback, App_Web_m53mud2n" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>APP登录</title>
<script src="JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
//    function bodyhide() {
//        $("body").children().show();
//    }
    function GetInfo() {
        var obj = new Object();
        obj.InfoHid = $("#InfoHid").val();
        obj.Uid = $("#Uid");
        obj.birthday = $("#birthday");
        obj.marriage = $("#marriage");
        obj.blood = $("#blood");
        obj.sex = $("#sex");
        obj.Username = $("#Username");

        var data = obj.InfoHid;
        var json = eval('(' + data + ')');

        obj.Uid.val(json.userid);
        obj.Username.val(json.username);
        obj.birthday.val(json.birthday);
        obj.marriage.val(json.marriage);
        obj.blood.val(json.blood);
        obj.sex.val(json.sex);

    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="InfoHid" type="hidden" value="" runat="server" />
        <input id="Uid" type="hidden" value="" runat="server" />

        
        <input id="birthday" type="hidden" value="" runat="server" />
        <input id="marriage" type="hidden" value="" runat="server" />
        <input id="blood" type="hidden" value="" runat="server" />
        <input id="sex" type="hidden" value="" runat="server" />

       <div style="width:80px;">用户名：</div>
       <asp:TextBox ID="Username" runat="server"></asp:TextBox><br />
      <div style="width:80px;"> 密码： </div><asp:TextBox ID="pass" runat="server" 
            TextMode="Password"></asp:TextBox><br />
      <div style="width:80px;"> 确定密码： </div><asp:TextBox ID="cpass" runat="server" 
            TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="Register" runat="server" Text="提交" onclick="Register_Click" />

    </div>
    </form>
</body>
</html>
