<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="Zoomla.Website.manage.Shop.Producer, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>


<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>添加厂商</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/calendar.js"></script>
    <script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
    <script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
    <link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="r_navigation">
		
	  <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>商城设置</span> &gt;&gt; <span><a href="Producer.aspx">添加厂商</a></span>	</div>
    <div class="clearbox"></div>
    
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="Label1" runat="server" Text="添加厂商"></asp:Label></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商名称：</strong></td>
        <td width="66%" valign="middle">
            <asp:TextBox ID="Producername" runat="server" class="l_input" Width="251px"></asp:TextBox>
            <asp:HiddenField ID="ID" runat="server" />
            <asp:HiddenField ID="uptype" runat="server" />
        </td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="height: 22px; width: 20%;"><strong>厂商缩写：</strong></td>
        <td valign="middle" style="height: 22px">
            <asp:TextBox ID="Smallname" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>创建日期：</strong> </td>
        <td height="22" valign="middle">
            <asp:TextBox ID="CreateTime" runat="server" class="l_input" Width="217px" onclick="calendar();"></asp:TextBox>
            <asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" /></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>公司地址：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Coadd" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>联系电话：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Telpho" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>传真号码：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="FaxCode" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 20%; height: 22px"><strong>邮政编码：</strong></td>
        <td valign="middle" style="height: 22px">
            <asp:TextBox ID="PostCode" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商主页：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="CoWebsite" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"> 
        <td height="22" class="tdbgleft" style="width: 20%"><strong>电子邮件：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="Email" runat="server" class="l_input" Width="251px"></asp:TextBox></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商分类：</strong></td>
        <td height="22" valign="middle">
            <asp:RadioButtonList ID="CoClass" runat="server" RepeatDirection="Horizontal"
                Width="420px">
                <asp:ListItem Selected="True">大陆厂商</asp:ListItem>
                <asp:ListItem>港台厂商</asp:ListItem>
                <asp:ListItem>日韩厂商</asp:ListItem>
                <asp:ListItem>欧美厂商</asp:ListItem>
                <asp:ListItem>其他厂商</asp:ListItem>
            </asp:RadioButtonList></td>
      </tr>
      <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商照片：</strong></td>
        <td height="22" valign="middle">
            <asp:TextBox ID="CoPhoto" class="l_input" runat="server" Width="321px"></asp:TextBox><iframe id="proimgs" style="top:2px" src="fileupload.aspx?menu=CoPhoto" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
      </tr>
      <tr class="WebPart">
        <td height="22" class="tdbgleft" style="width: 20%"><strong>厂商简介：</strong></td>
        <td height="22" valign="middle">
            <%--<asp:HiddenField ID="Content" runat="server" /><iframe id="infoeditor" src="../../editor/fckeditor_1.html?InstanceName=Content&Toolbar=Default" width="580px" height="350px" frameborder="no" scrolling="no"></iframe>--%>
        <textarea cols="80" id="Content" width="580px" height="350px" name="Content" rows="10" runat="server"></textarea>
<script id="headscript" type="text/javascript">
    //<![CDATA[
    CKEDITOR.replace('Content',
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
            <asp:Button ID="Button1" runat="server" class="C_input"  Text="保存设置" style="width:110px;"  OnClick="Button1_Click" /></td>
      </tr>
    </table>
</form>
</body>
</html>
