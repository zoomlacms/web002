<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_CreateView, App_Web_c4rklp3o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>创建视图</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/JS/jquery.js"></script>
<script type="text/javascript">
    window.onload = getname;
    function getname() {
        $("#musicname").val("场景" + ($("#PanoramicViewList_View", window.top.main_right.document).children().length + 1));
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
      <tr>
        <td colspan="2" class="spacingtitle" align="center"> 添加场景 </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 场景名称: </td>
        <td><asp:TextBox ID="musicname" runat="server" CssClass="l_input" Width="254px"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="musicname" ErrorMessage="请输入场景名称"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 场景图片: </td>
        <td><asp:TextBox ID="ScanPic" runat="server" CssClass="l_input" Width="254px"></asp:TextBox>
          <iframe id="Upload_pic" src="../Common/PubimgUpload.aspx?menu=ScanPic" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 地图图片: </td>
        <td><asp:TextBox ID="MapPic" runat="server" CssClass="l_input" Width="254px"></asp:TextBox>
          (200*100 像素)
          <iframe id="Iframe1" src="../Common/PubimgUpload.aspx?menu=MapPic" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 顶部显示LOGO: </td>
        <td><asp:TextBox ID="TopLogo" runat="server" Text="Panoramic3D/assets/opt/logo.png" CssClass="l_input" Width="254px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 顶部LOGO链接地址: </td>
        <td><asp:TextBox ID="LoGoLink" runat="server" CssClass="l_input" Width="254px"></asp:TextBox>
          <br />
          (请在前面加 http://，如http://www.zoomla.cn即可) </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"><span style="color: red">底部</span>显示LOGO: </td>
        <td><asp:TextBox ID="BottomLogo" runat="server" Text="Panoramic3D/assets/opt/Bottonlogo.png" CssClass="l_input" Width="254px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"><span style="color: red">底部</span>LOGO链接地址: </td>
        <td><asp:TextBox ID="BottomLogoLink" runat="server" CssClass="l_input" Width="254px"></asp:TextBox>
          <br />
          (请在前面加 http://，如http://www.zoomla.cn即可) </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 自定义进入按钮:<br />
          <b>(进入下一场景按钮)</b></td>
        <td><asp:TextBox ID="InputButtonPic" runat="server" Text="Panoramic3D/assets/opt/goto.png" CssClass="l_input" Width="254px"></asp:TextBox>
          <iframe id="Iframe2" src="../Common/PubimgUpload.aspx?menu=InputButtonPic" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 自定义返回按钮:<br />
          <b>(返回上一场景按钮)</b></td>
        <td><asp:TextBox ID="ReturnButtonPic" runat="server" Text="Panoramic3D/assets/opt/goreturn.png" CssClass="l_input" Width="254px"></asp:TextBox>
          <iframe id="Iframe3" src="../Common/PubimgUpload.aspx?menu=ReturnButtonPic" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 300px"> 自定义其他按钮:<br />
          <b>(超级链接按钮)</b></td>
        <td><asp:TextBox ID="OtherButtonPic" runat="server" Text="Panoramic3D/assets/opt/gourl.png" CssClass="l_input" Width="254px"></asp:TextBox>
          <iframe id="Iframe4" src="../Common/PubimgUpload.aspx?menu=OtherButtonPic" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 是否自动滚动: </td>
        <td><asp:CheckBox ID="AutoMarquee" runat="server" Text="自动滚动" Checked="true" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 是否显示地图: </td>
        <td><asp:CheckBox ID="ShowMap" runat="server" Text="显示地图" Checked="true" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbg" align="center" colspan="2"><asp:Button ID="Button1" runat="server" Text="下一步" CssClass="C_input" PostBackUrl="/Panoramic3D/SetPanoramic.aspx" />
          &nbsp;
          <asp:Button ID="Button2" runat="server" Text="取消" CssClass="C_input" CausesValidation="false" OnClientClick="parent.Dialog.close();return false" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>