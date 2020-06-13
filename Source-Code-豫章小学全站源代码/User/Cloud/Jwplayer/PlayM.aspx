<%@ page language="C#" autoeventwireup="true" inherits="User_Cloud_Jwplayer_PlayM, App_Web_z3yctpan" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>视频播放</title>
    <script src="jwplayer.js" type="text/javascript"></script>
    <style type="text/css">
    *{margin:0;padding:0}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
    <!-- START OF THE PLAYER EMBEDDING TO COPY-PASTE -->
	<div id="mediaplayer" ></div>
	<script type="text/javascript">
	    jwplayer("mediaplayer").setup({
	        flashplayer: "player.swf",
	        file: "/UploadFiles/<%=loginName %>/" + encodeURIComponent('<%=Request.QueryString["MeUrl"] %>'),
            autostart:true
	    });
	</script>
	<!-- END OF THE PLAYER EMBEDDING -->
    </center>
    </form>
</body>
</html>