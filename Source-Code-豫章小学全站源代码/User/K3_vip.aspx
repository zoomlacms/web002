<%@ page language="C#" autoeventwireup="true" inherits="User_K3_vip, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <script type="text/javascript" src="/js/jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server" action="K3_vip.aspx">
    <div>
    <input id="Mobile" name="Mobile" runat="server" onkeyup="checkMobile(this)"/>
    <label id="v_Mobile" style="color:Red;font-size:12px"></label>
    <br />
    <input type="submit" disabled="disabled" id="sub"/>
    </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function checkMobile(obj) {
        var sMobile = obj.value
        if (!(/^1[3|4|5|8][0-9]\d{8}$/.test(sMobile))) {
            $("#v_Mobile").html("手机号格式不正确")
            $("#sub").attr("disabled", "disabled");
            return false;
        } else {
            $.ajax({
                type: "POST",
                url: "K3_vip.aspx",
                data: "action=checkMobile&Mobile=" + obj.value,
                success: function (msg) {
                    switch (msg) {
                        case "0":
                            $("#v_Mobile").html("该手机号码已申请VIP卡！");
                            $("#sub").attr("disabled", "disabled");
                            break;
                        case "1": $("#v_Mobile").html("");
                            $("#sub").attr("disabled", "");
                            break;
                    }
                },
                Error: function (msg) {
                    $("#v_Mobile").html(msg)
                    $("#sub").attr("disabled", "disabled");
                }
            });
        }
    }
</script>