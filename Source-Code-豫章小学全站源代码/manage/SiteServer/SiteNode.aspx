<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_SiteNode, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<html>
<head id="Head1" runat="server">
<title>选择子站节点</title>

<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script language="javascript" type="text/javascript">
    function SetNodeSelect(conid, nodeid) {
        var theBox = document.getElementById(conid);
        xState = theBox.checked;
        var v = opener.document.getElementById("hfNode").value;
        if (xState) {
            if (v == "") {
                opener.document.getElementById("hfNode").value += nodeid;
            } else {
            var arr = v.split(",");
            var str = "";
            for (var i = 0; i < arr.length; i++) {
                    if (arr[i] != nodeid)
                        str += arr[i] + ",";
                }
                opener.document.getElementById("hfNode").value = str + nodeid;
                
            }
        }
        else {
            var arr = v.split(",");
            var str="";
            for (var i = 0; i < arr.length; i++) {
                if (arr[i] != nodeid)
                    str += arr[i] + ",";
            }
            if (str.length >0 && str.substring(str.length - 1, str.length) == ",") {
                str = str.substring(0, str.length - 1);
            }
            opener.document.getElementById("hfNode").value = str;
        }
    }


    function postBackByObject() {
        var element = window.event.srcElement;
        if (element.tagName == "INPUT" && element.type == "checkbox") {
            var checkedState = element.checked;
            SetNodeSelect(element.id, element.value);
            while (element.tagName != "TABLE")
                element = element.parentElement;

            UnCheck(element);
            element = element.nextSibling;
            if (element == null)
                return;

            var childTables = element.getElementsByTagName("TABLE");
            for (var tableIndex = 0; tableIndex < childTables.length; tableIndex++)
                Check(childTables[tableIndex], checkedState);
        }
    }

    function UnCheck(table) {
        if (table == null || table.rows[0].cells.length == 2) // This is the root 
            return;
        var parentTable = table.parentElement.previousSibling;
        Check(parentTable, false);
        UnCheck(parentTable);
    }

    function Check(table, checked) {
        var checkboxIndex = table.rows[0].cells.length - 1;
        var cell = table.rows[0].cells[checkboxIndex];
        var checkboxes = cell.getElementsByTagName("INPUT");
        if (checkboxes.length == 1) {
            checkboxes[0].checked = checked;
            SetNodeSelect(checkboxes[0].id, checkboxes[0].value);
        }
}
function aa() {
    alert(opener.document.getElementById("hfNode").value);
}

function OpenLink(lefturl, righturl) {
    if (lefturl != "") {
        parent.frames["left"].location = lefturl;
    }
    try {
        parent.MDIOpen(righturl); return false;
    } catch (Error) {
        parent.frames["main_right"].location = righturl;
    }
}

function gotourl(url) {
    try {
        parent.MDIOpen(url); void (0);
    } catch (Error) {
        parent.frames["main_right"].location = "../" + url; void (0);
    }
}
</script>



</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border">
        <tr class="tdbgleft">
            <td>
                <strong style="color: Red"> &nbsp 选择节点后程序会自动保存，直接关闭窗口即可！</strong>
            </td>
        </tr>
        <tr class="tdbgleft" id="tr2" runat="server">
            <td colspan="2">
                <asp:TreeView ID="tvNav" runat="server" ExpandDepth="1" ShowLines="True" EnableViewState="False" EnableClientScript="true">
                </asp:TreeView>
            </td>
        </tr>
    </table>
    &nbsp;<script language="javascript" type="text/javascript">
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
                        }
                    }
                }
            }
        }       
    </script></form>
</body>
</html>
