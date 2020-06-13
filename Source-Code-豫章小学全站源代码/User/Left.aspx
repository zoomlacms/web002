<%@ page language="C#" autoeventwireup="true" inherits="User_Left, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_Left_funNav")%></title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript"></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
<div class="left_font"  onclick="usershow('#td1','#span1')">
<span id="span1" class="imgbgover img_icon" onclick=" usershow('#td1','#span1')" ></span><%=lang.Get("u_info")%></div>
<ul id="td1" class="tabtr">
<li><a href="Info/UserInfo.aspx" target="main_right"><%=lang.Get("u_Left_accoutinfo")%></a></li>
<li><a href="CashCoupon/ArriveManage.aspx" target="main_right"><%=lang.Get("u_Left_list")%></a></li>
<li> <a href="CashCoupon/ArriveJihuo.aspx" target="main_right"><%=lang.Get("u_Left_activate")%></a></li>
<li><a href="ConstPassen.aspx" target="main_right"><%=lang.Get("u_Left_fre")%></a></li>
<li><a href="info/UserRecei.aspx" target="main_right"><%=lang.Get("u_Left_address")%></a></li>
<li><a href="info/UserDay.aspx" target="main_right"><%=lang.Get("u_Left_remind")%></a></li>
<li><a href="info/MyGetMoney.aspx" target="main_right"><%=lang.Get("u_Left_income")%></a></li>
<li><a href="info/MtrlsMrktng.aspx" target="main_right"><%=lang.Get("u_Left_pro")%></a></li>
<li><a href="info/AdPlan.aspx" target="main_right"><%=lang.Get("u_Left_plan")%></a></li>
<li><a href="info/AdPlan.aspx" target="main_right"><%=lang.Get("u_Left_plan")%></a></li>
</ul>

<div class="left_font" onclick="usershow('#td4','#span4')"> 
<span id="span4"  class="imgbgout img_icon"  onclick="usershow('#td4','#span4')"></span><%=lang.Get("u_Left_subNav")%></div>
<ul id="td4"  class="tabtr">
<li> <a href="MySubscription.aspx" target="main_right"><%=lang.Get("u_Left_subs")%></a></li>
<li><a href="BidList.aspx?type=myBid"target="main_right"><%=lang.Get("u_Left_bid")%></a></li>
<li><a href="BidList.aspx?type=myJoin"target="main_right"><%=lang.Get("u_Left_par")%></a></li>
<li><a href="BidList.aspx?type=settlement"target="main_right" ><%=lang.Get("u_Left_settle")%></a></li>
<li><a href="../Questions/Default.aspx" target="main_right" ><%=lang.Get("u_Left_goup")%></a></li>
</ul>
</form>
</body>
</html>