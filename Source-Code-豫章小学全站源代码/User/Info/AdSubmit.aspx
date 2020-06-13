<%@ page language="C#" autoeventwireup="true" debug="true " inherits="User_Info_AdSubmit, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>订单提交</title>
</head>
<body onload="shop()">
<div>loading...</div>
<div style="display:none">
    <form id="form1" name="form" method="post" action="/AdShopCar.aspx" runat="server">
     <input type="text" id="ProUrl" name="ProUrl" value="111" class="but"  runat="server" />
        <input id="Proname" name="Proname" runat="server" />
        <input id="Wholesaleone" name="Wholesaleone" runat="server" />
        <input type="text" id="ProSeller" name="ProSeller" value="qq" runat="server" />
        <input type="text" id="Stock" name="Stock" value="1" runat="server" />
        <input type="text" id="ProClass" name="ProClass" value="1" runat="server" />
        <input type="text" id="Proinfo" name="Proinfo" value="111" runat="server" />
        <input type="text" id="Attribute" name="Attribute" value="111" runat="server" />
        <input type="text" id="Thumbnails" name="Thumbnails" value="111" runat="server" />
        <input type="submit" name="button" id="button" value="提交" runat="server" />
 
    </form>
	</div>
    <script type="text/javascript">
        function shop() {
     form1.submit();
    }
    </script>
</body>
</html>
