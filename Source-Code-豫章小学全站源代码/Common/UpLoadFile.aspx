<%@ page language="C#" autoeventwireup="true" inherits="Common_UpLoadFile, App_Web_551hx03o" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上传文件</title>
<link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<base target="_self" />
<script type="text/javascript" src="Common.js"></script>
<script type="text/javascript">
function setUrl()
{      
  if($('FilePath').value.trim().length==0)
  {
    alert("没有选择文件");
    $("FilePath").focus();
    return;  
  }
  if($('LinkName').value.trim().length==0)
  {
    alert("请输入附件链接名");
    $("LinkName").focus();
    return;  
  }  
  var url=document.form1.FilePath.value;
  var linkname=document.form1.LinkName.value;
  var oEditor = window.parent.InnerDialogLoaded() ;
  var oLink = oEditor.FCK.CreateElement( 'a' ); 
  oLink.href = url;
  oLink.innerHTML=linkname;      
  oLink.setAttribute( '_fcksavedurl', url) ;
  oLink.setAttribute( 'target', '_blank') ;
  oLink.setAttribute( 'title', linkname) ;
  window.parent.Cancel() ;
}
function insertUrl()
{
    if($('TxtUrl').value.trim().length==0)
      {
        alert("没有输入链接地址");
        $("TxtUrl").focus();
        return;  
      }
    var url=document.form1.TxtUrl.value;
    var protocal=document.form1.cmbLinkProtocol.value;
  var linkname=document.form1.LinkName.value;
  var oEditor = window.parent.InnerDialogLoaded() ;
  var oLink = oEditor.FCK.CreateElement( 'a' ); 
  oLink.href = url;
  if(linkname=="")
    oLink.innerHTML=url;
  else
    oLink.innerHTML=linkname;     
  oLink.setAttribute( '_fcksavedurl', protocal+url) ;
  oLink.setAttribute( 'target', '_blank') ;
  oLink.setAttribute( 'title', linkname) ;
  window.parent.Cancel() ;
}
function insertEmail()
{
    if($('TxtEmail').value.trim().length==0)
      {
        alert("没有输入E-Mail地址");
        $("TxtEmail").focus();
        return;  
      }
    var url=document.form1.TxtEmail.value;        
  var linkname=document.form1.LinkName.value;
  var oEditor = window.parent.InnerDialogLoaded() ;
  var oLink = oEditor.FCK.CreateElement( 'a' ); 
  oLink.href = url;
  if(linkname=="")
    oLink.innerHTML=url;
  else
    oLink.innerHTML=linkname;      
  oLink.setAttribute( '_fcksavedurl', "mailto:"+url) ;
  oLink.setAttribute( 'target', '_blank') ;
  oLink.setAttribute( 'title', linkname) ;
  window.parent.Cancel() ;
}
function SetLinkType(value)
{
    var ldiv=document.getElementById("divLinkTypeUrl");
    var fdiv=document.getElementById("divUpload");
    var ediv=document.getElementById("divLinkTypeEMail");
    switch(value)
    {
        case "url":
            ldiv.style.display="";
            fdiv.style.display="none";
            ediv.style.display="none";
            break;
        case "file":
            ldiv.style.display="none";
            fdiv.style.display="";
            ediv.style.display="none";
            break;
        case "email":
            ldiv.style.display="none";
            fdiv.style.display="none";
            ediv.style.display="";
            break;
    }
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
  <div id="divInfo"> <span >链接类型</span>
    <select id="cmbLinkType" onchange="SetLinkType(this.value);">
      <option value="url" selected="selected">链接</option>
      <option value="file">附件</option>
      <option value="email">E-Mail</option>
    </select>
    <br />
    链接名称：
    <asp:TextBox ID="LinkName" runat="server" Columns="35" CssClass="btn"></asp:TextBox>
    <br />
    <br />
    <div id="divLinkTypeUrl">
      <table cellspacing="0" cellpadding="0" width="100%" border="0" dir="ltr">
        <tr>
          <td><span>协议</span><br />
            <select id="cmbLinkProtocol">
              <option value="http://" selected="selected">http://</option>
              <option value="https://">https://</option>
              <option value="ftp://">ftp://</option>
              <option value="news://">news://</option>
              <option value="" fckLang="DlgLnkProtoOther">自定义</option>
            </select></td>
          <td>&nbsp;</td>
          <td width="100%"><span>链接地址</span><br />
            <asp:TextBox ID="TxtUrl" runat="server" Columns="35" CssClass="btn"></asp:TextBox>
            <input id="Button3" type="button" value="插 入" class="btn" onclick="insertUrl();" /></td>
        </tr>
      </table>
    </div>
    <div id="divLinkTypeEMail" style="DISPLAY: none"> <span>E-Mail地址</span>
      <asp:TextBox ID="TxtEmail" runat="server" Columns="35" CssClass="btn"></asp:TextBox>
      <input id="Button4" type="button" value="插 入" class="btn" onclick="insertEmail();" />
    </div>
    <div id="divUpload" style="DISPLAY: none">
      <table width="100%" cellpadding="4" cellspacing="0" border="0" align="center">
        <tr>
          <td colspan="2"> 文件路径：
            <asp:TextBox ID="FilePath" runat="server" Columns="35" CssClass="btn" Enabled="false"></asp:TextBox>
            <input id="Button2" type="button" value="插 入" runat="server" class="btn" /></td>
        </tr>
        <tr>
          <td colspan="2"> 选择文件：
            <asp:FileUpload ID="FupFile" runat="server" size="35" CssClass="btn" />
            <asp:Button ID="Button1" runat="server" Text=" 上传 " Height="22px" OnClick="Button1_Click" CssClass="btn" /></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>