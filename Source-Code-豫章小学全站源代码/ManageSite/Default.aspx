<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Default, App_Web_irw3wdiw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=type %>后台管理主页</title>
<link rel="stylesheet" href="Style/style.css" type="text/css" />
<link rel="stylesheet" href="Style/Blue_style.css" type="text/css" />
<script>
function changeDisplayMode(){
	if(document.getElementById("bottomframes").cols=="190,7,*"){
		document.getElementById("bottomframes").cols="0,7,*";
		document.getElementById("separator").contentWindow.document.getElementById('ImgArrow').src = "/ManageSite/Images/separator2.gif";
	}else{
		document.getElementById("bottomframes").cols="190,7,*"
		document.getElementById("separator").contentWindow.document.getElementById('ImgArrow').src = "/ManageSite/Images/separator1.gif";
	}
}  
</script>
</head>
<frameset id="mainframes" framespacing="0" border="false" rows="68,*" frameborder="0" scrolling="yes">
  <frame name="top" scrolling="no" src="Guide/top.aspx?nid=<%=GetSID() %>">
  <frameset id="bottomframes" framespacing="0" border="false" cols="190,7,*" frameborder="0" scrolling="yes">
    <frame id="site_left" name="site_left" scrolling="auto" marginwidth="0" marginheight="0" src="Guide/SiteNodeListGuide.aspx?nid=<%=GetSID() %>" noresize />
    <frame id="separator" name="separator" src="Guide/separator.aspx?nid=<%=GetSID() %>" noresize scrolling="no" />
    <frame name="site_right" scrolling="auto" src="Main.aspx?nid=<%=GetSID() %>">
  </frameset>
</frameset>
<noframes>
</noframes>
<body id="Indexbody">
</body>
</html>