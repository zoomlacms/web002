<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_SelfOrderFlowers, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>自助订花</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<style>
.line{border:1px solid #CCC}
</style>
<script>
    function sel() {
        var elm = document.form1.elements;
        var hids = "";
        var hidnum = "";
        var hidprice=0;
        for (i = 0; i < elm.length; i++) {
            if (elm[i].type == "hidden" && elm[i].id.indexOf('_') <= -1) {
                var num = document.getElementById("pronum" + elm[i].value);
                var price =document.getElementById("price"+elm[i].value);
                if (isNaN(num.value)) {
                    alert("请输入数字！");
                    return false;
                } else if (parseInt(num.value) > 0) {
                    hids = hids + "," + elm[i].value;
                    hidnum = hidnum + "," + num.value;
                    hidprice = hidprice + (parseInt(num.value) * parseFloat(price.innerText.substring(1)));
                }
            }
        }
        document.getElementById("hf_ids").value = hids;
        document.getElementById("hf_nums").value = hidnum;
        document.getElementById("hf_price").value = hidprice;
    }

    function clearnum() {
        var elm = document.form1.elements;
        for (i = 0; i < elm.length; i++) {
            if (elm[i].type == "hidden" && elm[i].id != "hfUrl" && elm[i].id.indexOf('_') <= -1) {
                document.getElementById("pronum" + elm[i].value).value="0";
            }
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">您现在的位置：自助订花</div>
<div class="us_seta"  style="margin-top:5px;"><h1 align="center">选择主花材</h1></div>

<asp:Repeater ID="flo" runat="server">
<ItemTemplate>
<table width="25%" style="float:left;border:1px solid #CCC">
  <tr class="line">
    <td height="24" align="center" width="25%" >
        <img src="<%#GetImaUrl(Eval("Flo_img","{0}"))%>" width="60px" height="60px" />
    </td>
    <td height="24" align="center" width="25%" >
        <%#Eval("Flo_Name")%>
    </td>
    <td height="24" align="center" width="25%" >
        <input id="hid<%#Eval("ID") %>" name ="hid<%#Eval("ID") %>" type="hidden" value='<%#Eval("ID") %>' />
        <input name="pronum<%#Eval("ID") %>" type="text" class="l_input" value="0" id="pronum<%#Eval("ID") %> " style="width: 54px;" />
    </td>
    <td height="24" align="center" width="25%" >
        <span class="l_input" id="price<%#Eval("ID") %>" style="width: 54px;"><%#Eval("Flo_Price", "{0:c}")%></span>
    </td>
</tr>
</table>
</ItemTemplate>
</asp:Repeater>

<div class="us_seta"  style="margin-top:5px;width:100%"><h1 align="center">选择配花材</h1></div>
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<table width="30%" style="float:left;border:1px solid #CCC">
  <tr class="line">
    <td height="24" align="center" width="25%">
        <img src="<%#GetImaUrl(Eval("Flo_img","{0}"))%>" width="60px" height="60px"/>
    </td>
    <td height="24" align="center" width="25%">
        <%#Eval("Flo_Name")%>
    </td>
    <td height="24" align="center" width="25%">
        <input id="hid<%#Eval("ID") %>" name ="hid<%#Eval("ID") %>" type="hidden" value='<%#Eval("ID") %>' />
        <input name="pronum<%#Eval("ID") %>" type="text" class="l_input" value="0" id="pronum<%#Eval("ID") %> " style="width: 54px;" />
    </td>
    <td height="24" align="center" width="25%">
        <span class="l_input" id="price<%#Eval("ID") %>" style="width: 54px;"><%#Eval("Flo_Price", "{0:c}")%></span>
    </td>
</tr>
</table>
</ItemTemplate>
</asp:Repeater>
</div>
<div align="center" style="width:100%; line-height:35px">
<asp:HiddenField ID="hf_Url" runat="server" Value="/Store/StoreCart.aspx?types=1" />
<asp:HiddenField ID="hf_ids" runat="server" />
<asp:HiddenField ID="hf_nums" runat="server" />
<asp:HiddenField ID="hf_price" runat="server" />
<asp:HiddenField ID="hf_uid" runat="server" />
<asp:Button ID="btn" runat="server" Text="选好了,进入计价" OnClientClick="return sel();" onclick="btn_Click" />&nbsp;&nbsp;
<asp:Button ID="btncansel" runat="server" Text="重新订制" OnClientClick="clearnum(); return false;" /></div>
</form>
</body>
</html>
