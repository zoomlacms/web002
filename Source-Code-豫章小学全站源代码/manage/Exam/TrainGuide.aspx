<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_TrainGuide, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title><%=lang.Get("m_TrainGuide_train")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
    function Switch(obj) {
        obj.className = (obj.className == "guideexpand") ? "guidecollapse" : "guideexpand";
        var nextDiv;
        if (obj.nextSibling) {
            if (obj.nextSibling.nodeName == "DIV") {
                nextDiv = obj.nextSibling;
            }
            else {
                if (obj.nextSibling.nextSibling) {
                    if (obj.nextSibling.nextSibling.nodeName == "DIV") {
                        nextDiv = obj.nextSibling.nextSibling;
                    }
                }
            }
            if (nextDiv) {
                nextDiv.style.display = (nextDiv.style.display != "") ? "" : "none";
            }
        }
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
            parent.MDILoadurl(url); void (0);
        } catch (Error) {
            parent.frames["main_right"].location = "../" + url; void (0);
        }
    }

    function ShowMainsgourl(lefturl, righturl) {
        var objLeft = parent.frames['left'];
        var objContent = parent.frames['main_right'];

        if (lefturl != "") {
            objLeft.location.href = lefturl;
        }
        if (righturl != "") {

            gotourl(righturl); return false;

            //objContent.location.href = righturl;
        }
    }
</script>
</head>
<body id="Guidebody" style="margin-left: 0px; margin-right: 0px; margin-top: 1px;
    margin-bottom: 0px">
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext"><%=lang.Get("m_TrainGuide_manage")%></div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)"> <%=lang.Get("m_TrainGuide_manage")%></div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../Exam/Audit.aspx" target="main_right"><%=lang.Get("m_TrainGuide_apply")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:ShowMain('../AddCRM/Customer.aspx','AddCRM/CustomerList.aspx?usertype=0')">
                                    <%=lang.Get("m_TrainGuide_manage")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                 <a href="javascript:ShowMain('../iServer/ServerSite.aspx','iServer/BselectiServer.aspx?num=-3&strTitle=')">
                                    <%=lang.Get("m_TrainGuide_insider")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="javascript:ShowMain('../User/MessageLink.aspx','User/Message.aspx')">
                                    <%=lang.Get("m_TrainGuide_sms")%></a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
