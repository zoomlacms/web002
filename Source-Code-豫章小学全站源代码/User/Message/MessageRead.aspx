<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.MessageRead, App_Web_4fbteau0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>阅读短消息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />    
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="短消息管理" href="/User/Message/MessageRead.aspx">阅读短信</a>
</div>

<div class="us_topinfo">
<ul>
<li><a href="MessageSend.aspx">写短消息</a></li>
<li><a href="Message.aspx">收件箱</a></li>
<li><a href="MessageOutbox.aspx">发件箱</a></li>
<li><a href="MessageDraftbox.aspx">草稿箱</a></li>
<li><a href="MessageGarbagebox.aspx">垃圾箱</a></li>
<li><a href="mobile.aspx">手机短信</a></li>
</ul>
</div>

<div style="margin-top:10px;">
		  <div class="us_seta" style="margin-top:5px;">
			  <h1><div align="center">会员短消息</div></h1>
              <li style="width:15%; float:left;line-height:30px">
                <div align="right">发件人：</div>
              </li>
            <li style="width:83%;line-height:30px"><asp:Label ID="LblSender" runat="server" Text="Label"></asp:Label></li>
              <li style="width:15%; float:left;line-height:30px">
                <div align="right">收件人：</div>
              </li>
            <li style="width:83%;line-height:30px"><asp:Label ID="LblIncept" runat="server" Text="Label"></asp:Label></li>
            <li style="width:15%; float:left;line-height:30px">
            	<div align="right">短消息主题：</div>
            </li>
            <li style="width:83%;line-height:30px">
            <asp:Label ID="LblTitle" runat="server" Text="Label"></asp:Label>
            </li>
            <li style="width:15%; float:left;line-height:30px">
            	<div align="right">发送时间：</div>
            </li>
           	<li style="width:83%;line-height:30px"><asp:Label ID="LblSendTime" runat="server" Text="Label"></asp:Label>
        	</li>
            <li style="width:15%; float:left;line-height:30px">
            	<div align="right">短消息内容：</div>
            </li>
           	<li style="width:83%;line-height:30px"><asp:Label ID="LblContent" runat="server" Text="Label"></asp:Label>
        	</li>
            <li style="width:100%; float:left;line-height:30px">
                   <div align="center">
               <asp:Button ID="BtnDelete" runat="server" Text="删除" class="C_input" OnClick="BtnDelete_Click" OnClientClick="return confirm('是否要删除此短消息？')" />
                <asp:Button ID="BtnReply" runat="server" Text="回复" class="C_input" OnClick="BtnReply_Click" Visible="false" />
                    </div>
            </li>
            <li style="width:100%; float:left;line-height:30px">
                <div align="center">
                </div>
            </li>
		  </div>
</form>
</body>
</html>