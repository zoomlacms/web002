<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.ExchangePoint, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>兑换点券</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo">
    <div class="us_showinfo">您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent">
      <asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label>
      </a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_blank"> 会员中心</a></span> &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>兑换
      <asp:Literal ID="LitPointName" runat="server"></asp:Literal>
      </span> </span> </div>
  </div>
  <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
    <h1 style="text-align:center">兑换
      <asp:Literal ID="LitPointName2" runat="server"></asp:Literal>
    </h1>
    <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
      <tr class="tdbg">
        <td style="width:20%; line-height:30px; text-align:right">用户名：</td>
        <td style="width:80%;line-height:30px">&nbsp;
          <asp:Label ID="LblUser" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr class="tdbg">
        <td style="width:20%; line-height:30px; text-align:right"><asp:Literal ID="LitPointName3" runat="server"></asp:Literal>
          信息：</td>
        <td style="width:80%;line-height:30px">&nbsp;
          <asp:Label ID="LblUserPoint" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr class="tdbg">
        <td style="width:20%; line-height:30px; text-align:right">资金余额：</td>
        <td style="width:80%;line-height:30px">&nbsp;
          <asp:Label ID="LblBalance" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr class="tdbg">
        <td style="width:20%; line-height:30px; text-align:right">积分余额：</td>
        <td style="width:80%;line-height:30px">&nbsp;
          <asp:Label ID="LblUserExp" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr class="tdbg">
        <td style="width:20%; line-height:30px; text-align:right">兑换：</td>
        <td style="width:80%;line-height:30px">&nbsp;
          <asp:RadioButton ID="RblBalance" runat="server" GroupName="ExchgType" Checked="true" Text="使用资金余额：" />
          将
          <asp:TextBox ID="TxtBalance" runat="server" Width="20"></asp:TextBox>
          元兑换成
          <asp:Literal ID="LitPointName4" runat="server"></asp:Literal>
          &nbsp;&nbsp;
          兑换比率：
          <asp:Label ID="LblMoneyRate" runat="server" Text=""></asp:Label>
          <br />
          &nbsp;
          <asp:RadioButton ID="RblExp" runat="server" GroupName="ExchgType" Text="使用积分余额：" />
          将
          <asp:TextBox ID="TxtExp" runat="server" Width="20"></asp:TextBox>
          分兑换成
          <asp:Literal ID="LitPointName5" runat="server"></asp:Literal>
          &nbsp;&nbsp;
          兑换比率：
          <asp:Label ID="LblExpRate" runat="server" Text=""></asp:Label></td>
      </tr>
      <tr class="tdbgbottom">
        <td colspan="2" align="center"><asp:Button ID="EBtnSubmit" Text="兑换" OnClick="EBtnSubmit_Click" runat="server" />
          &nbsp;&nbsp;
          <input id="Button1" type="button" value="返回" onClick="javascript:location.href='UserInfo.aspx'" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
