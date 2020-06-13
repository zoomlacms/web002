<%@ page language="C#" autoeventwireup="true" inherits="PayReceive, App_Web_l2jfqzx0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付结果</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<div id="main" class="rg_inout">
    <div class="rg_inout">
      <div id="tip" runat="server" align="center" style="margin-top:10px; color:Red;"></div>
      <table width="500" border="0" align="center" cellpadding="0" cellspacing="0" id="mess" runat="server">
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>订单号:<%=v_oid%></b></div></td>
        </tr>
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>支付银行:<%=v_pmode%></b></div></td>
        </tr>
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>支付结果:<%=status_msg%></b></div></td>
        </tr>
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>支付金额:<%=v_amount%></b></div></td>
        </tr>
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>支付币种:<%=v_moneytype%></b></div></td>
        </tr>
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>备注1:<%=remark1%></b></div></td>
        </tr>
        <tr>
          <td valign="top" align="middle"><div align="left"> <b>备注2:<%=remark2%></b></div></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>