<%@ page language="C#" autoeventwireup="true" inherits="UserReg_Move4, App_Web_ld40vqjm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlUserInfoTop.ascx" TagName="WebUserControlUserInfoTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>个人信息管理</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" target="_parent" href='<%=ResolveUrl("~/User/Default.aspx")%>'>会员中心</a>&gt;&gt;上传照片 
</div>
    <div>
      <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
      <uc1:WebUserControlUserInfoTop ID="WebUserControlUserInfoTop1" runat="server" />
    </div>
    <br />
    <div class="us_topinfo" style="overflow: hidden; width:98%">
      <table width="100%" height="625" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td colspan="2"> * 照片必须为BMP，JPG，PNG或GIF格式 </td>
              </tr>
              <tr>
                <td colspan="2" align="center"><table>
                    <tr>
                      <td align="center"><strong>形象照片：</strong></td>
                    </tr>
                    <tr>
                      <td align="center"><asp:Image ID="imgHead" ImageUrl="~/Images/" Width="100" Height="105" runat="server" /></td>
                    </tr>
                    <tr>
                      <td><input id="File1" runat="server" type="file" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="上 传" OnClick="Button1_Click" /></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td align="center"><table>
                    <tr>
                      <td align="center"><strong>生活照片 1：</strong></td>
                    </tr>
                    <tr>
                      <td align="center"><asp:Image ID="imgPic1" ImageUrl="~/Images/profile_001.jpg" Width="225" Height="160px" runat="server" /></td>
                    </tr>
                    <tr>
                      <td><input id="File2" runat="server" type="file" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="上 传" OnClick="Button2_Click" Style="height: 26px" /></td>
                    </tr>
                  </table></td>
                <td align="center"><table>
                    <tr>
                      <td align="center"><strong>生活照片 2：</strong></td>
                    </tr>
                    <tr>
                      <td align="center"><asp:Image ID="imgPic2" Width="225" ImageUrl="~/Images/profile_001.jpg" Height="160px" runat="server" /></td>
                    </tr>
                    <tr>
                      <td><input id="File3" runat="server" type="file" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="上 传" OnClick="Button3_Click" /></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td align="center"><table>
                    <tr>
                      <td align="center"><strong>生活照片 3：</strong></td>
                    </tr>
                    <tr>
                      <td align="center"><asp:Image ID="imgPic3" ImageUrl="~/Images/profile_001.jpg" Width="225" Height="160px"  runat="server" /></td>
                    </tr>
                    <tr>
                      <td><input id="File4" runat="server" type="file" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="上 传" OnClick="Button4_Click" /></td>
                    </tr>
                  </table></td>
                <td align="center"><table>
                    <tr>
                      <td align="center"><strong>生活照片 4：</strong></td>
                    </tr>
                    <tr>
                      <td align="center"><asp:Image ID="imgPic4" ImageUrl="~/Images/profile_001.jpg" Width="225" Height="160px" runat="server" /></td>
                    </tr>
                    <tr>
                      <td><input id="File5" runat="server" type="file" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="上 传" OnClick="Button5_Click" /></td>
                    </tr>
                  </table></td>
              </tr>
              <tr>
                <td colspan="2"><asp:Label ID="errLabel" runat="server" ForeColor="Red"></asp:Label></td>
              </tr>
              <tr>
                <td colspan="2" align="center">&nbsp;
                  <asp:Button ID="nextButton" runat="server" Text="提  交" OnClick="nextButton_Click1" /></td>
              </tr>
            </table></td>
        </tr>
      </table>
  </div>
</form>
</body>
</html>