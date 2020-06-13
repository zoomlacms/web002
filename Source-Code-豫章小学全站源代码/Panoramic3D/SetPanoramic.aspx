<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_SetPanoramic, App_Web_es4louzw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<link type="text/css" rel="stylesheet" href="history/history.css" />
<title>全景视图</title>
<script language="javascript" type="text/javascript" src="AC_OETags.js"></script>
<script language="javascript" type="text/javascript" src="history/history.js"></script>
<style type="text/css">
    body{margin: 0px;overflow: hidden;}
</style>
<script language="JavaScript" type="text/javascript">
    window.onload = function () { alert('提示：请点击进入、返回、其它等创建按钮。\r\r注意：必须点击[保存]才能创建成功！！！'); }
    var requiredMajorVersion = 9;
    var requiredMinorVersion = 0;
    var requiredRevision = 124;

    function changeDocumentTitle(a) {
        //window.document.title = a;
        //alert(a);
        return document.getElementById("xmlcontent").value;
    }
    function killErrors() {
        return true;
    }
    function SaveOption(reutrntxt) {
        //alert(reutrntxt);
        //ScanName
        var mainright = window.top.main_right;
        var listarr = reutrntxt.toString().split('</ScanName>');
        var list1 = listarr[0];
        var list2arr = list1.split('<ScanName>');
        var option = document.createElement("option");
        option.value = reutrntxt;
        option.text = list2arr[1];

        mainright.document.getElementById("PanoramicViewList_View").add(option);

        var optionlen = mainright.document.getElementById("PanoramicViewList_View").options.length
        for (var sd = 0; sd < optionlen; sd++) {
            mainright.document.getElementById("PanoramicViewList_View").options[sd].selected = true;
        }
        parent.Dialog.close();
    }
    window.onerror = killErrors;
    window.scroll
</script>
</head>
<body style="overflow: hidden;">
    <form id="form1" runat="server">
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="1">
            <tr>
                <td colspan="2" class="spacingtitle" align="center">
                    <asp:Label ID="TitleLabel" runat="server" Text="设置参数"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" align="center" style="width: 100%; height: 100%" colspan="2">
                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="Show3Dmodel" width="800px" height="400px" codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">
                        <param name="movie" value="Show3Dmodel.swf" />
                        <param name="quality" value="high" />
                        <param name="bgcolor" value="#869ca7" />
                        <param name="allowFullScreen" value="true" />
                        <param name="allowScriptAccess" value="sameDomain" />
                        <embed src="Show3Dmodel.swf" quality="high" bgcolor="#869ca7" width="800px" height="400px" name="Show3Dmodel" align="middle" play="true" loop="false" allowscriptaccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.adobe.com/go/getflashplayer"></embed>
                    </object>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbg" align="center" colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="取消创建" CssClass="C_input" CausesValidation="false" OnClientClick="parent.Dialog.close();return false" />
                </td>
            </tr>
        </table>
        <asp:HiddenField ID="xmlcontent" runat="server" />
    </div>
    <br />
    <b>提示：</b>请点击进入、返回、其它等创建按钮。<br />
    <b>注意：</b>必须点击[保存]才能创建成功！！！
    </form>
</body>
</html>