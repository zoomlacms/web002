<%@ page language="C#" autoeventwireup="true" inherits="User_Info_DredgeVip, App_Web_ozaqwyfa" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../../App_Themes/UserThem/bidding.css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.R_input { background: url(../Images/bar01.gif) repeat-x scroll center; margin: 2px; overflow: visible; border: 1px solid #FFF; cursor: pointer; padding-top: 3px; padding-left: 13px; padding-right: 14px; padding-bottom: 3px; color: #FFF; font-weight: bold; }
.R_input:hover { background: url(../images/bar02.gif) repeat-x scroll center; border: 1px solid #aaaaaa; }
.U_input { border: 1px solid #aaaaaa; height: 18px; }
.U_input:hover { background: #FFFFD8; }
#Nametxt { border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; border-color: #8762D5; }
</style>
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo">
    <div class="us_pynews">
      您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent">
        <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
        </a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_blank">会员中心</a></span> &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span>VIP信息</span>
    </div>
    <div class="cleardiv"> </div>
  </div>
  <div class="us_seta" id="manageinfos" runat="server" style="height: 25px;">
    <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
  </div>
  <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
    <h1 style="text-align: center"> VIP信息</h1>
    <div style="text-align: center; vertical-align: middle;">
      <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server"> <br />
          VIP号：&nbsp;
          <asp:TextBox ID="txtVIP" runat="server" Width="200px" CssClass="U_input"></asp:TextBox>
          <br />
          <br />
          密 码：&nbsp;
          <asp:TextBox ID="txtPas" runat="server" Width="200px" TextMode="Password" CssClass="U_input"></asp:TextBox>
          <br />
          <br />
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="开通VIP" CssClass="i_bottom" />
          <br />
        </asp:View>
        <asp:View ID="View3" runat="server"> <br />
          你的VIP卡以开通号：&nbsp;
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          <br />
          <br />
          <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </asp:View>
        <asp:View ID="View2" runat="server">
          <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
            <tr align="center">
              <td width="10%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
              <td width="15%" class="title"> 卡号 </td>
              <td width="20%" class="title"> 发放用户 </td>
              <td width="10%" class="title"> 使用用户 </td>
              <td width="20%" class="title"> 卡片状态 </td>
              <td width="10%" class="title"> 操作 </td>
            </tr>
            <asp:Repeater ID="gvCard" runat="server">
              <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("Card_ID")%>' /></td>
                  <td height="22" align="center"><%# Eval("CardNum")%></td>
                  <td height="22" align="left"><%#GetUserName(DataBinder.Eval(Container.DataItem ,"PutUserID").ToString()) %></td>
                  <td height="22" align="center"><%#GetUserName(DataBinder.Eval(Container.DataItem ,"AssociateUserID").ToString()) %></td>
                  <td height="22" align="center"><%#GetState(DataBinder.Eval(Container.DataItem, "CardState").ToString())%>
                  <td height="22" align="center"><a href="CardView.aspx?id=<%#Eval("Card_ID") %>">查看</a></td>
                </tr>
              </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
              <td height="22" colspan="7" align="center" class="tdbgleft"> 共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                个商品
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />
                /
                <asp:Label ID="PageSize" runat="server" Text="" />
                页
                <asp:Label ID="pagess" runat="server" Text="" />
                个商品/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
                页 </td>
            </tr>
          </table>
        </asp:View>
      </asp:MultiView>
    </div>
  </div>
</form>
</body>
</html>
