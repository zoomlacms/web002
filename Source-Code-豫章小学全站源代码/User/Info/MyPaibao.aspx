<%@ page language="C#" autoeventwireup="true" inherits="User_Info_MyPaibao, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<span  id="YourPosition"><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a><&gt;&gt; <a title="会员中心"  href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a> &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; 我的收益信息</span></span> </div>
  <div class="us_seta" style="margin-top: 10px; float: left; width: 100%" id="manageinfos"
        runat="server">
    <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
  </div>
  <div class="us_seta" style="margin-top: 10px; float: left; width: 100%" id="manageinfo"  runat="server">
    <h1 style="text-align: center">购买拍宝</h1>
    <div style="text-align: center; vertical-align: middle;width:100%;margin-left:10px">
      <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <div style="float:left;padding:20 20px 20px 20px; margin-left:20px" ><span><img src="/<%#Eval("Timg") %>" /></span>
            <div>
              <input name="rboBuy" value='<%#Eval("ID") %>' type="radio" />
              ¥<%#Eval("Tform")%></a></div>
          </div>
        </ItemTemplate>
      </asp:Repeater>
    </div>
  </div>
  <div style="display:block;border:#CCC 1px solid;margin-top:10px;">
    <div style="margin-left:20px">支付方式：
      <asp:DropDownList  ID="ddPayplat" runat="server"></asp:DropDownList>
    </div>
    <div style="width:100%;text-align:center;" align="center">
      <asp:Button ID="btn"   runat="server" Text="充值" onclick="btn_Click" />
    </div>
  </div>
</form>
</body>
</html>