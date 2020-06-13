<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Config.ThumbConfig, App_Web_1uo1gqqt" title="Untitled Page" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>SiteInfo</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
.style1 { background: #e0f7e5; line-height: 120%; width: 300px; }
.style2 { width: 500px; }
.style3 { background: #e0f7e5; line-height: 120%; width: 300px; height: 18px; }
.style4 { width: 500px; height: 18px; }
</style>
    </head>
    <body>
    <form id="form1" runat="server">
      <div class="column">
        <div class="columntitle">当前位置：功能导航 >>缩略图配置</div>
        <table width="99%" cellspacing="1" cellpadding="0" >
          <tr class="tdbg">
            <td  align="right" style="width: 300px"><strong>上传图片默认宽度：</strong></td>
            <td align="left" style="width: 500px"><asp:TextBox ID="iwidth" runat="server"></asp:TextBox>
              像素&nbsp;&nbsp;设为0时，将以高度为准按比例缩小。 </td>
          </tr>
          <tr class="tdbg">
            <td  align="right"  style="width: 300px"><strong>上传图片默认高度：</strong></td>
            <td  align="left" style="width: 500px"><asp:TextBox ID="iheight" runat="server"></asp:TextBox>
              像素&nbsp;&nbsp;设为0时，将以宽度为准按比例缩小。都为0时，则为原图大小。</td>
          </tr>
          <tr class="tdbg">
            <td  align="right"  style="width: 200px"><strong>是否开启水印：</strong></td>
            <td align="left" style="width: 300px"><asp:RadioButtonList ID="Isuse" runat="server" RepeatColumns="2">
                <asp:ListItem Selected="True" Value="True">开启</asp:ListItem>
                <asp:ListItem Value="False">关闭</asp:ListItem>
              </asp:RadioButtonList></td>
          </tr>
          <tr class="tdbg" style="display:none">
            <td class="style1" style="background-color:#F0F6FC"><strong>缩略图算法：</strong></td>
            <td align="left" class="style2"><asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="1" Selected="True">常规算法：宽度和高度都大于0时，直接缩小成指定大小，其中一个为0时，按比例缩小</asp:ListItem>
                <asp:ListItem Value="2">裁剪法：宽度和高度都大于0时，先按最佳比例缩小再裁剪成指定大小，其中一个为0时，按比例缩小。</asp:ListItem>
                <asp:ListItem Value="3">补充法：在指定大小的背景图上附加上按最佳比例缩小的图片。 </asp:ListItem>
              </asp:RadioButtonList></td>
          </tr>
          <tr class="tdbg">
            <td  align="right"  style="width: 200px"><strong>水印类型：</strong></td>
            <td align="left" style="width: 300px"><asp:RadioButtonList ID="waterType" runat="server" RepeatColumns="2" 
                    AutoPostBack="True" 
                    onselectedindexchanged="waterType_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="1">图片水印</asp:ListItem>
                <asp:ListItem Value="2">文字水印</asp:ListItem>
              </asp:RadioButtonList></td>
          </tr>
          <div runat="server" id="tu">
            <tr class="tdbg">
              <td  align="right"  style="width: 200px"><strong>水印图片文件名：
                这里请填写图片文件的相对路径。 </strong></td>
              <td align="left" style="width: 300px"><asp:TextBox ID="iLogo" runat="server" Width="400"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
              <td  align="right"  style="width: 200px"><strong>水印图片透明度：</strong></td>
              <td align="left" style="width: 500px"><asp:TextBox ID="iAlp" runat="server" Width="50"></asp:TextBox>
                %，0为完全透明，100为完全不透明</td>
            </tr>
          </div>
          <div id="zi" runat="server">
            <tr class="tdbg">
              <td  align="right"  style="width:300px"><strong>水印文字：</strong><br />
                水印文字字数不宜超过15个字符，不支持HTML标记。</td>
              <td align="left" style="width: 500px; height: 23px;"><asp:TextBox ID="waterWord" runat="server"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
              <td  align="right"  style="width:300px"><strong>文字字体：</strong><br /></td>
              <td align="left" style="width: 500px; height: 23px;"><asp:DropDownList ID="WordType" runat="server">
                  <asp:ListItem>宋体</asp:ListItem>
                  <asp:ListItem >楷体</asp:ListItem>
                  <asp:ListItem >新宋体</asp:ListItem>
                  <asp:ListItem>黑体</asp:ListItem>
                  <asp:ListItem >隶书</asp:ListItem>
                  <asp:ListItem>幼圆</asp:ListItem>
                  <asp:ListItem >Andale Mono</asp:ListItem>
                  <asp:ListItem >Arial</asp:ListItem>
                  <asp:ListItem>Arial Black</asp:ListItem>
                  <asp:ListItem >Book Antiqua</asp:ListItem>
                  <asp:ListItem>Century Gothic</asp:ListItem>
                  <asp:ListItem >Comic Sans MS</asp:ListItem>
                  <asp:ListItem >Courier New</asp:ListItem>
                  <asp:ListItem>Georgia</asp:ListItem>
                  <asp:ListItem >Impact</asp:ListItem>
                  <asp:ListItem>Tahoma</asp:ListItem>
                  <asp:ListItem >Times New Roman</asp:ListItem>
                  <asp:ListItem>Trebuchet MS</asp:ListItem>
                  <asp:ListItem >Script MT Bold</asp:ListItem>
                  <asp:ListItem>Stencil</asp:ListItem>
                  <asp:ListItem >Verdana</asp:ListItem>
                  <asp:ListItem >Lucida Console</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr class="tdbg">
              <td  align="right"  style="width:300px"><strong>字体样式：</strong><br /></td>
              <td align="left" style="width: 500px; height: 23px;"><asp:DropDownList ID="WordStyle" runat="server">
                  <asp:ListItem Value="1">正常</asp:ListItem>
                  <asp:ListItem Value="2">斜体</asp:ListItem>
                  <asp:ListItem Value="3">加粗</asp:ListItem>
                  <asp:ListItem Value="4">删除线</asp:ListItem>
                  <asp:ListItem Value="5">下划线</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
            <tr class="tdbg">
              <td class="style3" style="background-color:#F0F6FC"><strong>文字大小：</strong><br /></td>
              <td align="left" class="style4"><asp:TextBox ID="WordSize" runat="server"></asp:TextBox>
                请输入数字</td>
            </tr>
            <tr class="tdbg">
              <td  align="right"  style="width:300px"><strong>文字颜色：</strong><br /></td>
              <td align="left" style="width: 500px; height: 23px;"><script language="JavaScript" type="text/javascript"> 
function SelectColor(t, clientId) {
var url = "../../Common/SelectColor.aspx?d=f&t=6"; 
var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
if (document.all) {
var color = showModalDialog(url + old_color, '',"dialogWidth:18.5em; dialogHeight:16.0em; status:0");
if (color != null) {
document.getElementById(clientId).value = color;
} else {
document.getElementById(clientId).focus();
}
} else {
var color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
}
}
</script>
                <asp:TextBox ID="txt_dfg" name="txt_dfg" runat="server"></asp:TextBox>
                <img onclick="SelectColor(this,'txt_dfg');" src="/images/Rect.gif" align="absmiddle" style="border-width: 0px; cursor: pointer" /></td>
            </tr>
          </div>
          <tr class="tdbg">
            <td  align="right"  style="width: 200px"><strong>坐标起点位置：</strong></td>
            <td align="left" style="width: 500px; height: 23px;"><asp:DropDownList ID="localP" runat="server" AutoPostBack="True" onselectedindexchanged="localP_SelectedIndexChanged" >
                <asp:ListItem Value="1">左上</asp:ListItem>
                <asp:ListItem Value="2">右上</asp:ListItem>
                <asp:ListItem Value="3">右下</asp:ListItem>
                <asp:ListItem Value="4">左下</asp:ListItem>
                <asp:ListItem Value="5">手动设置</asp:ListItem>
              </asp:DropDownList></td>
          </tr>
          <tr class="tdbg" runat="server" id="oox" >
            <td  align="right"  style="width: 200px"><strong>坐标位置：
              坐标起点位置设置为手动设置时才有效。&nbsp; </strong></td>
            <td align="left" style="width: 500px; height: 23px;"> X：
              <asp:TextBox ID="PX" runat="server" Width="50"></asp:TextBox>
              像素 填写的数据必须是数字！设为手动才可启用改参数<br />
              Y：
              <asp:TextBox ID="PY" runat="server" Width="50"></asp:TextBox>
              像素 填 </td>
          </tr>
        </table>
        <br />
        <asp:Button ID="Button1" runat="server" Text="保存设置" CssClass="button" OnClick="Button1_Click" />
        <br />
      </div>
    </form>
</body>
</html>