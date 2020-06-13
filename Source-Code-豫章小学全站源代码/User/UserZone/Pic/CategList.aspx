<%@ page language="C#" autoeventwireup="true" inherits="CategList, App_Web_5xyov11s" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的相册</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx") %>' target="_blank"> 会员中心</a>&gt;&gt; 我的相册
</div>
  <div>
    <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server"></uc1:WebUserControlTop>
  </div>
  <br />
  <div class="us_topinfo" style="overflow: hidden; width: 98%">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><h2>我的相册</h2></td>
      </tr>
      <tr>
        <td style="height: 50px"><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td style="width: 561px"> 可以有自己的相册来存放照片了，你可以从<a href="AddPicCateg.aspx">创建一个相册</a>开始 </td>
              <td><a href="AddPicCateg.aspx">
                <asp:Image ID="Image2" runat="server" ImageUrl="../Images/FoundCateg.jpg" />
                </a></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td><%=content%>
          <asp:DataList ID="dltCategList" runat="server" RepeatColumns="4">
            <ItemTemplate>
              <table>
                <tr>
                  <td align="center"><a href="PicTureList.aspx?CategID=<%#DataBinder.Eval(Container.DataItem,"ID")%>">
                    <asp:Image ID="Image1" runat="server" Width="139px" Height="106px" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "TitlePIcUrl")%>' />
                    </a></td>
                </tr>
                <tr>
                  <td align="center"><a href='PicTureList.aspx?CategID=<%#DataBinder.Eval(Container.DataItem,"ID")%>'> <%#DataBinder.Eval(Container.DataItem, "PicCategTitle")%> </a></td>
                </tr>
              </table>
            </ItemTemplate>
          </asp:DataList></td>
      </tr>
      <tr>
        <td align="center"><li style="height: 30px; text-align: center">共
            <asp:Label ID="Allnum" runat="server"
                        Text=""></asp:Label>
            &nbsp;
            <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
            <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
            页次：
            <asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>
            /
            <asp:Label ID="PageSize"
                            runat="server" Text=""></asp:Label>
            页
            <asp:Label ID="pagess" runat="server" Text=""></asp:Label>
            个/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
            页</li></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>