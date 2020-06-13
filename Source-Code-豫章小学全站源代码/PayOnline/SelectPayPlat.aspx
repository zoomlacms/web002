<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.SelectPayPlat, App_Web_l2jfqzx0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>选择支付平台</title>
<link type="text/css" rel="stylesheet" href="../App_Themes/UserThem/Default.css" />
<link type="text/css" rel="stylesheet" href="../User/css/commentary.css" />
<link type="text/css" rel="stylesheet" href="../User/css/default1.css" />
</head>
<body>
<form id="form1" runat="server">
  <table class="border" cellspacing="1" align="center">
    <tr class="tdbg">
      <td style="text-align: center;"><br />
        <table width="500px" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
          <tr class="title">
            <td colspan="2"><b>在线支付操作(选择支付平台)</b></td>
          </tr>
          <tr class="tdbg">
            <td style="width: 30%; text-align: right;"> 支付平台： </td>
            <td style="text-align: left;"><asp:DropDownList ID="DDLPayPlat" runat="server"></asp:DropDownList></td>
          </tr>
          <tr class="tdbg">
            <td style="text-align: right;"> 请输入你支付的金额： </td>
            <td style="text-align: left;"><asp:TextBox ID="TxtvMoney" Text="0" runat="server"></asp:TextBox></td>
          </tr>
          <tr class="tdbg">
            <td colspan="2"><asp:Button ID="BtnSubmit" runat="server" Text=" 下一步 " OnClick="BtnSubmit_Click" /></td>
          </tr>
        </table>
        <br /></td>
    </tr>
  </table>
</form>
</body>
</html>