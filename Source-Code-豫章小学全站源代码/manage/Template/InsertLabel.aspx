<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Template.InsertLabel, App_Web_balgrtw4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<html>
<head id="Head1" runat="server">
<title>动态标签编辑器-<% =Request.QueryString["n"]%></title>
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
</head>
<body>
    <form runat="server" id="form1">
        <table style="width:100%; height:100%" cellpadding="2" cellspacing="1" class="border">
            <tr style="height:30px">
                <td class="spacingtitle" valign="middle">
                    <img src="/App_Themes/AdminDefaultTheme/Images/img_u.gif" alt="" />
                    <span style="color: #0000FF;font-weight: bold;font-size: 12px;">
                    <asp:Label ID="LabelName" runat="server"></asp:Label>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="tdbgleft">
                    <div style="height:100%; overflow: auto; border:1px double #ffffff">
                    <div style="width: 100%; text-align: center">
                            <asp:Label ID="labelintro" runat="server">无标签说明</asp:Label></div>
                    <div style="width: 95%; text-align: center">
                        <asp:Label ID="labelbody" runat="server"></asp:Label></div>
                    </div>
                </td>
            </tr>
            <tr style="height:30px">
               <td class="tdbgleft" align="center">
                   <input type="button"  value="添加为标签" class="C_input" onclick="submitdate(<%= LabelType %>);" />&nbsp;&nbsp;
                   <input type="button"  class="C_input" value="取消" onclick="window.close();" />
               </td>
            </tr>
        </table>
        <script language="JavaScript" type="text/javascript">
    <!--
    function submitdate(lbltype){
        var returnstr;
        if(lbltype=="1")
            returnstr = "{ZL.Source id=\"" + document.getElementById("<% =LabelName.ClientID %>").innerHTML + "\"";
        else
            returnstr = "{ZL.Label id=\"" + document.getElementById("<% =LabelName.ClientID %>").innerHTML + "\"";
        
        var oSpanArr = document.getElementsByTagName('SPAN');
        for (var i = 0; i < oSpanArr.length; i++) {
            if (oSpanArr[i].getAttribute("stype") == "0") {
                var pvalue = document.getElementById(oSpanArr[i].getAttribute("sid")).value;
                if(pvalue != "" && i > 0)
                    returnstr += " " + oSpanArr[i].getAttribute("sid") + "=\"" + pvalue + "\"";
            }

            if (oSpanArr[i].getAttribute("stype") == "1") {
                var txt = $("#h" + oSpanArr[i].getAttribute("sid")).val();
                returnstr += " " + oSpanArr[i].getAttribute("sid") + "=\"" + txt+ "\"";   
            }
        }

        
        if(window.showModalDialog != null)
        {
            window.returnValue = returnstr + " /}";
        }
        else
        {
            var pre = window.opener.document.getElementById('textContent').value.substr(0, window.opener.start);
            var post = window.opener.document.getElementById('textContent').value.substr(window.opener.end);
            window.opener.document.getElementById('textContent').value = pre + returnstr + " /}" + post;
        }        
        window.close();
    }
    function selectchecked(objid) {
        var hid = objid.name;
        var hidid = hid.slice(1, hid.length);
        var hidobj = $("#h" + hidid);
        if ($(objid).attr("checked")) {
            if (hidobj.val().length == 0) {
                hidobj.val($(objid).val());
            } else {
                var htxt = hidobj.val();
                htxt += "$" + $(objid).val();
                hidobj.val(htxt);
            } 
        } else {
            var hgtxt = hidobj.val();
            var hgsub = hgtxt.replace("$" + $(objid).val() + "", "").replace(""+$(objid).val() + "$", "").replace("" + $(objid).val() + "", "");
            hidobj.val(hgsub);
        }
      }
    -->
        </script>

    </form>
</body>
</html>