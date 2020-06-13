<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_Content, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title></title>
</head>
<frameset id="bottomframes" framespacing="0" border="false" cols="190,*" frameborder="0" scrolling="yes">
	<frame id="content_left" name="main_left" scrolling="auto" marginwidth="0" marginheight="0" src='NodeTree.aspx?nid=<%=Request.QueryString["nid"] %>' noresize />
	<frame id="content_right" name="main_right" scrolling="auto" src="">
</frameset>
<body>
    <form id="form1" runat="server">
    </form>
</body>
</html>
