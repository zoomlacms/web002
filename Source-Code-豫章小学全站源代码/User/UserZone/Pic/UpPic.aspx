<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.UserZone.Pic.UpPic, App_Web_5xyov11s" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>上传相片</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_blank">会员中心</a> &gt;&gt; <a title="我的相册" href='<%=ResolveUrl("~/User/UserZone/Pic/CategList.aspx")%>'>我的相册</a>&gt;&gt;上传相片
</div>
    <uc1:webusercontroltop id="WebUserControlTop1" runat="server"> </uc1:webusercontroltop>
    <br />
    <table width="760px" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><h2> 上传相片<%=name %></h2></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr style="height: 40px">
              <td rowspan="2"> 你可以上传JPG，JPEG，<br />
                GIF，PNG或BMP文件，<br />
                每个文件大小可以到3M。 </td>
              <td><input id="UpPic1" type="file" runat="server" /></td>
            </tr>
            <tr style="height: 40px">
              <td><input id="UpPic2" type="file" runat="server" /></td>
            </tr>
            <tr style="height: 40px">
              <td rowspan="4"> 你需要对你上传的内容负责，<br />
                请勿上传未经授权、涉及他人<br />
                隐私、色情、暴力血腥及违反<br />
                国家法律法规的照片或图片。 </td>
              <td><input id="UpPic3" type="file" runat="server" /></td>
            </tr>
            <tr style="height: 40px">
              <td><input id="UpPic4" type="file" runat="server" /></td>
            </tr>
            <tr style="height: 40px">
              <td><input id="UpPic5" type="file" runat="server" /></td>
            </tr>
            <tr style="height: 40px">
              <td align="center"><asp:Button ID="Button1" runat="server" Text="上  传" OnClick="Button1_Click" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="取  消" OnClick="Button2_Click" /></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>