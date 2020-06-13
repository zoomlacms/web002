<%@ page language="C#" autoeventwireup="true" inherits="manage_Common_NodeList, App_Web_krvwsitc" enableEventValidation="false" viewStateEncryptionMode="Never" %>


<html>
<head id="Head1" runat="server">
<title>选择附属节点</title>

<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script language="javascript" type="text/javascript">
    function SetNodeSelect(conid, nodeid, nodename) {
        var theBox = document.getElementById(conid);
        xState = theBox.checked;
        var v = opener.document.getElementById("hfNode").value;
        if (xState) {
            var hfnode = opener.document.getElementById("hfNode");
            hfnode.value += nodeid + ",";
            //opener.document.write("dddd");
            opener.AddRowNode(nodename, nodeid, opener.document.all.NondeTable, "此节点", 1);
        }
        else {
            var arr = v.split(",");
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] == nodeid)
                    opener.DelCurrentRow(nodeid,1);
            }
        }
    }
    function SetNode(conid, nodeid, nodename) {

        var v = opener.document.getElementById("hfNode").value;
        var arr = v.split(",");
        v = nodeid + ",";
        for (var i = 1; i < arr.length; i++) {
            if (arr[i] != nodeid && arr[i] != "") {
                v += arr[i] + ",";
            }
        }
        opener.document.getElementById("hfNode").value = v;
        opener.ShowNode(nodename);
        window.close();
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border">
        <tr class="tdbgleft" id="tr2" runat="server">
            <td colspan="2">
                <asp:TreeView ID="tvNav" runat="server" ExpandDepth="1" ShowLines="True" EnableViewState="False">
                </asp:TreeView>
            </td>
        </tr>
    </table>

    <script language="javascript" type="text/javascript">

        var a = opener.document.form1.hfNode.value;
        var arr = new Array();
        arr = a.split(","); //字符分割
        var elm = document.form1.elements;
        if ('<%=Request.QueryString["type"]%>' == "check") {
            for (var j = 0; j < arr.length; j++) {
                for (var i = 0; i < elm.length; i++) {
                    if (elm[i].type == "checkbox") {
                        if (arr[j] == elm[i].value) {
                            elm[i].checked = true;
                            if (j == 0) {
                                elm[i].disabled = true;
                            }
                        }
                    }
                }
            }
        }
        else {
            for (var i = 0; i < elm.length; i++) {
                if (elm[i].type == "checkbox") {
                    if (arr[0] == elm[i].value)
                        elm[i].checked = true;
                }
            }
        }
                
    </script>

    </form>
</body>
</html>
