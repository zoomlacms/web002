<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_AtionSite, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>频道配置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
.style1 { width: 200px; }
</style>
</head>
<body>
<form id="myForm" runat="server">
      <div  class="column">
        <div class="columntitle" >当前位置：功能导航 >>频道配置</div>
        <table width="100%" align="center" cellpadding="5" cellspacing="5">
          <tr>
            <td  align="center"   style="background-color:#F0F6FC; width:200px" ><strong>频道名称：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox1" runat="server" style="height: 20px" Width="210px">我的地盘</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>频道标题：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox2" runat="server" Width="210px"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>频道地址：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox3" runat="server" Width="210px">http://127.0.0.1</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>LOGO地址：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox4" runat="server" Width="210px">Skin/Default/images/logo.jpg</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>Banner地址：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox5" runat="server" Width="210px">Skin/Default/images/banner.jpg</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>频道管理姓名：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox6" runat="server" Width="210px">频道管理</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>频道管理邮箱：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox7" runat="server" Width="210px">web@zoomla.cn</asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>频道META关键词：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox8" runat="server" Width="250px" Height="60px" TextMode="MultiLine"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>频道META网页描述：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox9" runat="server" Width="250px"  Height="60px" TextMode="MultiLine"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="center" style="width: 200px; background-color:#F0F6FC; height:25px"><strong>版权信息：</strong></td>
            <td align="left"><asp:TextBox ID="TextBox10" runat="server" Width="250px" Height="60px"  TextMode="MultiLine"></asp:TextBox></td>
          </tr>
          <tr>
            <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存"  runat="server" onclick="Submit_Click" /></td>
          </tr>
        </table>
      </div>
    </form>
</body>
</html>