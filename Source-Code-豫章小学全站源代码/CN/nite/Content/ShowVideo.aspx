<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_ShowVideo, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>视频预览</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="us_topinfo">
        <div class="us_showinfo">
            <h1>
                <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                        &gt;&gt; </span><span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>  &gt;&gt;<span> 视频预览</span></span>
            </h1>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
    <tr align="center">
    <td><%=title %></td>
    </tr>
    <tr align="center" id="uptr" runat="server">
    <td>【<a href="AddVideo.aspx?ID=<%=Request.QueryString["ID"] %>" style="color:Red">修改</a>】</td>
    </tr>
    <tr align="center">
    <td><%=content %></td>
    </tr>
    <tr align="center">
    <td><iframe src="<%=url %>" width="600px" height="400px"></iframe></td>
    </tr>
    </table>
  
    </form>
</body>
</html>
