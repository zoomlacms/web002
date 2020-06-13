<%@ page language="C#" autoeventwireup="true" inherits="FeightCarInfo, App_Web_qwhmn0xp" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>航班预订-消息填写</title>
<meta http-equiv="Content-Type" content="text/html" />
<script language="javascript" type="text/javascript">
    function sub() {
        var proname = document.getElementById("Proname").value;
        var Wholesaleone = document.getElementById("Wholesaleone").value;
        var Stock = document.getElementById("Stock").value;
        var comedate = document.getElementById("comedate").value;
        var AirOilTax = document.getElementById("AirOilTax").value;  //燃油
        var AirPortTax = document.getElementById("AirPortTax").value;  //机建
        var countRate = document.getElementById("countRate").value;  //折扣
        var city = document.getElementById("city").value;
        var ArrivalDate = document.getElementById("ArrivalDate").value;
        var type = document.getElementById("type").value;
        var Insurance = document.getElementById("Insurance").value;
        location.href =encodeURI(decodeURI("InputPassengers.aspx?type=" + type + "&Proname=" + proname + "&Wholesaleone=" + Wholesaleone + "&comedate="
         + comedate + "&AirOilTax=" + AirOilTax + "&AirPortTax=" + AirPortTax + "&countRate=" + countRate + "&Stock=" + Stock + "&city=" + city + "&Insurance=" + Insurance
         + "&ArrivalDate=" + ArrivalDate));
    }
</script>

</head>
<body onload="sub()">
    <form runat="server" id="s">
    <asp:HiddenField ID="Insurance" runat="server" />
    <asp:HiddenField ID="Proname" runat="server" />
    <asp:HiddenField ID="Wholesaleone" runat="server" />
    <asp:HiddenField ID="Stock" runat="server" />
    <asp:HiddenField ID="comedate" runat="server" />
    <asp:HiddenField ID="AirOilTax" runat="server" />
    <asp:HiddenField ID="AirPortTax" runat="server" />
     <asp:HiddenField ID="countRate" runat="server" />
    <asp:HiddenField ID="ArrivalDate" runat="server" />
    <asp:HiddenField ID="type" runat="server" Value="2" />
    <asp:HiddenField ID="city" runat="server" />
    </form>
</body>
</html>
