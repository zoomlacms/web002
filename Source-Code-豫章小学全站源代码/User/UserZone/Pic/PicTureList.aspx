<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.UserZone.Pic.PicTureList, App_Web_5xyov11s" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的相册</title>
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label  ID="LblSiteName" runat="server" Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx")%>' target="_blank">会员中心</a>&gt;&gt; <a title="我的相册" href='<%=ResolveUrl("~/User/UserZone/Pic/CategList.aspx")%>'>我的相册</a>&gt;&gt;<%=CategName %>相片列表
</div>
  <uc1:WebUserControlTop id="WebUserControlTop1" runat="server"> </uc1:WebUserControlTop>
  <br />
  <table style="width: 760px" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td><h2><%=UserName %>的相册<%=CategName %></h2></td>
    </tr>
    <tr>
      <td align="right"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><%=type %></td>
            <td align="right" style="width: 300px;"><asp:Panel ID="Panel1" runat="server" Height="12px" Width="300px">
                >
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="false">删除相册</asp:LinkButton>
                &nbsp;&nbsp; ><a href='EditCateg.aspx?CategID=<%=categid%>'> 修改相册信息</a> &nbsp;&nbsp;> <a href='UpPic.aspx?CategID=<%=categid %>'>添加照片</a> &nbsp;&nbsp;
                </asp:Panel></td>
            <td style="width: 130px;">&gt; <a href='CategList.aspx?intervieweeID=<%=UserID%>'>返回<%=UserName %>的相册首页</a></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td><asp:DataList ID="dltPicList" Width="760px" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
          <ItemTemplate>
            <table>
              <tr>
                <td align="center"><a href='ShowPic.aspx?picID=<%#DataBinder.Eval(Container.DataItem,"ID") %>&where=2'>
                  <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"PicUrl")%>' />
                  </a></td>
              </tr>
              <tr>
                <td align="center"><a href='ShowPic.aspx?picID=<%#DataBinder.Eval(Container.DataItem,"ID") %>&where=2'> <%# DataBinder.Eval(Container.DataItem,"PicName")%> </a></td>
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
          <asp:Label ID="PageSize"  runat="server" Text=""></asp:Label>
          页
          <asp:Label ID="pagess" runat="server" Text=""></asp:Label>
          个/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
          页</li></td>
    </tr>
  </table>
</form>
</body>
</html>