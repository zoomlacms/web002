<%@ page language="C#" autoeventwireup="true" inherits="FreeHome.Manage.ProductAdd, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div>
<div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>会员空间管理</span>  &gt;&gt;    <span>虚拟商品管理</span>  &gt;&gt; <a href="ProductManage.aspx">[虚拟商品列表]</a>  |  <a href="ProductAdd.aspx">[空间虚拟商品设置]</a> 
	</div>
    <div class="clearbox"></div> 
<table width="100%" height="227" border="0" cellpadding="2" cellspacing="1" class="border">
  <tr class="tdbg">
    <td colspan="2" align="center"  class="spacingtitle" >空间虚拟商品添加</td>
  </tr>
  <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td width="24%" align="center" class="tdbgleft">商品名称：</td>
    <td width="76%">&nbsp;<asp:TextBox ID="Nametxt" class="l_input" runat="server" ></asp:TextBox><span style="color: #ff0000"> *</span>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Nametxt"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
  </tr>
    <%--<tr>
    <td width="24%" align="center" class="tdbg">
        商品类型：</td>
    <td width="76%">&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="">请选择</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1"
            ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
  </tr>--%>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="center" class="tdbgleft">普通价格：</td>
    <td>&nbsp;<asp:TextBox ID="pricetxt" class="l_input" runat="server"></asp:TextBox><span style="color: #ff0000"> * 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="pricetxt"
                ErrorMessage="必须是数字" ValidationExpression="^\d{1,7}(\.\d{1,4})?$"></asp:RegularExpressionValidator></span></td>
  </tr>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="center" class="tdbgleft">VIP价格：</td>
    <td>&nbsp;<asp:TextBox ID="viptxt" class="l_input" runat="server" ></asp:TextBox><span style="color: #ff0000"> * 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="viptxt"
                ErrorMessage="必须是数字" ValidationExpression="^\d{1,7}(\.\d{1,4})?$"></asp:RegularExpressionValidator></span></td>
  </tr>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="center" class="tdbgleft">商品图片：</td>
    <td>&nbsp;<asp:TextBox ID="Thumbnails" class="l_input" runat="server"/>
        <span style="color: #ff0000">* 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Thumbnails"
            ErrorMessage="商品图片不能为空"></asp:RequiredFieldValidator></span>
        <iframe id="smallimgs" style="top:2px" src="../shop/fileupload.aspx?menu=Thumbnails" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe></td>
  </tr>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="center" class="tdbgleft">商品简介：</td>
    <td><textarea name="textarea"  id="contenttextarea" cols="45" 
            runat="server"></textarea></td>
  </tr>
  <tr class="tdbg">
    <td align="center">&nbsp;</td>
    <td>&nbsp;<asp:Button ID="addbtn" runat="server" class="C_input"  Text="保  存" Width="84px" OnClick="addbtn_Click" /></td>
  </tr>
</table>
    </div>
</form>
</body>
</html>
