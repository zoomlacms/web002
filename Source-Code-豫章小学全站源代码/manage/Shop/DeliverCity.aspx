<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_DeliverCity, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>确定默认地区</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理&gt;&gt; 商城设置 &gt;&gt; <a href="DeliverType.aspx">送货方式管理</a> &gt;&gt;<a href="AddDeliverType.aspx" target="_self">默认地区</a></div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">
    <tr class="tdbg">
      <td height="24" colspan="2" align="center" class="title">确定默认地区</td>
    </tr>
    <tr class="tdbg">
      <td width="24%" height="24" class="tdbg" align="center"><strong>默认城市</strong></td>
      <td width="76%" height="24" class="tdbg">
          <asp:DropDownList ID="tx_city" runat="server">
          </asp:DropDownList>
      </td>
    </tr>                 
    <tr>
      <td height="24" colspan="2" align="center"><asp:Button ID="Button1" class="C_input"  Text="保存" runat="server" onclick="Button1_Click" /></td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>