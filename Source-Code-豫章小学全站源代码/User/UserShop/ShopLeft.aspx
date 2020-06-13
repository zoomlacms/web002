<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ShopLeft, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("u_ShopLeft_nav")%></title>
<link href="../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css" />
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript" src="../../JS/UserDefault.js"></script>
</head>
<body class="user_left">
<div class="left_font"  onclick=" usershow('#td1','#span1')" >
<span id="span1" class="imgbgover img_icon" onclick="usershow('#td1','#span1')" ></span>
<%=lang.Get("u_ShopLeft_manage")%></div>
<ul  id="td1" class="tabtr">
<li> <a href="../../Space/SpaceManage.aspx" target="main_right" runat="server" id="a4"><%=lang.Get("u_ShopLeft_aggregate")%></a>  </li>
<li><a href="" target="main_right" runat="server" id="a1"><%=lang.Get("u_ShopLeft_home")%></a>  </li>
<li><a href="" target="main_right" runat="server" id="a2"><%=lang.Get("u_ShopLeft_list")%></a>  </li>
<li><a href="" target="main_right" runat="server" id="a3"><%=lang.Get("u_ShopLeft_content")%></a>  </li>
</ul>

<div class="left_font" onclick="usershow('#td2','#span2')" > 
<span id="span2" class="imgbgout img_icon" onclick="usershow('#td2','#span2')" ></span>
<%=lang.Get("u_ShopLeft_user")%></div>
<ul id="td2" class="tabtr">
<li><a href="/User/Content/MyFavori.aspx?type=1" target="main_right" runat="server" id="a5"><%=lang.Get("u_ShopLeft_contentcollect")%></a></li>
<li><a href="/User/Content/MyFavite_Shop.aspx?type=2" target="main_right" runat="server" id="a6"><%=lang.Get("u_ShopLeft_goods")%></a></li>
<li><a href="/User/Content/MyFavite_UserShop.aspx?type=3" target="main_right" runat="server" id="a7"><%=lang.Get("u_ShopLeft_shop")%></a></li>
</ul>
</body>
</html>