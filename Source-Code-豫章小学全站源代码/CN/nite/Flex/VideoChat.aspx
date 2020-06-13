<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Flex_VideoChat, App_Web_matkfxrg" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="history/history.css" />
    <title>视频面试房间</title>
    <script src="AC_OETags.js" language="javascript"></script>
<script src="history/history.js" language="javascript"></script>

<style>
body { margin: 0px; overflow:hidden }
</style>
<script language="JavaScript" type="text/javascript">
var requiredMajorVersion = 9;
var requiredMinorVersion = 0;
var requiredRevision = 124;
</script>
</head>

<body scroll="no">
<script language="JavaScript" type="text/javascript">
<!--
var hasProductInstall = DetectFlashVer(6, 0, 65);
var hasRequestedVersion = DetectFlashVer(requiredMajorVersion, requiredMinorVersion, requiredRevision);

if ( hasProductInstall && !hasRequestedVersion ) {
	var MMPlayerType = (isIE == true) ? "ActiveX" : "PlugIn";
	var MMredirectURL = window.location;
    document.title = document.title.slice(0, 47) + " - Flash Player Installation";
    var MMdoctitle = document.title;

	AC_FL_RunContent(
		"src", "playerProductInstall",
		"FlashVars", "MMredirectURL="+MMredirectURL+'&MMplayerType='+MMPlayerType+'&MMdoctitle='+MMdoctitle+"",
		"width", "760",
		"height", "600",
		"align", "middle",
		"id", "VideoChat",
		"quality", "high",
		"bgcolor", "#869ca7",
		"name", "VideoChat",
		"allowScriptAccess","sameDomain",
		"type", "application/x-shockwave-flash",
		"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
} else if (hasRequestedVersion) {
	AC_FL_RunContent(
			"src", "VideoChat<%=geturl%>",
			"width", "760",
			"height", "600",
			"align", "middle",
			"id", "VideoChat",
			"quality", "high",
			"bgcolor", "#869ca7",
			"name", "VideoChat",
			"allowScriptAccess","sameDomain",
			"type", "application/x-shockwave-flash",
			"pluginspage", "http://www.adobe.com/go/getflashplayer"
	);
  } else { 
    var alternateContent = 'Alternate HTML content should be placed here. '
  	+ 'This content requires the Adobe Flash Player. '
   	+ '<a href=http://www.adobe.com/go/getflash/>Get Flash</a>';
    document.write(alternateContent);
  }
// -->
</script>



    <form id="form1" runat="server">
    <div>
    <noscript>
  	<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			id="VideoChat" width="760" height="600"
			codebase="http://fpdownload.macromedia.com/get/flashplayer/current/swflash.cab">
			<param name="movie" value="VideoChat.swf" />
			<param name="quality" value="high" />
			<param name="bgcolor" value="#869ca7" />
			<param name="allowScriptAccess" value="sameDomain" />
			<embed src="VideoChat.swf" quality="high" bgcolor="#869ca7"
				width="760" height="600" name="VideoChat" align="middle"
				play="true"
				loop="false"
				quality="high"
				allowScriptAccess="sameDomain"
				type="application/x-shockwave-flash"
				pluginspage="http://www.adobe.com/go/getflashplayer">
			</embed>
	</object>
</noscript>
    </div>
    </form>
</body>
</html>
