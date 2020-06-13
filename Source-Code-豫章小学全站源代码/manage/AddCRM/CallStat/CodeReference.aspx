<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_CodeReference, App_Web_5bajtehy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>统计代码</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;扩展功能&gt;&gt;访问统计&gt;&gt;统计代码调用</div>
    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="border">
      <tr class="spacingtitle">
        <td colspan="2" align="center">统计代码调用</td>
      </tr>
      <tr>
        <td align="left" style="width: 30%; white-space: normal;"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="1">显示简单样式信息</asp:ListItem>
            <asp:ListItem Value="3">显示复杂样式信息</asp:ListItem>
            <asp:ListItem Value="4">统计但不显示信息</asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr class="tdbg">
        <td style="white-space: normal; width: 30%; height: 69px;" class="tdbgleft"><strong>获取所有访问来源统计代码：</strong><br />
          本方法可统计所有网址(IP或URL)的访问来源数据，请将此代码拷贝到您需要做统计的页面，此代码不仅用于向放置了此代码的页面输出统计数据，而且还对该页面计数，用户可根据需要自行调用(如网站存储于虚拟目录或特殊路径，请在"/"前定义相对路径。</td>
      </tr>
      <tr> </tr>
        <td align="center" style="height: 109px"><asp:TextBox ID="TextBox1" class="l_input" runat="server" Height="50px" Width="595px" TextMode="MultiLine"  Text="<script src='/CounterLink.aspx?style=simple'></script>"></asp:TextBox></td>
      <tr class="tdbg">
        <td style="white-space: normal; width: 30%; height: 69px;" class="tdbgleft"><strong>仅获取系统主域名(IP)访问来源统计代码：</strong><br />
          本方法仅统计[系统配置]-[网站信息配置]－[网站地址]中绑定的系统主域名访问来源数据，请将此代码拷贝到您需要做统计的页面，此代码不仅用于向放置了此代码的页面输出统计数据，而且还对该页面计数，用户可根据需要自行调用。 </td>
      </tr>
      <tr> </tr>
        <td align="center" style="height: 109px"><asp:TextBox ID="TextBox2" class="l_input" runat="server" Height="50px" Width="595px" TextMode="MultiLine" Text="<script src='{$SiteURL/}/CounterLink.aspx?style=simple'></script>"></asp:TextBox></td>
        <%--<tr class="tdbg">
<td class="tdbgleft" style="height: 60px"><strong>前台显示在线链接代码：</strong><br />
请将此代码拷贝到您需要显示在线列表链接的模板中，此代码仅用于向放置了此代码的页面显示在线列表链接，而不对该页面计数。</td>
<td style="height: 60px">
    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="350px" TextMode="MultiLine"></asp:TextBox></td>
</tr>--%>
    </table>
</form>
</body>
</html>