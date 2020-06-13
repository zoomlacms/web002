<%@ page language="C#" autoeventwireup="true" inherits="PayOnline_ShowReturn, App_Web_l2jfqzx0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>支付信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../App_Themes/UserThem/Default.css" type="text/css" rel="stylesheet" />
<link href="../User/css/commentary.css" rel="stylesheet" type="text/css" />
<link href="../User/css/default1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table class="border" cellspacing="1" align="center">
      <tr class="title">
        <td> 在线支付信息</td>
      </tr>
      <tr class="tdbg">
        <td style=" text-align:center;"><br />
          <table width="500px" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
            <tr class="tdbg">
              <td style="width: 30%; text-align: right;"> 支付平台：</td>
              <td style="text-align: left;"><asp:Label ID="LblPlat" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="tdbg">
              <td style="width: 30%; text-align: right;"> 支付序号：</td>
              <td style="text-align: left;"><asp:Label ID="LblPayNum" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="tdbg">
              <td style="text-align: right;"> 你支付的金额：</td>
              <td style="text-align: left;"><asp:Label ID="LblMoney" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="tdbg">
              <td style="text-align: right;"> 状态信息：</td>
              <td style="text-align: left;"><asp:Label ID="LblStatus" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr class="tdbg">
              <td colspan="2"><asp:Literal ID="LitLink" runat="server"></asp:Literal></td>
            </tr>
          </table>
          <br /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
