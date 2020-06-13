<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa_WebSite_Manages_Worktable, App_Web_sb3jeyxx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("m_Worktables_mytable")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function TABLE1_onclick() {
}
function getinfo(id) {
    location.href = "../AddOn/ProjectsDetail.aspx?ProjectID=" + id + "";
}
</script>
<style>
Input { font-family: verdana; font-size: 9pt; text-decoration: none; background-color: #FFFFFF; height: 20px; border: 1px solid #666666; color: #000000; }
.Calendar { font-family: verdana; text-decoration: none; width: 170; background-color: #C0D0E8; font-size: 9pt; border: 0px dotted #1C6FA5; }
.CalendarTD { font-family: verdana; font-size: 7pt; color: #000000; background-color: #f6f6f6; height: 20px; width: 11%; text-align: center; }
.Title { font-family: verdana; font-size: 11pt; font-weight: normal; height: 24px; text-align: center; color: #333333; text-decoration: none; background-color: #A4B9D7; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-bottom-style: 1px; border-top-color: #999999; border-right-color: #999999; border-bottom-color: #999999; border-left-color: #999999; }
.Day { font-family: verdana; font-size: 7pt; color: #243F65; background-color: #E5E9F2; height: 20px; width: 11%; text-align: center; }
.DaySat { font-family: verdana; font-size: 7pt; color: #FF0000; text-decoration: none; background-color: #E5E9F2; text-align: center; height: 18px; width: 12%; }
.DaySun { font-family: verdana; font-size: 7pt; color: #FF0000; text-decoration: none; background-color: #E5E9F2; text-align: center; height: 18px; width: 12%; }
.DayNow { font-family: verdana; font-size: 7pt; font-weight: bold; color: #000000; background-color: #FFFFFF; height: 20px; text-align: center; }
.DayTitle { font-family: verdana; font-size: 9pt; color: #000000; background-color: #C0D0E8; height: 20px; width: 11%; text-align: center; }
.DaySatTitle { font-family: verdana; font-size: 9pt; color: #FF0000; text-decoration: none; background-color: #C0D0E8; text-align: center; height: 20px; width: 12%; }
.DaySunTitle { font-family: verdana; font-size: 9pt; color: #FF0000; text-decoration: none; background-color: #C0D0E8; text-align: center; height: 20px; width: 12%; }
.DayButton { font-size: 9pt; font-weight: bold; color: #243F65; cursor: hand; text-decoration: none; }
</style>
<script language="JavaScript" type="text/javascript">
	var months = new Array("一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二");
	var daysInMonth = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	var days = new Array("日", "一", "二", "三", "四", "五", "六");
	var classTemp;
	var today = new getToday();
	var year = today.year;
	var month = today.month;
	var newCal;
	function getDays(month, year) {
		if (1 == month) return ((0 == year % 4) && (0 != (year % 100))) || (0 == year % 400) ? 29 : 28;
		else return daysInMonth[month];
	}
	function getToday() {
		this.now = new Date();
		this.year = this.now.getFullYear();
		this.month = this.now.getMonth();
		this.day = this.now.getDate();
	}

	function Calendar() {
		newCal = new Date(year, month, 1);
		today = new getToday();
		var day = -1;
		var startDay = newCal.getDay();
		var endDay = getDays(newCal.getMonth(), newCal.getFullYear());

		var daily = 0;
		if ((today.year == newCal.getFullYear()) && (today.month == newCal.getMonth())) {
			day = today.day;
		}
		var caltable = window.document.getElementById("calendar");

		var intDaysInMonth = getDays(newCal.getMonth(), newCal.getFullYear());

		for (var intWeek = 0; intWeek < caltable.rows.length; intWeek++)
		
			for (var intDay = 0; intDay < caltable.rows[intWeek].cells.length; intDay++) {
				var cell = caltable.rows[intWeek].cells[intDay];

				var montemp = (newCal.getMonth() + 1) < 10 ? ("0" + (newCal.getMonth() + 1)) : (newCal.getMonth() + 1);
				
			if ((intDay == startDay) && (0 == daily)) { daily = 1; }
			var daytemp = daily < 10 ? ("0" + daily) : (daily);
			var d = "<" + newCal.getFullYear() + "-" + montemp + "-" + daytemp + ">";
			if (day == daily) cell.className = "DayNow";
			else if (intDay == 6) cell.className = "DaySat";
			else if (intDay == 0) cell.className = "DaySun";
			else cell.className = "Day";
			if ((daily > 0) && (daily <= intDaysInMonth)) {
				cell.innerHTML = daily;
				daily++;
			} else {
				cell.className = "CalendarTD";
				cell.innerHTML = "";
			}
		}
		document.getElementById("year").value = year;
		document.getElementById("month").value = month + 1;
	}
	function subMonth() {
		if ((month - 1) < 0) {
			month = 11;
			year = year - 1;
		} else {
			month = month - 1;
		}
		Calendar();
	}
	function addMonth() {
		if ((month + 1) > 11) {
			month = 0;
			year = year + 1;
		} else {
			month = month + 1;
		}
		Calendar();
	}
	function setDate() {
		if (document.getElementById("month").value < 1 || document.getElementById("month").value > 12) {
			alert("月的有效范围在1-12之间!");
			return;
		}

		year = Math.ceil(document.getElementById("year").value);
		month = Math.ceil(document.getElementById("month").value - 1);
		Calendar();
	}

	window.onload = function() { document.getElementById("times").innerHTML = (new Date().getHours() < 10 ? "0" + new Date().getHours().toString() : new Date().getHours().toString()) + ":" + (new Date().getMinutes() < 10 ? "0" + new Date().getMinutes().toString() : new Date().getMinutes().toString()) + ":" + (new Date().getSeconds() < 10 ? "0" + new Date().getSeconds() : new Date().getSeconds().toString()); }
	setInterval(function() { document.getElementById("times").innerHTML = (new Date().getHours() < 10 ? "0" + new Date().getHours().toString() : new Date().getHours().toString()) + ":" + (new Date().getMinutes() < 10 ? "0" + new Date().getMinutes().toString() : new Date().getMinutes().toString()) + ":" + (new Date().getSeconds() < 10 ? "0" + new Date().getSeconds() : new Date().getSeconds().toString()); }, 1000); 
</script>
</head>
<body>
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <div class="r_navigation"><%=lang.Get("m_Worktables_manage")%>&gt;&gt;<%=lang.Get("m_Worktables_table")%>&gt;&gt;<%=lang.Get("m_Worktables_page")%></span>&nbsp;&nbsp;<%=lang.Get("m_Worktables_welcome")%>
	  <strong><asp:Literal runat="server" ID="litUserName"></asp:Literal></strong>&nbsp;<%=lang.Get("m_Worktables_today")%>:
      <asp:Literal runat="server" ID="litDate"></asp:Literal>
      <span id="times" name="times"></span> </div>
      <table id="ShortCutTable" class="border" cellspacing="1" width="100%" cellpadding="2" align="center" border="0">
        <tbody>
          <tr class="title">
            <td align="left" style="height: 25px;padding-left:5px;">&nbsp;<%=lang.Get("m_Worktables_welcometo")%><%=SiteName() %><%=lang.Get("m_Worktables_system")%>，<asp:Label ID="Version" runat="server" Text=""></asp:Label>。</td>
          </tr>
          <tr>
            <td style="height: 22px"><table width="450" border="0" cellpadding="0" cellspacing="0">
                <tr>
                <td align="center"><a href="../Config/SiteInfo.aspx"><img src="../../App_Themes/AdminDefaultTheme/Images/System1.png" alt="网站配置" /></a></td>
                <td align="center"><a href="../Content/ModelManage.aspx"><img src="../../App_Themes/AdminDefaultTheme/images/System2.png" alt="内容模型管理" /></a></td>
                <td align="center"><a href="../Content/NodeManage.aspx"><img src="../../App_Themes/AdminDefaultTheme/Images/System3.png" alt="节点设置" /></a></td>
                <td align="center"><a href="../Template/LabelManage.aspx"><img src="../../App_Themes/AdminDefaultTheme/Images/System4.png"  alt="标签设置" /></a></td>
                <td align="center"><a href="../Template/TemplateSet.aspx"><img src="../../App_Themes/AdminDefaultTheme/Images/System5.png"  alt="模板设置" /></a></td>
                <td align="center"><a href="../User/AdminManage.aspx"><img src="../../App_Themes/AdminDefaultTheme/Images/System8.png" alt="安全设定" /></a></td>
              </tr>
                <tr>
                <td height="24" align="center"><a href="../Config/SiteInfo.aspx" target="_blank"><%=lang.Get("m_Worktables_config")%></a></td>
                <td align="center"><a href="../Content/ModelManage.aspx" target="_blank"><%=lang.Get("m_Worktables_contentmodel")%></a></td>
                <td align="center"><a href="../Content/NodeManage.aspx" target="_blank"><%=lang.Get("m_Worktables_nodeset")%></a></td>
                <td align="center"><a href="../Template/LabelManage.aspx" target="_blank"><%=lang.Get("m_Worktables_labelset")%></a></td>
                <td align="center"><a href="../Template/TemplateSet.aspx" target="_blank"><%=lang.Get("m_Worktables_templateset")%></a></td>
                <td align="center"><a href="../User/AdminManage.aspx" target="_blank"><%=lang.Get("m_Worktables_safe")%></a></td>
              </tr>
              </table></td>
          </tr>
        </tbody>
      </table>
      <div class="clearbox"></div>
      <table width="100%" cellpadding="2" cellspacing="1" border="0">
        <tr>
          <td align="left" width="322px"><table style="width:100%;" class="border">
              <tr align="left">
              <td colspan="2" class="spacingtitle"><asp:Label ID="LblTitle" runat="server" Text="日历" Font-Bold="True"></asp:Label><a href="../../Common/SelectChinaDay.html">[<%=lang.Get("m_Worktables_calendar")%>]</a></td>
            </tr>
              <tr class="tdbg">
              <td class="tdbgleft" colspan="2" align="left">
<script language="javascript" type="text/javascript">
		function getEvent() {
			if (document.all) {
				return window.event; //如果是ie
			}
			func = getEvent.caller;
			while (func != null) {
				var arg0 = func.arguments[0];
				if (arg0) {
					if ((arg0.constructor == Event || arg0.constructor == MouseEvent)|| (typeof (arg0) == "object" && arg0.preventDefault && arg0.stopPropagation)) {
						return arg0;
					}
				}
				func = func.caller;
			}
			return null;
		}
		function buttonOver() {
			var evt = getEvent();
			var obj = evt.srcElement || evt.target;
			obj.runtimeStyle.cssText = "background-color:#FFFFFF";
		}

		function buttonOut() {
			var obj = window.event.srcElement;
			window.setTimeout(function() { obj.runtimeStyle.cssText = ""; }, 300);
		}
	</script>
                  <table border="0" cellpadding="0" cellspacing="1" class="Calendar" id="caltable" name="caltable">
                  <thead>
                      <tr align="center" valign="middle">
                      <td colspan="7" class="title"><a href="javaScript:subMonth();" title="上一月" class="DayButton"><%=lang.Get("m_Worktables_last")%></a>
                          <input name="year" id="year" type="text" size="4" maxlength="4" onkeydown="if (event.keyCode==13){setDate()}"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onpaste="this.value=this.value.replace(/[^0-9]/g,'')" />
                         <%=lang.Get("m_Worktables_year")%>
                          <input name="month" id="month" type="text" size="1" maxlength="2" onkeydown="if (event.keyCode==13){setDate()}"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" onpaste="this.value=this.value.replace(/[^0-9]/g,'')" />
                          <%=lang.Get("m_Worktables_month")%> <a href="JavaScript:addMonth();" title="下一月" class="DayButton"><%=lang.Get("m_Worktables_next")%></a></td>
                    </tr>
                      <tr align="center" valign="middle"> 
		<script language="JavaScript">
			document.write("<TD class=\"DaySunTitle\" id=\"diary\" name=\"diary\" >" + days[0] + "</TD>");
			for (var intLoop = 1; intLoop < days.length - 1; intLoop++) {
				document.write("<TD class=\"DayTitle\" id=\"diary\" name=\"diary\">" + days[intLoop] + "</TD>");
			}
			document.write("<TD class=\"DaySatTitle\" id=\"diary\" name=\"diary\" >" + days[intLoop] + "</TD>"); 
		</script> 
                    </tr>
                    </thead>
                  <tbody style="border: 1;" id="calendar" name="calendar" align="CENTER" onclick="getDiary()">
		<script language="JavaScript">
				for (var intWeeks = 0; intWeeks < 6; intWeeks++) {
					document.write("<TR style=\"cursor: hand\">");
					for (var intDays = 0; intDays < days.length; intDays++) document.write("<TD class=\"CalendarTD\" onMouseover=\"buttonOver();\" onMouseOut=\"buttonOut();\"></TD>");
					document.write("</TR>");
				} 
			</script>
                    </tbody>
                </table>
                  <script type="text/javascript">
                      Calendar();
                  </script>
              </td>
            </tr>
            </table></td>
          <td align="right"><table style="width: 100%" class="border">
              <tr align="left">
              <td colspan="2" class="spacingtitle"><asp:Label ID="Label1" runat="server" Font-Bold="True"><%=lang.Get("m_Worktables_memorandum")%></asp:Label></td>
            </tr>
              <tr class="tdbg">
              <td class="tdbgleft" colspan="2" align="left"><asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                  <asp:TextBox ID="TbRemmber" runat="server" TextMode="MultiLine" Rows="11" style="height:138px" Columns="50" AutoPostBack="true" OnTextChanged="AutoSave" class="x_input"></asp:TextBox>
                </ContentTemplate>
                </asp:UpdatePanel>
                  <br />
                  <font color="red">*<%=lang.Get("m_Worktables_prompt")%>:<%=lang.Get("m_Worktables_enter")%><a href="../AddOn/ProjectAffairsCenter.aspx">[<%=lang.Get("m_Worktables_center")%>]</a><%=lang.Get("m_Worktables_exchage")%></font> <br /></td>
            </tr>
            </table></td>
        </tr>
      </table>
      <div class="clearbox"> </div>
      <table width="100%">
        <tr>
          <td style="width: 320px"><table class="border" cellspacing="0" cellpadding="2" width="100%" align="center"  border="0">
              <tr class="title">
              <td height="25" align="left" colspan="2">&nbsp;<b><%=lang.Get("m_Worktables_scan")%></b></td>
            </tr>
              <tr class="sysinfo"  >
              <td><iframe id="showiframe" src="../BrowserCheck.aspx" marginwidth="1" marginheight="1"  scrolling="no" border="0" frameborder="0" width="100%" height="160px"></iframe></td>
            </tr>
            </table></td>
          <td valign="top"><table width="100%" cellpadding="0" cellspacing="1" class="border" border="0">
            <tbody>
            <div id="Div1" runat="server"> </div>
              <tr class="gridtitle" align="center" style="height: 33px">
              <td width="3%"> ID </td>
              <td width="10%"><%=lang.Get("m_Worktables_name")%></td>
              <td width="7%"><%=lang.Get("m_Worktables_type")%></td>
              <td width="5%"><%=lang.Get("m_Worktables_price")%></td>
              <td width="7%"><%=lang.Get("m_Worktables_manager")%></td>
              <td width="6%"><%=lang.Get("m_Worktables_rate")%></td>
              <td width="12%"><%=lang.Get("m_Worktables_time")%></td>
            </tr>
              <asp:Repeater ID="Repeater1" runat="server">
              <ItemTemplate>
                  <tr id='<%#Eval("ID") %>' class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'"  title="双击查看详情" onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id);">
                  <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' Visible="false" />
                      <%# Eval("ID","{0}")%></td>
                  <td><a href="../AddOn/ProjectsDetail.aspx?ProjectID=<%# Eval("ID","{0}")%>"> <%# Eval("Name")%></a></td>
                  <td><%# GetProType(Eval("TypeID","{0}")) %></td>
                  <td><%# GetManageGroup(Eval("Leader","{0}")) == 1 ? Eval("Price", "￥{0}.00") : "******"%>
                      <%--<%# Eval("Price","￥{0}.00")%>--%></td>
                  <td><a href="../AddCRM/ViewCustomer.aspx?FieldName=Person_Add&id=3"><%#GetLeader(Eval("Leader","{0}"))%></a></td>
                  <td><a href='<%#Eval("ID","../AddOn/ProjectsProcesses.aspx?ID={0}") %>'>
                    <div style="width: 90%; border: solid 1px red; height: 5px">
                    <div id="line" runat="server" style="background-color: green; height: 5px; float: left"> </div>
                  </div>
                    </a></td>
                  <td><%# Eval("ApplicationTime")%></td>
                </tr>
                </ItemTemplate>
            </asp:Repeater>
                </tbody>              
            </table></td>
        </tr>
      </table>
    </form>
</body>
</html>