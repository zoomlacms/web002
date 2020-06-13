<%@ page language="C#" autoeventwireup="true" inherits="User_Sera_shopLeft, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_Sera_shopLeft_mallNav")%></title>
<link href="../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script src="../js/UserDefault.js" type="text/javascript"></script>
</head>
<body class="user_left">
<form id="form1" runat="server">
  <div class="left_font" onclick="usershow('#td1','#span1')">
  <span id="span1" class="imgbgover img_icon" onclick="usershow('#td1','#span1')" ></span>
  <%=lang.Get("u_Sera_shopLeft_mallManage")%></div>
<ul id="td1" class="tabtr">
<li><a href="GroupList.aspx?start=true" target="main_right"><%=lang.Get("u_Sera_shopLeft_groupOrder")%></a></li>
<li><a href="Info/DredgeVip.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_VIP")%></a></li>
<li><a href="BossInfo/NodeTree.aspx"target="main_right"><%=lang.Get("u_Sera_shopLeft_franchisee")%></a></li>
<li><a href="BossInfo/MeInfo.aspx"target="main_right"><%=lang.Get("u_Sera_shopLeft_joinInfo")%></a></li>
<li><a href="PreViewOrder.aspx?menu=Orderinfo"target="main_right" ><%=lang.Get("u_Sera_shopLeft_purchase")%></a></li>
</ul>

<div class="left_font"  onclick="usershow('#td2','#span2')">
<span id="span2" class="imgbgout img_icon" onclick="usershow('#td2','#span2')" ></span>
<%=lang.Get("u_Sera_shopLeft_store")%></div>
<ul id="td2" class="tabtr">
    <li><a href="UserShop/Default.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_shop")%></a></li>
    <li><a href="Profile/OrderManage.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_orders")%></a></li>
    <li><a href="Profile/Default.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_rebate")%></a></li>
    <li><a href="Profile/PointRecord.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_points")%></a></li>
    <li><a href="Profile/ExChangeRecord.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_exchange")%></a></li>
    <li><a href="Profile/Accountinfo.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_setting")%></a></li>
    <li><a href="siteManage/Default.aspx" target="_blank"><%=lang.Get("u_Sera_shopLeft_promote")%></a></li>
    <li><a href="producter/ProducterManage.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_sell")%></a></li>
    <li><a href="UserShop/Pay_View.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_platform")%></a></li>
    <li><a href="UserShop/Pay_List.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_records")%></a></li>
    <li><a href="PrintServer/ImageList.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_works")%></a></li>
</ul>
<div class="left_font"  onclick="usershow('#td3','#span3')" >
<span id="span3" class="imgbgout img_icon" onclick="usershow('#td3','#span3')" ></span><%=lang.Get("u_Sera_shopLeft_money")%></div>

<ul id="td3" class="tabtr">
<li><a href="PromotUnion/Default.aspx" target="_blank" ><%=lang.Get("u_Sera_shopLeft_scheme")%></a></li>
<li><a href="PromotUnion/userunioninviteview.aspx" target="main_right"><%=lang.Get("u_Sera_shopLeft_moneyRecors")%></a></li>

</ul>
<div class="left_font" onclick="usershow('#td4','#span4')">
<span id="span4"  class="imgbgout img_icon" onclick="usershow('#td4','#span4')"></span><%=lang.Get("u_Sera_shopLeft_auction")%></div>

<ul id="td4" class="tabtr">
<li>
<a href="BidManage/Default.aspx?type=0"target="main_right"><%=lang.Get("u_Sera_shopLeft_isAuction")%></a></li>
<li><a href="BidManage/BidEnd.aspx?type=0"target="main_right"><%=lang.Get("u_Sera_shopLeft_success")%></a></li>
<li> <a href="BidManage/Bidpaul.aspx?type=1"target="main_right" ><%=lang.Get("u_Sera_shopLeft_guarante")%></a></li>
<li><a href="BidManage/Bidpaul.aspx?type=2" target="main_right" ><%=lang.Get("u_Sera_shopLeft_giveUp")%></a></li>
</ul>

<div class="left_font" onclick="usershow('#td5','#span5')">
<span  id="span5" class="imgbgout img_icon" onclick="usershow('#td5','#span5')"></span>
<%=lang.Get("u_Sera_shopLeft_experience")%></div>
<ul id="td5" class="tabtr">
<li><a href="BidManage/Default.aspx?type=1"target="main_right"><%=lang.Get("u_Sera_shopLeft_isAuction")%></a></li>
<li> <a href="BidManage/BidEnd.aspx?type=1" target="main_right"><%=lang.Get("u_Sera_shopLeft_success")%></a></li>
</ul>

</form>
</body>
</html>