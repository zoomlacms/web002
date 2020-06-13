<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.TotalSale, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>总体销售统计</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/calendar.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="r_navigation">
		
	  <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>销售统计</span> &gt;&gt; 总体销售统计
    </div>
    <div class="clearbox"></div>

    
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="center" style="height: 23px">从
        <asp:TextBox ID="toptime" runat="server" class="l_input" Width="109px" onclick="calendar();" />
            <asp:Image ID="Image2" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/Images/Calendar.gif" />&nbsp;
        至
        <asp:TextBox ID="endtime" runat="server" class="l_input" Width="109px" onclick="calendar();" />&nbsp;<asp:Image
                ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/Images/Calendar.gif" />
        <asp:Button ID="Button1" Text="查询" runat="server" class="C_input" /></td>
      </tr>
    </table>
    <div align="center"><br />
      <br />
      客户平均订单金额<br />
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="33%" class="title">总订单金额</td>
        <td width="33%" class="title">总订单数</td>
        <td width="33%" class="title">客户平均订单金额</td>
      </tr>
      <tr class="">
        <td height="22" class="tdbg" align=center>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        <td height="22" class="tdbg" align=center><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        <td height="22" class="tdbg" align=center><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
      </tr>
    </table>
    <div align="center"><br />
        <br />
      每次访问平均订单金额<br />
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="33%" class="title">总订单金额</td>
        <td width="33%" class="title">总订单数</td>
        <td width="33%" class="title">客户平均订单金额</td>
      </tr>
      <tr class="">
        <td height="22" class="tdbg" align="center">
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
        <td height="22" class="tdbg" align="center">
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
        <td height="22" class="tdbg" align="center">
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
      </tr>
    </table>
    <div align="center"><br />
        <br />
      匿名订单购买率
<br />
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="33%" class="title">总订单金额</td>
        <td width="33%" class="title">总订单数</td>
        <td width="33%" class="title">客户平均订单金额</td>
      </tr>
      <tr class="">
        <td height="22" class="tdbg" align="center"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
        <td height="22" class="tdbg" align="center"><asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
        <td height="22" class="tdbg" align="center"><asp:Label ID="Label9" runat="server" Text=""></asp:Label></td>
      </tr>
    </table>
    <div align="center"><br />
        <br />
      注册会员购买率<br />
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="33%" class="title">总订单金额</td>
        <td width="33%" class="title">总订单数</td>
        <td width="33%" class="title">客户平均订单金额</td>
      </tr>
      <tr class="">
        <td class="tdbg" align="center" style="height: 22px"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
        <td class="tdbg" align="center" style="height: 22px"><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
        <td class="tdbg" align="center" style="height: 22px"><asp:Label ID="Label12" runat="server" Text=""></asp:Label></td>
      </tr>
    </table>

</form>
</body>
</html>
