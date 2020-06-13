<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_QuestionGuide, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%=lang.Get("m_QuestionGuide_system")%></title>
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
    </script>
</head>
<body id="Guidebody" style="margin-left: 0px; margin-right: 0px; margin-top: 1px;
    margin-bottom: 0px">
    <form id="formGuide" runat="server">
    <div id="Div1">
        <ul>
            <li id="Guide_top">
                <div id="Guide_toptext">
                    <%=lang.Get("m_QuestionGuide_system")%></div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                    <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_QuestionGuide_systempaper")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                  <a href="../Question/Papers_System_Manage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_systempaper")%></a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_QuestionGuide_systemtest")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Question/QuestionManage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_systemtest")%></a></li>
                          <%--  <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                  <a href="../Question/QuestionSouch.aspx" target="main_right">高级搜索</a></li>--%>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Question/AddQuestion.aspx?Operation=Add" target="main_right"><%=lang.Get("m_QuestionGuide_additem")%></a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_QuestionGuide_item")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Question/Question_Class_Manage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_item")%></a></li>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"> <a href="../Question/AddQuestion_Class.aspx?menu=Add&C_id=0" target="main_right"><%=lang.Get("m_QuestionGuide_addcategory")%></a></li>
                        </ul>
                    </div>
                    <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_QuestionGuide_userpaper")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'"><a href="../Question/Papers_User_Manage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_userpaper")%></a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
