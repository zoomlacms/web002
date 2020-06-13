<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.MaskList, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
    function SetValue(text,t) {
        opener.document.getElementById("txt"+t+"Mask").value = text;
        window.close();
    }
    function SetMultiValue(text,id) {
        var s = opener.document.getElementById("txtMask").value;
        if (document.getElementById(id).checked) {
            if (s == "") {
                opener.document.getElementById("txtMask").value = text;
            }
            else {
                opener.document.getElementById("txtMask").value = opener.document.getElementById("txtMask").value + "," + text;
            }
        }
        else {
            var sarr = s.split(',');
            var sx = "";
            for (var ii = 0; ii < sarr.length; ii++) {
                if (sarr[ii] != text) {
                    sx = sx + sarr[ii] + ",";
                }
            }
            opener.document.getElementById("txtMask").value = sx;
        }

    }
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr id="trid" runat="server" >
                <td class="tdbgleft">
                    <input id="Checkbox1" type="checkbox" onclick="CheckAll(this);" />全选
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="dlMask" runat="server" RepeatColumns="4" Width="100%">
                        <ItemTemplate>
                            <%#getimg(DataBinder.Eval (Container.DataItem,"Name").ToString())%>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
