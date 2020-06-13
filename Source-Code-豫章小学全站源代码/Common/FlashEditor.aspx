<%@ page language="C#" autoeventwireup="true" inherits="Common_FlashEditor, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上传Flash文件</title>
<script type="text/javascript" src="Common.js"></script>
<script type="text/javascript">
function setFlash()
{      
  if($('FilePath').value.trim().length==0)
  {
    alert("没有选择文件");
    $("FilePath").focus();
    return;  
  }  
  var url=document.form1.FilePath.value;
  var width=document.form1.TxtWidth.value;
  var height=document.form1.TxtHeight.value;
  var oEditor = window.parent.InnerDialogLoaded() ;
  var oEmbed = oEditor.FCK.EditorDocument.createElement( 'EMBED' );
  
  oEmbed.setAttribute( 'type', 'application/x-shockwave-flash' );
  oEmbed.setAttribute( 'quality','high' );
  oEmbed.setAttribute( 'pluginspage'	, 'http://www.macromedia.com/go/getflashplayer' );

  oEmbed.setAttribute( 'src', url );
  if(width!="")
    oEmbed.setAttribute( 'width', width) ;
  if(height!="")
    oEmbed.setAttribute( 'height', height) ;	
  
  var oFakeImage	= oEditor.FCKDocumentProcessor_CreateFakeImage( 'FCK__Flash', oEmbed ) ;
  oFakeImage.setAttribute( '_fckflash', 'true', 0 ) ;
  oFakeImage	= oEditor.FCK.InsertElementAndGetIt( oFakeImage ) ;
  window.parent.Cancel() ;
}
function isok()
{        
    if($("FupFile").value=="")
    {
        alert("请选择Flash文件!");
        $("FupFile").focus();
        return false;
    }
    return true;
}
</script>
<style type="text/css">
body { background: #f1f1e3; padding: 0px; margin: 0px; font-family: "宋体"; font-size: 12px; }
.btn { border: solid 1px #7b9ebd; padding: 1px 2px 1px 2px; font-size: 12px; height: 22px;  filter: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#cecfde);
color: black; }
</style>
</head>
<body style="margin:0px">
<form id="form1" runat="server">
  <table width="100%" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td><table width="440" cellpadding="4" cellspacing="0" border="0" align="center">
          <tr>
            <td colspan="2"> Flash：
              <asp:TextBox ID="FilePath" runat="server" Columns="35" Enabled="false"></asp:TextBox>
              <input id="Button2" type="button" runat="server" value="插 入" class="btn" /></td>
          </tr>
          <tr>
            <td colspan="2"> 宽度：
              <asp:TextBox ID="TxtWidth" runat="server" Columns="5">300</asp:TextBox>
              &nbsp;
              高度：
              <asp:TextBox ID="TxtHeight" runat="server" Columns="5">200</asp:TextBox></td>
          </tr>
          <tr>
            <td colspan="2"> 上传：
              <asp:FileUpload ID="FupFile" runat="server" size="35" CssClass="btn" />
              <asp:Button ID="Button1" runat="server" Text=" 上传 " Height="22px" OnClick="Button1_Click" OnClientClick="return isok()" CssClass="btn" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>