<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Common.UploadMultiPicEditor, App_Web_s2bhlxup" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>多图片上传</title>
<script type="text/javascript" src="Common.js"></script>
<script type="text/javascript">    
function setImg(url)
{
  var wid=document.form1.TxtWidth.value;
  var hei=document.form1.TxtHeight.value;
  var oEditor = window.parent.InnerDialogLoaded() ;
  var oImg = oEditor.FCK.CreateElement( 'IMG' ); 
  oImg.src = url;
  oImg.setAttribute( '_fcksavedurl', url) ;
  if(wid!="")
    oImg.setAttribute( 'width', wid) ;
  if(hei!="")
    oImg.setAttribute( 'height', hei) ;	  
}
</script>
<style type="text/css">
body { background: #f1f1e3; padding: 0px; margin: 0px; font-family: "宋体"; font-size: 12px; }
.btn { border: solid 1px #7b9ebd; padding: 1px 2px 1px 2px; font-size: 12px; height: 22px;  filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#cecfde);
color: black; }
</style>
</head>
<body>
<form id="form1" runat="server">
  <table width="100%" align="center" cellpadding="2" cellspacing="0">
    <tr>
      <td><table width="100%" align="center" cellpadding="2" cellspacing="0">
          <tr>
            <td align="right" height="25" width="16%"> 图片一: </td>
            <td><asp:FileUpload ID="FupFile1" runat="server" size="35" CssClass="btn" /></td>
          </tr>
          <tr>
            <td align="right" height="25"> 图片二: </td>
            <td><asp:FileUpload ID="FupFile2" runat="server" size="35" CssClass="btn" /></td>
          </tr>
          <tr>
            <td align="right" height="25"> 图片三: </td>
            <td><asp:FileUpload ID="FupFile3" runat="server" size="35" CssClass="btn" /></td>
          </tr>
          <tr>
            <td align="right" height="25"> 图片四: </td>
            <td><asp:FileUpload ID="FupFile4" runat="server" size="35" CssClass="btn" /></td>
          </tr>
          <tr>
            <td align="right" height="25"> 图片五: </td>
            <td><asp:FileUpload ID="FupFile5" runat="server" size="35" CssClass="btn" /></td>
          </tr>
          <tr>
            <td align="right" height="25"> 图片六: </td>
            <td><asp:FileUpload ID="FupFile6" runat="server" size="35" CssClass="btn" /></td>
          </tr>
          <tr>
            <td></td>
            <td> 图片宽度：
              <asp:TextBox ID="TxtWidth" runat="server" Columns="5" CssClass="btn">100</asp:TextBox>
              &nbsp;
              图片高度：
              <asp:TextBox ID="TxtHeight" runat="server" Columns="5" CssClass="btn">100</asp:TextBox></td>
          </tr>
          <tr>
            <td></td>
            <td><asp:Button ID="Button1" runat="server" Text=" 上 传 " CssClass="btn" OnClick="Button1_Click" />
              &nbsp; &nbsp;
              <input id="Reset1" type="reset" value=" 重 来 " class="btn" />
              <br />
              <span id="span1" runat="server" style="color:Red;">图片大小不能超过100K</span></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>