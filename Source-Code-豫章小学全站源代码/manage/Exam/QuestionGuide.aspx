<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_QuestionGuide, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_QuestionGuide_online")%></title>
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
			<div id="Guide_toptext"><%=lang.Get("m_QuestionGuide_exam")%></div>
		</li>
		<li id="Guide_main">
		       <%-- <div class="guideexpand" onclick="Switch(this)">
					分类管理
				     </div>
				     <div class="guide">
					<ul>
						<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
							<a href="javascript:gotourl('Exam/Question_Class_Manage.aspx');">分类管理</a></li>
						<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
							<a href="javascript:gotourl('Exam/AddQuestion_Class.aspx?menu=Add&C_id=0');">添加分类</a></li>
				</ul>
				</div>--%>
			<div id="Guide_box">
				<div class="guideexpand" onclick="Switch(this)"> <%=lang.Get("m_QuestionGuide_paper")%> </div>
				<div class="guide">
					<ul>
						<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
						   <a href="../Exam/Papers_System_Manage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_paper")%> </a></li>
						<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
						   <a href="../Exam/CoureseManage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_course")%> </a></li>
					</ul>
				</div>
			  
				<div class="guideexpand" onclick="Switch(this)">
					<%=lang.Get("m_QuestionGuide_test")%>
				</div>
				<div class="guide">
					<ul>
						<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
						   <a href="../Exam/QuestionManage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_test")%></a></li>
					  <%--  <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
							<a href="../Exam/QuestionSouch.aspx" target="main_right">高级搜索</a></li>--%>
                      <%-- <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
							<a href="../Exam/AddQuestionForType.aspx" target="main_right">添加试题</a></li>--%>
							 <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
						   <a href="../Exam/Question_Class_Manage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_category")%></a></li>
					   <%-- <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
							<a href="../Exam/AddQuestion_Class.aspx?menu=Add&C_id=0" target="main_right">添加分类</a></li>--%>
						<li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
					   <a href="../Exam/ExamPointManage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_center")%></a></li>
						 <li class="guideli" onmouseover="this.className='guidelihover'" onmouseout="this.className='guideli'">
					   <a href="../Exam/QuestionTypeManage.aspx" target="main_right"><%=lang.Get("m_QuestionGuide_question")%></a></li>
					</ul>
				</div>
			</div>
            </li>
        </ul>
    </div>
    </form>
</body>
</html>
