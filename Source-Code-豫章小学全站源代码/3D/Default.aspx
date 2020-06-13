<%@ page language="C#" autoeventwireup="true" inherits="_3D_Default, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<meta http-equiv="content-type" content="text/html; charset=GB2312" />
<title> 3D 展厅</title>
<style>
    *{-moz-user-select:none;}
	*{cursor:default;}
    li{list-style-type:none;}
    body{
		background:url('/Images/style3D/bg.jpg');
		margin:0px;
		padding:0px;
		overflow:hidden;
		text-align:left;
		font:normal 12px Arial,宋体;}
    body > div{
		margin-right:auto;
		margin-left:auto;}
    #smenu{
		position:absolute;
		overflow: hidden;
		filter:alpha(Opacity=60,style=0);
		opacity:0.6;
		height:30px;
		width:100%;
		left:0px;
		bottom:-1px;
		background:url('/Images/style3D/menubg.jpg');
		padding:0px;
		padding-left:3px;}
    .Menu{
		margin-top:2px;
		float:left;
		margin-right:4px;
		color:#fff;
		overflow:hidden;
		cursor:pointer;
		background:url('/Images/style3D/Menu.gif');
		height:27px;
		width:116px;
		border:0;
		padding-top:6px !important;
		padding-top:6px;
		text-align:center;}
    .win{
		position:absolute;
		overflow:hidden;
		padding: 0px;}
    .wmin{
		position:absolute;
		background:url('/Images/style3D/c.gif');
		top:8px !important;
		overflow: hidden;
        width: 26px;
        height: 17px;
        top: 7px;
        right: 82px;}
    .wmax{
        position:absolute;
        background:url('/Images/style3D/c.gif') -26px;
        top:8px !important;
        overflow:hidden;
        width:24px;
        height:17px;
        top:7px;
        right:58px;}
    .wclo{
        position:absolute;
        background:url('/Images/style3D/c.gif') -50px;
        top:8px !important;
        overflow:hidden;
        width:43px;
        height:17px;
        top:7px;
        right:15px;}
    .tie{
        overflow:hidden;
        height:30px;
        width:100%;}
    .boy{
        overflow:hidden;
        width:100%;}
    .bom{
        overflow:hidden;
        height:30px;
        width:100%;}
    .ChatMenu{
        float:left;
        margin-right:4px;
        margin-left:4px;
        margin-top:2px;
        color:#fff;
        overflow:hidden;
        cursor:pointer;
        background:url('/Images/style3D/button.gif');
        height:20px;
        width:59px;
        border:0;
        padding-top:6px !important;
        padding-top:6px;
        text-align:center;
        z-index:4;}
</style>
</head>
<script type="text/javascript" src="/Images/style3D/fun.js"></script>
<script type="text/javascript" src="/JS/ajaxrequest.js"></script>
<script type="text/javascript" src="/JS/Defaulefile.js"></script>
<body scroll="no" oncontextmenu="return false" ondragstart="return false" onselectstart="return false" onkeydown="keydown()">
    <form id="formpage" runat="server" >
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
            <div id="smenu" style="z-index: 2 ">
                <div class="Menu" onclick="showwin();" onmouseover="SetBg(this,'menu1','000')" onmouseout="SetBg(this,'menu','fff')" id="naa">登 陆</div> <div class="ChatMenu" id="quitdiv" onclick="closewindow()" onmouseover="SetBg(this,'button1','000')"
                    onmouseout="SetBg(this,'button','fff')" style="float: right; display: none; margin-right: 6px">退 出</div>
                <div class="Menu" id="butclosechat" onclick="closechat()" onmouseover="SetBg(this,'menu1','000')"
                    onmouseout="SetBg(this,'menu','fff') " style="display: none">隐藏窗口</div>
                <div class="Menu" id="butshowchat" onclick="showchat()" onmouseover="SetBg(this,'menu1','000')"
                    onmouseout="SetBg(this,'menu','fff') " style="display: none">打开新窗口</div>
            </div>
            <div id="sright" runat="server">
				<iframe scrolling="no" frameborder="0" src='<%=html %>' width="100%" height="726px"></iframe>          
            </div>            
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>