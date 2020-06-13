<%@ page language="C#" autoeventwireup="true" inherits="manage_Boss_CardView, App_Web_akeaiuth" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
 <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div style=" text-align:center">
    <table width="700"  class="abian"  cellpadding="0" cellspacing="0" > 
     <tr>
    <td width="160"  class="title" >&nbsp;</td>
    <td class="title" >
       &nbsp;
      </td>
    <td width="226" class="title">&nbsp;</td>
  </tr>
  <tr class="tdbg">
    <td width="160"  class=" dbian" >卡号：</td>
    <td class="style3" >
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      </td>
    <td width="226" class="lbian"><span style="COLOR: red">VIP卡号</span> </td>
  </tr>
  <tr class="tdbg">
    <td class=" dbian">所属客户：</td>
    <td class="style3">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">该VIP卡的持卡人</span> </td>
  </tr>
  <tr class="tdbg">
    <td class=" dbian">初始化密码：</td>
    <td class="style3">
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">创建该VIP卡时系统自动给该卡分配的密码</span> </td>
  </tr>
  <tr class="tdbg">
    <td class=" dbian">归属人：</td>
    <td class="style3">
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"> <span style="COLOR: red">该VIP卡属于哪个代理商人</span> </td>
  </tr>
  <tr class="tdbg">
    <td class=" dbian">状态：</td>
    <td class="style3">
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">该VIP处于什么状态</span> </td>
  </tr>
    <tr class="tdbg">
    <td class=" dbian">截止有效期限：</td>
    <td class="style3">
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
      </td>
    <td class="lbian"><span style="COLOR: red">该VIP卡过期时间</span> </td>
  </tr>
</table>
        </div>  
    </form>
</body>
</html>
