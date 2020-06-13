<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_AddVideo, App_Web_af1nmhqd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>视频上传</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="us_topinfo">
        <div class="us_showinfo">
                您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                        &gt;&gt; </span><span><a href="AddVideo.aspx" >视频管理</a></span>  &gt;&gt;<span> 视频上传</span></span>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <div class="clearbox">
    </div>
    
    <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <span>
                    <asp:Label ID="txtTitle" runat="server" Text="视频上传"></asp:Label></span>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22"  align="right" valign="top">
                <strong>上传文件：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22"  align="right" valign="top">
                <strong>视频名称：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="txtVn" runat="server" Width="224px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVn" runat="server" ErrorMessage="视频名称必填" ControlToValidate="txtVn"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22"  align="right" valign="top">
                <strong>视频描述：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="txtVd" runat="server" TextMode="MultiLine" Width="224px" Height="70px"></asp:TextBox>
            </td>
        </tr>
        <tr class="WebPart">
            <td>
            </td>
            <td height="22" valign="middle">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpload" runat="server" Width="70px" OnClick="btnUpload_Click" Text="提  交" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
