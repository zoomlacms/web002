<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_ChitChat, App_Web_b1vdkvuv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>蒙面聊</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a> 
</div>
    <uc1:WebUserControlTop id="WebUserControlTop1" runat="server">
    </uc1:WebUserControlTop>
    <div class="us_topinfo" style="margin-top:10px;">
    <iframe id="ifd" src="../../Zone/ChatStart.aspx?id=1" height="500px" width="100%" ></iframe>
    </div>
</form>
</body>
</html>