<%@ page language="C#" autoeventwireup="true" inherits="User_VideoChat_TopPage, App_Web_gvgo405v" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html> 
<html>
<head runat="server">
<title>TopPage</title>
<link rel="stylesheet" type="text/css" href="css/global.css" />
</head>
<body>  
<div id="top">
<div id="myinfo">  
<asp:Image ID="imgUserPic" runat="server" Width="67" Height="67" ImageAlign="Middle" class="face" /><p>
<asp:Label ID="lblUserName" runat="server" Text="" /> <span id="uonline" class="u_online">在线 <img src="images/skin/1/sel_down.gif" /></span> <br>
<span class="u_msg">（0）</span><span class="u_purse"></span><span> <a href="/user/" target="_blank">会员中心</a></span></p>
</div>
<div id="s_nav">
<ul>
<li class="home"><a href="#"><span></span></a></li>
<li class="video"><a href="#"><span></span></a></li>
<li class="shop"><a href="#"><span></span></a></li>
<li class="message"><a href="#"><span></span></a></li>
<li class="order"><a href="#"><span></span></a></li>
<li class="exit"><a href="<%=ResolveUrl("~/User/logout.aspx") %>" style="color: White"></a></li>
</ul>
</div>
</div>
</body>
</html>