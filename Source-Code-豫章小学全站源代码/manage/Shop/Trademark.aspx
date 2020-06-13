<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="Zoomla.Website.manage.Shop.Trademark, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加品牌</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="r_navigation">
		
	  <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>商城设置</span> &gt;&gt; <span>
          <a href="Trademark.aspx">添加品牌</a></span>	</div>
    <div class="clearbox"></div>
    
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td colspan="2" class="spacingtitle">
            品牌参数设置</td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>品牌名称：</strong></td>
        <td width="66%" valign="middle">
            <asp:TextBox ID="Trname" runat="server" Width="251px" class="l_input"></asp:TextBox>
            <asp:HiddenField ID="id" runat="server" />
            <asp:HiddenField ID="uptype" runat="server" />
        </td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="height: 22px; width: 20%;"><strong>所属厂商：</strong></td>
        <td valign="middle" style="height: 22px">
            <asp:DropDownList ID="Producer" runat="server">
            </asp:DropDownList></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 20%; height: 22px;"><strong>是否推荐：</strong> </td>
        <td valign="middle" style="height: 22px">
            <asp:CheckBox ID="Isbest" runat="server" Text="推荐" /></td>
      </tr>
        <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>品牌分类：</strong></td>
        <td height="22" valign="middle">
            <asp:RadioButtonList ID="TrClass" runat="server" RepeatDirection="Horizontal"
                Width="420px">
                <asp:ListItem Selected="True" Value="大陆品牌">大陆品牌</asp:ListItem>
                <asp:ListItem Value="港台品牌">港台品牌</asp:ListItem>
                <asp:ListItem　Value="日韩品牌">日韩品牌</asp:ListItem>
                <asp:ListItem　Value="欧美品牌">欧美品牌</asp:ListItem>
                <asp:ListItem　Value="其他品牌">其他品牌</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>品牌照片：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="TrPhoto" runat="server" class="l_input" Width="321px"></asp:TextBox><iframe id="proimgs" style="top:2px" src="fileupload.aspx?menu=TrPhoto" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>品牌简介：</strong></td>
        <td height="22" valign="middle">
            <%--<asp:HiddenField ID="TrContent" runat="server" /><iframe id="infoeditor" src="../../editor/fckeditor_1.html?InstanceName=TrContent&Toolbar=Default" width="580px" height="350px" frameborder="no" scrolling="no"></iframe>--%>
        
        <textarea cols="80" id="TrContent" width="580px" height="350px" name="TrContent" rows="10" runat="server"></textarea>
<script id="headscript" type="text/javascript">
    //<![CDATA[
    CKEDITOR.replace('TrContent',
{
    skin: 'v2',
    enterMode: 2,
    shiftEnterMode: 2,
    toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
    //]]>
</script>
        </td>
      </tr>
      <tr class="tdbg">
        <td colspan="2" align="center" class="tdbg" style="height: 49px">
            <asp:Button ID="Button1" runat="server" Text="保存设置" class="C_input" style="width:110px;"  OnClick="Button1_Click" /></td>
      </tr>
    </table>
</form>
</body>
</html>
<script>
  function GV(id, value) {
$("#" + id).val(value);
}
</script>