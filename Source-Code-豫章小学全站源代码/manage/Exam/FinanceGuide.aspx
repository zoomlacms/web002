<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_FinanceGuide, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title><%=lang.Get("m_FinanceGuide_financial")%></title>
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
                    <%=lang.Get("m_FinanceGuide_financial")%></div>
            </li>
            <li id="Guide_main">
                <div id="Guide_box">
                     <div class="guideexpand" onclick="Switch(this)">
                        <%=lang.Get("m_FinanceGuide_financial")%>
                    </div>
                    <div class="guide">
                        <ul>
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../Shop/OrderList.aspx" target="main_right"><%=lang.Get("m_FinanceGuide_all")%></a></li>                                     <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../Shop/BankRollList.aspx" target="main_right"><%=lang.Get("m_FinanceGuide_detail")%></a></li>  
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../Shop/InvoiceList.aspx" target="main_right"> <%=lang.Get("m_FinanceGuide_ticket")%></a></li> 
                            <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../Shop/CartManage.aspx " target="main_right"> <%=lang.Get("m_FinanceGuide_record")%></a></li>  
                           <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../Shop/PayList.aspx" target="main_right"> <%=lang.Get("m_FinanceGuide_payment")%></a></li> 
                         <!--  <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../" target="main_right"> 收款管理</a></li>      
                           <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../" target="main_right"> 记账凭证</a></li>      
                           <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../" target="main_right"> 付款管理</a></li>      
                           <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
                                <a href="../" target="main_right"> 报表统计</a></li>      -->                               
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
