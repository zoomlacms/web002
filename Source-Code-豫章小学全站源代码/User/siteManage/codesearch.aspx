<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_codesearch, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>自定义搜索框</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
<script language="javascript">
    function SelectColor(t, clientId) {
        var url = "/manage/Common/SelectColor.aspx?d=f&t=6";
        var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
        if (document.all) {
            var color = showModalDialog(url + old_color, '', "dialogWidth:18.5em; dialogHeight:16.0em; status:0");
            if (color != null) {
                document.getElementById(clientId).value = color;
            } else {
                document.getElementById(clientId).focus();
            }
        } else {
            var color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server" >
<div class="user_con" >
<h2>自定义搜索框</h2>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table user_table1">
    <tr>
    <th colspan="3">自定义搜索框设置</th>
    </tr>
    <tr>
        <td align="right" width="15%">搜索框尺寸：</td>
        <td align="center">宽</td>
        <td><input name="w1" type="text" class="code_input" id="w1" value="200" size="6" />px&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高
           <input name="h1" type="text" class="code_input" id="h1" value="100" size="6" />px</td>
    </tr>
    <tr>
    <td align="right">搜索框边框：</td>
    <td></td>
    <td><input name="w" type="text" class="code_input" id="Text1" value="180" size="6" />px&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高
        <input name="h" type="text" class="code_input" id="Text2" value="23" size="6" />px<br />
        <input name="border" type="checkbox" id="border" value="1" checked="checked" />有边框　　边框颜色#
        <input name="bColor" type="text" class="code_input" id="bColor" value="acc6e1" size="6" />&nbsp;
       <img onclick="SelectColor(this,'bColor');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif" align="absmiddle" style="border-width: 0px; cursor: pointer" /></td>
    </tr>
    <tr>
    <td align="right">搜索框标题：</td>
    <td></td>
    <td><input name="title" type="text" class="code_input" id="textfield15" value="tt比价" size="10" /><br />标题背景#
        <input name="tColor" type="text" class="code_input" id="tColor" value="cccccc" size="6" />&nbsp;
        <img onclick="SelectColor(this,'tColor');" src="/App_Themes/AdminDefaultTheme/images/selectclolor.gif"
                        align="absmiddle" style="border-width: 0px; cursor: pointer" /><br />标题背景图
        <input name="bgimg" type="text" id="textfield8" value="/user/css/images/srh_tit_bg.gif" style="width:260px;" />
       <input name="uid" type="hidden" id="uid" value="257661" /></td>
    </tr>
    <tr>
    <td align="right">窗口方式：</td>
    <td></td>
    <td><select name="target" id="target">
        <option value="_blank">新窗口打开</option>
        <option value="_top" selected="selected">当前窗口打开</option>
    </select></td>
    </tr>
    <tr>
    <td align="right">编码格式：</td>
    <td></td>
    <td><input type="radio" name="bianma" id="radio" value="utf-8" checked="checked"/>UTF-8 
        <input name="bianma" type="radio" id="radio2" value="gbk2312" />GBK2312</td>
    </tr>
    <tr>
    <td align="right"><asp:HiddenField ID="hfurl" runat="server" /></td>
    <td></td>
    <td><input type="button" value=" 预 览 " onclick="reSet(1)" class="newbutton01"/>&nbsp;
    <input type="button" value=" 拷贝代码 " onclick="copyText(document.getElementById('SearchCode').value)" class="newbutton03"/>  
    &nbsp; 参考精简示例 <a href="/api/Search.html" target="_blank">查看</a>&nbsp; <a href="/api/Search.rar" target="_blank">下载</a> </td>
    </tr>
</table>   
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr align="center">
    <td style=" padding:5px; border:1px solid #e6ecfa; border-top:0; color:#999">
    <textarea class="code_area" name="SearchCode" rows="4" id="SearchCode" onfocus="this.select();"></textarea><br />
    *如果您是频道用户,同时想使用该搜索框来检索频道内的酒店,可在上面参数&order=1中扩展参数
    </td>
    </tr>
</table>
<div class="pre_module" id="SearchID"></div>
</div>
<div class="clearfloat"></div>
<script language="javascript">
    var Ns = new Array('w', 'h', 'uid', 'border', 'bColor', 'title', 'tColor', 'bgimg', 'target', 'bianma');
    window.onload = function () {
        return;
        var ips = document.form1.getElementsByTagName('input');
        for (var k in ips) {
            ips[k].onchange = function () { reSet(0) };
        }
    }
    function reSet(_do) {
        var _src =document.getElementById("hfurl").value+ "SearchBox.aspx?";
        for (var k = 0; k < Ns.length; k++) {
            var obj = document.getElementsByName(Ns[k]), vl = '';
            if (Ns[k] == 'title') { vl = escape(obj[0].value) } else { vl = obj[0].value; }
            if (vl != '') _src += Ns[k] + '=' + vl + '&';
        }
        _src = _src.replace(/&$/, '')
        var htmlcode = '<iframe id="SearchID" width="' + _g('w1').value + '" height="' + _g('h1').value + '" scrolling="no" frameborder="0" src="' + _src + '"></iframe>'
        document.getElementById('SearchCode').value = htmlcode;
        document.getElementById('SearchID').innerHTML = htmlcode;
    }
    function _g(b) {
        return document.getElementById(b);
    }
    
    function copyText(txt) {
        if (window.clipboardData) {
            window.clipboardData.clearData();
            window.clipboardData.setData("Text", txt);
        } else if (navigator.userAgent.indexOf("Opera") != -1) {
            window.location = txt;
        } else if (window.netscape) {
            try {
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            } catch (e) {
                alert("被浏览器当前设置禁止复制\n请直接在代码域中进行复制");
            }
            var clip = Components.classes['@mozilla.org/widget/clipboard;1'].createInstance(Components.interfaces.nsIClipboard);
            if (!clip) return;
            var trans = Components.classes['@mozilla.org/widget/transferable;1'].createInstance(Components.interfaces.nsITransferable);
            if (!trans) return;
            trans.addDataFlavor('text/unicode');
            var str = new Object();
            var len = new Object();
            var str = Components.classes["@mozilla.org/supports-string;1"].createInstance(Components.interfaces.nsISupportsString);
            var copytext = txt;
            str.data = copytext;
            trans.setTransferData("text/unicode", str, copytext.length * 2);
            var clipid = Components.interfaces.nsIClipboard;
            if (!clip) return false;
            clip.setData(trans, null, clipid.kGlobalClipboard);
        }
        alert("复制成功！")
    }
</script>
</form>
</body>
</html>
